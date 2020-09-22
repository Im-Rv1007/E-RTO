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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["score"] != null)
        {
            //Label1.Text = "Dear User " + Session["user"].ToString() + "\n";
            //Label1.Text += " You Got " + Request.QueryString["cr_ans"].ToString() + " Out of 15 ";
            int score = int.Parse(Request.QueryString["score"].ToString());
           
        }
   

    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}
