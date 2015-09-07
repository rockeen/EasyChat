using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Text;
public partial class 私密 : System.Web.UI.Page
{
    String name;

    protected void Page_Load(object sender, EventArgs e)
    {

        Image2.ImageUrl = Convert.ToString(Session["tu"]);
        if (RadioButtonList1.SelectedIndex == -1)
        {
           
            //RadioButtonList1.Items[0].Selected = true;
        }
        string val = this.RadioButtonList1.SelectedValue;
        Session["val"] = val;

        name = Session["name"].ToString();
       
       
            String mystr, time, yanse, zihao;
            yanse = DropDownList1.SelectedValue.ToString();
            zihao = DropDownList2.SelectedValue.ToString().Trim();

            time = DateTime.Now.ToString();
            Session["time"] = time;
            SqlConnection myconn = new SqlConnection();
            mystr = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

            myconn.ConnectionString = mystr;
            myconn.Open();
            SqlCommand cmd = new SqlCommand();
            //插入用户名和时间
            try
            {
                string sql = "insert into sp (username,time,tosp,yanse,ziti)values(@username,@time,@tosp,@yanse,@ziti)";
                cmd.Parameters.Add("@username", SqlDbType.Char, 50).Value = name;
                cmd.Parameters.Add("@time", SqlDbType.DateTime).Value = time;
                cmd.Parameters.Add("@tosp", SqlDbType.Char, 50).Value = val;
                cmd.Parameters.Add("@yanse", SqlDbType.Char, 10).Value = yanse;
                cmd.Parameters.Add("@ziti", SqlDbType.Char, 10).Value = zihao;
                cmd.CommandText = sql;
                cmd.Connection = myconn;

                cmd.ExecuteNonQuery();



                myconn.Close();
            }
            catch {
                Response.Redirect("登陆.aspx");
            }
            }

        
    


   
   
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {   //表情的发送
        String bq = DropDownList3.SelectedValue.ToString();
        TextBox1.Text = TextBox1.Text + bq;
       
    }








    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        name = Session["name"].ToString();
        String mystr, time;
        time = DateTime.Now.ToString();
        Session["time"] = time;
        SqlConnection myconn = new SqlConnection();
        mystr = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

        myconn.ConnectionString = mystr;
        myconn.Open();


        //更新聊天记录
        SqlCommand mycmd = new SqlCommand();
        if (TextBox1.Text == "")
        {
            TextBox1.Focus();
        }
        else
        {
            String SP = TextBox1.Text;
            string mysql = "update sp  set sp= '" + SP + "'where username='" + name + "'and time='" + time + "'";
            mycmd.CommandText = mysql;
            mycmd.Connection = myconn;
            mycmd.ExecuteNonQuery();

            myconn.Close();

            TextBox1.Text = "";
            TextBox1.Focus();

        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("选择.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //关闭之后的处理
        String mystr;
        name = Session["name"].ToString();
        SqlConnection conn = new SqlConnection();

        mystr = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

        conn.ConnectionString = mystr;
        conn.Open();
        SqlCommand cmd = new SqlCommand();

        String mysql = "update zh  set zxzt=0  where username='" + name + "'";
        cmd.CommandText = mysql;
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        SqlCommand mycmd = new SqlCommand();

        String sql = "delete from sp    where tosp=''";
        mycmd.CommandText = sql;
        mycmd.Connection = conn;
        mycmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("登陆.aspx");
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}