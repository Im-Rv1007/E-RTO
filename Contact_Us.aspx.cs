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

        sql = "insert into Contact_Us(Cont_Date,Name,Mobile,Email,Message)values('" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + TextBox5.Text + "','" + TextBox6.Text + "')";
       
        cmd = new SqlCommand(sql,conn);
        conn.Open();
        int i = cmd.ExecuteNonQuery();
        conn.Close();
        if (i > 0)
        {
            Label1.Text = "record inserted...";
        }
        else
        {
            Label1.Text = "record not inserted...";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }
}
 