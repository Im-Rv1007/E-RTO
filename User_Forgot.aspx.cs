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
        sql = "select password from Registration where username = '"+ TextBox1.Text  +"' and sec_ans ='"+ TextBox2.Text  +"' ";
        cmd = new SqlCommand(sql, conn);
        conn.Open();
        object c = cmd.ExecuteScalar();

        if (c != null && c.ToString() != "")
        {
            Label1.Text = "Your Answer is : " + c.ToString();
        }
        else
        {
            Label1.Text = "wrong Username and password";
        }
    }
}

