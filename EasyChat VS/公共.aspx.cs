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

public partial class 测试 : System.Web.UI.Page
{
     String name;
       
    protected void Page_Load(object sender, EventArgs e)
    {

        String mystr;
        SqlConnection myconn = new SqlConnection();
        mystr = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

        myconn.ConnectionString = mystr;
        myconn.Open();
        if (Application["chat"] != null)
        {
            TextBox2.Text = (string)Application["chat"];
            
        }
        name = Session["name"].ToString();
      
        Label7.Text = name;
        //更新在线时间
       

        SqlCommand mycmd = new SqlCommand();

       string mysql = "update zh  set number= number+1  where username='" + name + "'";
        mycmd.CommandText = mysql;
        mycmd.Connection = myconn;
        mycmd.ExecuteNonQuery();
    
      
       

        myconn.Close();
        //查询等级
       

    
        String num = Convert.ToString(Session["num"]);
        int time = Convert.ToInt16(num);

        
        //等级划分
        if (time <= 20)
        {
            Label11.Text = "青铜 VIP 1";
            Image2.ImageUrl = "../image/1.png";
        }
        else if (time > 20 && time <= 100)
        {
            Label11.Text = "白银 VIP 2";
            Image2.ImageUrl = "../image/2.png";
        }
        else if (time > 100 && time <= 300)
        {
            Label11.Text = "黄金 VIP 3";
            Image2.ImageUrl = "../image/3.png";
        }
        else if (time > 300 && time <= 800)
        {
            Label11.Text = "白金 VIP 4";
            Image2.ImageUrl = "../image/4.png";
        }
        else if (time > 800 && time <= 3000)
        {
            Label11.Text = "钻石 VIP 5";
            Image2.ImageUrl = "../image/5.png";
        }
        else if (time > 3000)
        {
            Label11.Text = "王者 VIP 至尊用户";
            Image2.ImageUrl = "../image/6.png";
        }

       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        String ip, sp;
        int l;
        name = Session["name"].ToString();
        //找出ip地址并且隐藏后三位
        ip = Request.UserHostAddress;
        l = ip.Length - 1;
        ip = ip.Substring(0, l) + "***";

        //对话框
        if (TextBox1.Text != "")
        {
            Application.Lock();
            sp = "                    " + DateTime.Now.ToString() + "    " + "IP:" + ip + "\r\n " + name + "说:" + TextBox1.Text + "\r\n ";
            Application["chat"] = Application["chat"] + "\r\n " + sp;

            Application.UnLock();
            TextBox2.Text = (string)Application["chat"];
            TextBox1.Text = "";
            TextBox1.Focus();

            //打开数据库
            String mystr;
            SqlConnection myconn = new SqlConnection();

            mystr = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

            myconn.ConnectionString = mystr;
            myconn.Open();
            //对说脏话进行处理
            if (sp.IndexOf("傻逼") != -1 || sp.IndexOf("草") != -1 || sp.IndexOf("操") != -1)
            {
               String num = Convert.ToString(Session["num"]);
                int time = Convert.ToInt16(num);
                SqlCommand mycmd = new SqlCommand();
                string mysql = "update zh  set number= number-20  where username='" + name + "'";
                mycmd.CommandText = mysql;
                mycmd.Connection = myconn;
                mycmd.ExecuteNonQuery();
                Label12.Text = "在公共聊天室中聊天严禁说脏话，已扣聊天积分20，"+"当前积分为："+time+"当积分为 0 时您的账户将永久无法使用！";
               
               
            }
                //当低于0分时 无法使用
                SqlCommand cmd = new SqlCommand();

                String sql = "select * from zh where username='" + name + "'";
                cmd.CommandText = sql;
                cmd.Connection = myconn;
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    string num = reader[3].ToString();
                    int time = Convert.ToInt16(num);

                    if (time < 0)
                    {
                        Response.Redirect("登陆.aspx");
                    }
                }
                reader.Close();
                cmd.ExecuteNonQuery();
                myconn.Close();

            
        }
        else
        {
            TextBox1.Focus();
        }


        
    }

    
       
    
   //设置字体颜色
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Items[0].Selected == true)
        {
            TextBox1.ForeColor = Color.Black;
            TextBox2.ForeColor = Color.Black;
        }
        else if (DropDownList1.Items[1].Selected == true)
        {
            TextBox1.ForeColor = Color.Orange;
            TextBox2.ForeColor = Color.Orange;
        }
        else if (DropDownList1.Items[2].Selected == true)
        {
            TextBox1.ForeColor = Color.Gold;
            TextBox2.ForeColor = Color.Gold;
        }
        else if (DropDownList1.Items[3].Selected == true)
        {
            TextBox1.ForeColor = Color.SpringGreen;
            TextBox2.ForeColor = Color.SpringGreen;
        }
        else if (DropDownList1.Items[4].Selected == true)
        {
            TextBox1.ForeColor = Color.SkyBlue;
            TextBox2.ForeColor = Color.SkyBlue;
        }
        else if (DropDownList1.Items[5].Selected == true)
        {
            TextBox1.ForeColor = Color.SlateBlue;
            TextBox2.ForeColor = Color.SlateBlue;
        }
        else if (DropDownList1.Items[6].Selected == true)
        {
            TextBox1.ForeColor = Color.Purple;
            TextBox2.ForeColor = Color.Purple;
        }
    }
    //设置字体
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.Items[0].Selected == true)
        {
            TextBox1.Font.Name = "隶书";
            TextBox2.Font.Name = "隶书";
        }
        else if (DropDownList1.Items[1].Selected == true)
        {
            TextBox1.Font.Name = "宋体";
            TextBox2.Font.Name = "宋体";
        }
        else if (DropDownList1.Items[2].Selected == true)
        {
            TextBox1.Font.Name = "方正舒体";
            TextBox2.Font.Name = "方正舒体";
        }
        else if (DropDownList1.Items[3].Selected == true)
        {
            TextBox1.Font.Name = "华文行楷";
            TextBox2.Font.Name = "华文行楷";
        }
        else if (DropDownList1.Items[4].Selected == true)
        {
            TextBox1.Font.Name = "幼圆";
            TextBox2.Font.Name = "幼圆";
        }
        else if (DropDownList1.Items[5].Selected == true)
        {
            TextBox1.Font.Name = "楷体";
            TextBox2.Font.Name = "楷体";
        }
        else if (DropDownList1.Items[6].Selected == true)
        {
            TextBox1.Font.Name = "华文彩绘";
            TextBox2.Font.Name = "华文彩绘";
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    { //返回选择页面
        Response.Redirect("选择.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
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
        conn.Close();
        Response.Redirect("登陆.aspx");
    }
}