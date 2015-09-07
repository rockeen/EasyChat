using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
public partial class 修改 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {   //查询邮箱是否存在
        string username, password, str, mysqlname, email;
        email = TextBox1.Text;
        username = TextBox2.Text;
        password = TextBox3.Text;
        SqlConnection conn = new SqlConnection();
        str = " Data Source=ROCKSEAY;Initial Catalog=注册信息;Integrated Security=True;User Id='';Password=''";
        conn.ConnectionString = str;
        conn.Open();
        SqlCommand cmd = new SqlCommand();

        mysqlname = "select  *  from zh where email='" + email + "'";
        cmd.CommandText = mysqlname;
        cmd.Connection = conn;
      //不存在 输出邮箱错误
        if (cmd.ExecuteScalar() == null)
        {
            Response.Write("<script>alert('邮箱错误')</script>");
        }
            //否则修改账户名密码
        else
        {
            email = TextBox1.Text;
            username = TextBox2.Text;
            password = TextBox3.Text;
            String mystr;
            SqlConnection myconn = new SqlConnection();
            mystr = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

            myconn.ConnectionString = mystr;
            myconn.Open();

            SqlCommand mycmd = new SqlCommand();

            String mysql = "update zh  set username='" + username + "' ,password='" + password + "' where email='" + email + "'";
            mycmd.CommandText = mysql;
            mycmd.Connection = myconn;
            //mycmd.ExecuteNonQuery();
            if (mycmd.ExecuteNonQuery() >= -1)
            { Response.Write("<script>alert('恭喜您，修改成功')</script>"); }
            else { Response.Write("<script>alert('修改失败，请重新修改')</script>"); }


            myconn.Close();
        }
    }
    //点击关闭进入登陆页面
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("登陆.aspx");
    }
}