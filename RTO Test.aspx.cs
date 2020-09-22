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
using System.Drawing;

using System.Data.SqlClient;
//using RTO.DT;

public partial class _Default : System.Web.UI.Page
{
    string strCn = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";

    string sql = "";

    SqlConnection conn;
    SqlDataAdapter dap;
    DataTable dt;

    int q_n = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

        conn = new SqlConnection(strCn);
        if (!IsPostBack)
        {

            sql = "SELECT TOP (15) q_id, q_name, opt_1, opt_2, opt_3, ans, image FROM rto ORDER BY NEWID()";

            dap = new SqlDataAdapter(sql, strCn);
            dt = new DataTable();
            dap.Fill(dt);
            gv1.DataSource = dt;
            gv1.DataBind();

            lbl_no_of_que.Text = "0";

            Show_Que();

        }
        else
        {
            chk_ans();
            Show_Que();
        }

        
        //Session.Add("counter", "0");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //int a=0;
        chk_ans();
        //Session["counter"] = int.Parse(Session["counter"].ToString());
        //      while(a<int.Parse(Session["counter"].ToString()))
        //      {

        //      }
        //if (ListBox1.Items[0].Text == "1")
        //{
        //    lbl1.BackColor = Color.Green;
        //}
        //else if (ListBox1.Items[0].Text == "0")
        //{
        //    lbl1.BackColor = Color.Red;
        //}
        //else
        //{
        //}

        //if (ListBox1.Items[1].Text == "1")
        //{
        //    lbl1.BackColor = Color.Green;
        //}
        //else if (ListBox1.Items[1].Text == "0")
        //{
        //    lbl1.BackColor = Color.Red;
        //}
        //else
        //{
        //}


        //if (ListBox1.Items[2].Text == "1")
        //{
        //    lbl1.BackColor = Color.Green;
        //}
        //else if (ListBox1.Items[2].Text == "0")
        //{
        //    lbl1.BackColor = Color.Red;
        //}
        //else
        //{
        ////}

