using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["txname"].ToString() == "")
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Write("<h1>Thank you for purchasing. Your payment has been processed</h1>");
            Response.Write("<a href=\"Purchase.aspx\">Click here to buy again</a>");
        }
    }
}