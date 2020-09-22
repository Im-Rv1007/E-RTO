using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Test_Result : System.Web.UI.Page
{
    int m = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Request.QueryString["marks"] != null)
        {
            m = int.Parse(Request.QueryString["marks"].ToString());
            if (m >= 11)
            {
                Image1.ImageUrl = "~/images/winner.png";
                Label1.Text = "You got "+ m + " Marks out of 15, You are PASS...";
            }
            else
            {
                Image1.ImageUrl = "~/images/loser.png";
                Label1.Text = "You got " + m + " Marks out of 15, You are FAIL...";
            }

        }
        else
        {
            Response.Redirect("~/RTO Test.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}