        Show_Que();


    }
    public void Show_Que()
    {


        q_n = int.Parse(lbl_no_of_que.Text);

        // For English
        lbl_que.Text = gv1.Rows[q_n].Cells[1].Text;
        lbl_ans1.Text = gv1.Rows[q_n].Cells[2].Text;
        lbl_ans2.Text = gv1.Rows[q_n].Cells[3].Text;
        lbl_ans3.Text = gv1.Rows[q_n].Cells[4].Text;
        Image1.ImageUrl = "~/Traffic_img/" + gv1.Rows[q_n].Cells[6].Text;
        lbl_c_ans.Text = gv1.Rows[q_n].Cells[5].Text;

        //===============================================
        //For Gujarati
        //BT_rto1 b1 = new BT_rto1();

        sql = "select * from rto1 where q_id = " + gv1.Rows[q_n].Cells[0].Text;
        dt = new DataTable();
        MyClass my = new MyClass();
        dt = my.Get_TABLE(sql);

        lbl_que_g.Text = dt.Rows[0][1].ToString();
        lbl_ans1_g.Text = dt.Rows[0][2].ToString();
        lbl_ans2_g.Text = dt.Rows[0][3].ToString();
        lbl_ans3_g.Text = dt.Rows[0][4].ToString();
        /////////////////////////////////////////

        //Show Que. No.......
        lbl_no_of_que.Text = Convert.ToString(q_n + 1);
        Label1.Text = "Que. : " + lbl_no_of_que.Text;

        ////////////
        opt1.Checked = false;
        opt2.Checked = false;
        opt3.Checked = false;
        /////////////
        //Display opt wise Guj-Eng    Que/Ans....
        Show_OPT();

    }
    public void Show_OPT()
    {
        if (opteng.Checked == true)
        {
            lbl_que.Visible = true;
            lbl_ans1.Visible = true;
            lbl_ans2.Visible = true;
            lbl_ans3.Visible = true;


            lbl_que_g.Visible = false;
            lbl_ans1_g.Visible = false;
            lbl_ans2_g.Visible = false;
            lbl_ans3_g.Visible = false;

        }
        if (optguj.Checked == true)
        {
            lbl_que.Visible = false;
            lbl_ans1.Visible = false;
            lbl_ans2.Visible = false;
            lbl_ans3.Visible = false;


            lbl_que_g.Visible = true;
            lbl_ans1_g.Visible = true;
            lbl_ans2_g.Visible = true;
            lbl_ans3_g.Visible = true;

        }
        if (optboth.Checked == true)
        {
            lbl_que.Visible = true;
            lbl_ans1.Visible = true;
            lbl_ans2.Visible = true;
            lbl_ans3.Visible = true;


            lbl_que_g.Visible = true;
            lbl_ans1_g.Visible = true;
            lbl_ans2_g.Visible = true;
            lbl_ans3_g.Visible = true;

        }
    }
    public void chk_ans()
    {

        if (opt1.Checked == true)
        {
            if (lbl_c_ans.Text == "opt_1")
            {

                ListBox1.Items.Add("1");

            }
            else
            {
                ListBox1.Items.Add("0");

            }
        }
        else if (opt2.Checked == true)
        {
            if (lbl_c_ans.Text == "opt_2")
            {

                ListBox1.Items.Add("1");
            }
            else
            {
                ListBox1.Items.Add("0");

            }
        }
        else if (opt3.Checked == true)
        {
            if (lbl_c_ans.Text == "opt_3")
            {

                ListBox1.Items.Add("1");

            }
            else
            {
                ListBox1.Items.Add("0");

            }
        }
        else
        {
            ListBox1.Items.Add("0");
        }
        set_color();

    }

    private void set_color()
    {
        for (int i = 0; i < ListBox1.Items.Count; i++)
        {
            switch (i)
            {
                case 0:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl1.BackColor = Color.Green;
                        lbl1.ForeColor = Color.Yellow;
                    }
                    else
                    {
                        lbl1.BackColor = Color.Red;
                        lbl1.ForeColor = Color.Yellow;
                    }
                    break;
                case 1:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl2.BackColor = Color.Green;
                        lbl2.ForeColor = Color.Yellow;
                    }
                    else
                    {
                        lbl2.BackColor = Color.Red;
                        lbl2.ForeColor = Color.Yellow;
                    }
                    break;
                case 2:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl3.BackColor = Color.Green;
                        lbl3.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl3.BackColor = Color.Red;
                        lbl3.ForeColor = Color.Yellow;
                    }
                    break;
                case 3:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl4.BackColor = Color.Green;
                        lbl4.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl4.BackColor = Color.Red;
                        lbl4.ForeColor = Color.Yellow;
                    }
                    break;
                case 4:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl5.BackColor = Color.Green;
                        lbl5.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl5.BackColor = Color.Red;
                        lbl5.ForeColor = Color.Yellow;
                    }
                    break;
                case 5:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl6.BackColor = Color.Green;
                        lbl6.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl6.BackColor = Color.Red;
                        lbl6.ForeColor = Color.Yellow;
                    }
                    break;
                case 6:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl7.BackColor = Color.Green;
                        lbl7.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl7.BackColor = Color.Red;
                        lbl7.ForeColor = Color.Yellow;
                    }
                    break;
                case 7:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl8.BackColor = Color.Green;
                        lbl8.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl8.BackColor = Color.Red;
                        lbl8.ForeColor = Color.Yellow;
                    }
                    break;
                case 8:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl9.BackColor = Color.Green;
                        lbl9.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl9.BackColor = Color.Red;
                        lbl9.ForeColor = Color.Yellow;
                    }
                    break;
                case 9:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl10.BackColor = Color.Green;
                        lbl10.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl10.BackColor = Color.Red;
                        lbl10.ForeColor = Color.Yellow;
                    }
                    break;
                case 10:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl11.BackColor = Color.Green;
                        lbl11.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl11.BackColor = Color.Red;
                        lbl11.ForeColor = Color.Yellow;
                    }
                    break;
                case 11:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl12.BackColor = Color.Green;
                        lbl12.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl12.BackColor = Color.Red;
                        lbl12.ForeColor = Color.Yellow;
                    }
                    break;
                case 12:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl13.BackColor = Color.Green;
                        lbl13.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl13.BackColor = Color.Red;
                        lbl13.ForeColor = Color.Yellow;
                    }
                    break;
                case 13:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl14.BackColor = Color.Green;
                        lbl14.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl14.BackColor = Color.Red;
                        lbl14.ForeColor = Color.Yellow;
                    }
                    break;
                case 14:
                    if (ListBox1.Items[i].Text == "1")
                    {
                        lbl15.BackColor = Color.Green;
                        lbl15.ForeColor = Color.Yellow;

                    }
                    else
                    {
                        lbl15.BackColor = Color.Red;
                        lbl15.ForeColor = Color.Yellow;
                    }
                    break;
            }

        }

    }



    protected void opteng_CheckedChanged(object sender, EventArgs e)
    {
        Show_OPT();

    }
    protected void optguj_CheckedChanged(object sender, EventArgs e)
    {
        Show_OPT();
    }
    protected void optboth_CheckedChanged(object sender, EventArgs e)
    {
        Show_OPT();
    }
  
}
