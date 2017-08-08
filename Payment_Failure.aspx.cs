using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Failure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

            Response.Write("<h1>Sorry, your payment has been denied</h1>");
            Response.Write("<a href=\"Purchase.aspx\">Please try again</a>");
        
    }
}