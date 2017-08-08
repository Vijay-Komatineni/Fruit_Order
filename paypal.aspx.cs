using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Xml;
using System.Web.Configuration;
using System.Net;
using System.IO;
using System.Configuration;

public partial class paypal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string amount = Session["price"].ToString();
        string itemInfo = "Payment for purchase";
        string name = Session["txname"].ToString();
        string phone = Session["Mobile"].ToString();
        string quantity = Session["quantity"].ToString();
        string email = Session["txemail"].ToString();
        string city = Session["txtCity"].ToString();
        string state = Session["txtState"].ToString();
        //string currency = "USD";
        string success = "http://localhost:56808/Payment_Success.aspx";
        string failure = "http://localhost:56808/Payment_Failure.aspx";
        string redirecturl = "";

        try {
            //Mention URL to redirect content to paypal site
            redirecturl += "https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business="+ ConfigurationManager.AppSettings["paypalemail"].ToString();

            //First name i assign static based on login details assign this value
            redirecturl += "&first_name=" + name;

            //City i assign static based on login user detail you change this value
            redirecturl += "&city="+city;

            //State i assign static based on login user detail you change this value
            redirecturl += "&state="+state;

            //Product Name
            //redirecturl += "&item_name=" + itemInfo;

            //Product Name
            redirecturl += "&amount=" + amount;

            //Phone No
            redirecturl += "&night_phone_a=" + phone;

            //Product Name
            redirecturl += "&item_name=" + itemInfo;

            //Address 
            redirecturl += "&address1=" + email;

            //Business contact id
            // redirecturl += "&business=k.tapankumar@gmail.com";

            //Shipping charges if any
            redirecturl += "&shipping=0";

            //Handling charges if any
            redirecturl += "&handling=0";

            //Tax amount if any
            redirecturl += "&tax=0";

            //Add quatity i added one only statically 
            redirecturl += "&quantity=" + quantity;

            //Currency code 
            // redirecturl += "&currency=" + currency;

            //Success return page url
            redirecturl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();

            //Failed return page url
            redirecturl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();

            Response.Redirect(redirecturl);
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}
/*    protected void PayWithPayPal()
    {
       
}*/