using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    

  

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {   //打开数据库
        string username, password,mystr, mysqlname;
        username = TextBox1.Text;
        password = TextBox2.Text;
        SqlConnection conn = new SqlConnection();
        mystr = " Data Source=ROCKSEAY;Initial Catalog=注册信息;Integrated Security=True;User Id='';Password=''";
            conn.ConnectionString = mystr;
            conn.Open();
        //查询用户名是否正确
             SqlCommand mycmd = new SqlCommand();
            
                mysqlname =  "select  password  from  shitu where username='" + username + "'";//应用了 视图
                mycmd.CommandText = mysqlname;
                mycmd.Connection = conn;
                //如果用户名正确 检验密码
                    if (mycmd.ExecuteScalar() != null)
                    {

                        string dbpassword = mycmd.ExecuteScalar().ToString().Trim();

                        //如果密码正确 进入聊天室
                        if (password == dbpassword)
                        { Session["name"] = TextBox1.Text; Session["password"] = TextBox2.Text;
                        //设置在线状态
                        SqlCommand cmd = new SqlCommand();

                        String mysql = "update zh  set zxzt=1  where username='" + username + "'";
                        cmd.CommandText = mysql;
                        cmd.Connection = conn;
                        cmd.ExecuteNonQuery();
                        Response.Redirect("选择.aspx");
                        }
                      //否则弹出请输入密码
                        else
                        {
                            Response.Write("<script>alert('请输入正确密码')</script>");
                        }

                    }
                       //否则弹出 请正确输入账号
                    else
                    {
                        Response.Write("<script>alert('请输入正确账号')</script>");
                    }
         conn.Close();
                }
            
             
      
    
    protected void TB_MM_TextChanged(object sender, EventArgs e)
    {

    }
   
   
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //进入注册页面
        Response.Redirect("注册.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("修改.aspx");
    }
}