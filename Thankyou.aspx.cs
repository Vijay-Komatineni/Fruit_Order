using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thankyou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            Tname.Text = Session["txname"].ToString();
            Temail.Text = Session["txemail"].ToString();
            TMobile.Text = Session["Mobile"].ToString();
            TQuantity.Text = Session["quantity"].ToString();
            TPrice.Text = "$"+calculateTotalPrice().ToString();
            Session["totPrice"] = calculateTotalPrice().ToString();
            Taddr.Text = Session["txaddr"].ToString();
            Torder.Text = Session["txdate"].ToString();
            Tfruit.Text = Session["txfruit"].ToString();
        }
        catch(NullReferenceException ex)
        {
            Label2.Text = "Oops! Something went wrong";
        }
    }

    protected double calculateTotalPrice()
    {
        int quantity = int.Parse(Session["quantity"].ToString());
        double price = double.Parse(Session["price"].ToString());
        String unit = Session["unit"].ToString();
        double totPrice = 0;
        if (unit.Equals("EA"))
        {
            totPrice = quantity * price;
        }
        else
        {
            totPrice = quantity * price;
        }
        return totPrice;
    }

    protected void Pay_Click(object sender, EventArgs e)
    {
        Response.Redirect("paypal.aspx");
    }

    protected void editDetails(object sender, EventArgs e)
    {
        Response.Redirect("Purchase.aspx");
    }
}