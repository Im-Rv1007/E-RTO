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
    string temp;
    string photo;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(str);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Document/" + FileUpload1.FileName));
                temp = FileUpload1.FileName + "";
            }

       

            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(Server.MapPath("~/photo/" + FileUpload2.FileName));
                photo = FileUpload2.FileName + "";
            }



            sql = "insert into Registration(Username,Password,F_Name,L_Name,Address,City,Mobile,E_mail,Sec_Que,Sec_Ans,Status,temp,photo)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "'," + TextBox7.Text + ",'" + TextBox8.Text + "','" + DropDownList1.Text + "','" + TextBox9.Text + "','" + DropDownList2.Text + "','" + temp + "','" + photo + "')";
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
        Response.Redirect("~/Default.aspx");
    }
}
