using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Purchase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void GetAddress(object sender, EventArgs e)
    {
        txtstate.Text = "";
        txtcity.Text = "";
        string city, state;
        CallWebService(ZipCode.Text.Trim().Substring(0, 5), out city, out state);
        if (!state.Equals("") && !city.Equals(""))
        {
            txtstate.Text = state;
            txtcity.Text = city;
            txtstate.Visible = true;
            txtcity.Visible = true;
            Label3.Text = "";
        }
        else
        {
            Label3.Text = "Cannot recognize Zipcode";
        }

    }
    public static void CallWebService(string zipcode, out string city, out string state)
    {
        var _url = "http://www.webservicex.net/uszip.asmx";
        var _action = "http://www.webservicex.net/uszip.asmx?op=GetInfoByZIP";

        XmlDocument soapEnvelopeXml = CreateSoapEnvelope(zipcode);
        HttpWebRequest webRequest = CreateWebRequest(_url, _action);
        InsertSoapEnvelopeIntoWebRequest(soapEnvelopeXml, webRequest);

        IAsyncResult asyncResult = webRequest.BeginGetResponse(null, null);

        asyncResult.AsyncWaitHandle.WaitOne();

        string soapResult;
        using (WebResponse webResponse = webRequest.EndGetResponse(asyncResult))
        {
            using (StreamReader rd = new StreamReader(webResponse.GetResponseStream()))
            {
                soapResult = rd.ReadToEnd();

                if (!String.IsNullOrEmpty(soapResult))
                {
                    int citylength = soapResult.IndexOf("</CITY>") - soapResult.IndexOf("<CITY>") - 6;
                    citylength = citylength > 0 ? citylength : 0;
                    city = soapResult.Substring(soapResult.IndexOf("<CITY>") + 6, citylength);
                    int stateLength = soapResult.IndexOf("</STATE>") - soapResult.IndexOf("<STATE>") - 7;
                    stateLength = stateLength > 0 ? stateLength : 0;
                    state = soapResult.Substring(soapResult.IndexOf("<STATE>") + 7, stateLength);
                }
                else
                {
                    city = String.Empty;
                    state = String.Empty;
                }
            }

        }

    }


    private static HttpWebRequest CreateWebRequest(string url, string action)
    {
        HttpWebRequest webRequest = (HttpWebRequest)WebRequest.Create(url);
        webRequest.Headers.Add(@"SOAP:Action");
        webRequest.ContentType = "text/xml;charset=\"utf-8\"";
        webRequest.Accept = "text/xml";
        webRequest.Method = "POST";
        return webRequest;
    }


    private static XmlDocument CreateSoapEnvelope(string zipcode)
    {
        XmlDocument soapEnvelop = new XmlDocument();
        string inputxml = "<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\"><soap12:Body><GetInfoByZIP xmlns=\"http://www.webserviceX.NET\"><USZip>" + zipcode + @"</USZip></GetInfoByZIP></soap12:Body></soap12:Envelope>";
        soapEnvelop.LoadXml(inputxml);
        return soapEnvelop;
    }


    private static void InsertSoapEnvelopeIntoWebRequest(XmlDocument soapEnvelopeXml, HttpWebRequest webRequest)
    {
        using (Stream stream = webRequest.GetRequestStream())
        {
            soapEnvelopeXml.Save(stream);
        }
    }


    protected void order_fruit_Click(object sender, EventArgs e)
    {

        Page.Validate();

        if (Page.IsValid)
        {
            Session["txname"] = Name.Text;
            Session["txemail"] = Email.Text;
            Session["Mobile"] = Mobile.Text;
            Session["txdate"] = DateTime.Now.ToString("MM/dd/yyyy hh:mm");
            Session["txaddr"] = Address.Text + ", " + txtcity.Text + ", " + txtstate.Text + ", " + ZipCode.Text;
            Session["txtCity"] = txtcity.Text;
            Session["txtState"] = txtstate.Text;
            Session["txfruit"] = DropDownList1.SelectedValue;
            Session["quantity"] = int.Parse(sql_string.Text);
            Session["price"] = double.Parse(ViewState["price"].ToString());
            Session["unit"] = ViewState["unit"].ToString();

            Response.Redirect("Thankyou.aspx");

        }
        else
        {
            Label2.Text = "Enter Valid Information";
            Label2.ForeColor = System.Drawing.Color.Red;
        }



    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        String fruit = DropDownList1.SelectedValue;
        quantity.Text = "Selected";
        OleDbConnection connection = new OleDbConnection(WebConfigurationManager.ConnectionStrings["fruitsConnectionString2"].ConnectionString);
        string selectString = "SELECT Price, UnitOfSale, Quantity from fruits WHERE FruitName = @Name";
        OleDbCommand cmd = new OleDbCommand(selectString, connection);
        cmd.Parameters.Add("@Name", OleDbType.VarChar);
        cmd.Parameters["@Name"].Value = fruit;
        connection.Open();
        OleDbDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            ViewState["price"] = reader["Price"].ToString();
            ViewState["unit"] = reader["UnitOfSale"].ToString();
            ViewState["available"] = reader["Quantity"].ToString();
        }
        quantity.Text = "Price : $" + ViewState["price"].ToString() + "/" + ViewState["unit"].ToString() + ", Available quantity : " + ViewState["available"].ToString();
    }

    protected void checkQuantity(object sender, ServerValidateEventArgs args)
    {
        int quantity = int.Parse(sql_string.Text);
        int available = int.Parse(ViewState["available"].ToString());

        if (quantity > available)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }

    protected void checkMobile(object source, ServerValidateEventArgs args)
    {
        String mobile = Mobile.Text;
        if (mobile.Length == 10)
        {

            char[] array = mobile.ToCharArray();
            foreach (char c in array)
            {
                if (c == ' ')
                {
                    args.IsValid = false;
                }
            }
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}