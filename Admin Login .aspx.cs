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

using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";

    string sql = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(str);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sql = "select Admin_id from Admin_Master  where Username = '" + TextBox1.Text  + "' and Password ='" + TextBox2 .Text + "' ";
        //Label1.Text = sql;

        cmd = new SqlCommand(sql, conn);
        conn.Open();
        object c =  cmd.ExecuteScalar();
        conn.Close();

        if (c != null)
        {
            Label1.Text = "WelCome To Admin Site...";
            Session["admin"] = TextBox1.Text; 
            Response.Redirect("~/admin/default.aspx");
        }
        else
        {
            Label1.Text = "wrong Username or password..."; 
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
}
