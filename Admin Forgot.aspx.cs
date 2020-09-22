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

public partial class Default2 : System.Web.UI.Page
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
       string username = TextBox1.Text;
       
       string answer = TextBox2.Text;

        sql = "select Password from Admin_Master where Username = '" + username + "' and sec_ans ='" + answer + "' ";
        cmd = new SqlCommand(sql, conn);
        conn.Open();
        object c = cmd.ExecuteScalar();

        if (c != null && c.ToString() != "")
        {
            Label1.Text = "Your Answer is : " + c.ToString();
           
        }
        else
        {
            Label1.Text = "wrong Username Or Password";
        }

    }
}
