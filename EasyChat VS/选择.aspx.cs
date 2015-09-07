using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;

public partial class 选择 : System.Web.UI.Page
{
    
    String str, usn, num, eb, zxzt,sr,tu;

    protected void Page_Load(object sender, EventArgs e)
    {     
        String name = Convert.ToString(Session["name"]);
        
      
        SqlConnection conn = new SqlConnection();
        str = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

        conn.ConnectionString = str;
        conn.Open();

        SqlCommand cmd = new SqlCommand();

        String sql = "select * from zh where username='" + name + "'";
        cmd.CommandText = sql;
        cmd.Connection = conn;
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            usn = reader[0].ToString();
            eb = reader[4].ToString();
            num = reader[3].ToString();
            int time = Convert.ToInt16(num);
            zxzt = reader[5].ToString();
            int zx = Convert.ToInt16(zxzt);
           sr = reader[6].ToString();
            int sm = Convert.ToInt16(sr);
            tu = reader[7].ToString().Trim();
            Session["username"] =usn;
            Session["eb"] = eb;
            Session["num"] = num;
            Session["zxzt"] = zx;
            Session["sr"] = sr;
            Session["tu"] = tu;
        }
        reader.Close();
        cmd.ExecuteNonQuery();
        conn.Close();

    
        
        //传sission的值
   
        LinkButton2.Text = Session["name"].ToString();
    
        //第几位访问者
         int Number;
         if (Request.Cookies["Number"] == null)
         {
             Number = 1;
         }
         else
         {
             Number = Convert.ToInt32(Request.Cookies["Number"].Value) + 1;
         }			    Response.Cookies["Number"].Value=Convert.ToString(Number);                    Response.Cookies["Number"].Expires=DateTime.Now.AddYears(1);    Label5.Text="你是本站的第"+Number+"位访问者，欢迎您的光临";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {  //进入公共页面
        Response.Redirect("公共.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("登陆.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        String name = Convert.ToString(Session["name"]);
        //进入私人页面

        SqlConnection myconn = new SqlConnection();
        str = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

        myconn.ConnectionString = str;
        myconn.Open();

        int q = Convert.ToInt16(eb);
        int a = Convert.ToInt16(sr); 
        if (q < 10)
        {
            Response.Write("<script>alert('EB余额不足请充值，1元=1EB')</script>");
        }
        else
        {

            if (a == 0 )
            {
                

                SqlCommand mycmd = new SqlCommand();
                String mysql = "update zh  set eb=eb-10  where username='" + name + "'";
                mycmd.CommandText = mysql;
                mycmd.Connection = myconn;
                mycmd.ExecuteNonQuery();
                SqlCommand cmd = new SqlCommand();
                String sql = "update zh  set sr=1  where username='" + name + "'";
                cmd.CommandText = sql;
                cmd.Connection = myconn;
                cmd.ExecuteNonQuery();
                myconn.Close();
                Response.Redirect("私密1.aspx");
            }
            else
            {
                Response.Redirect("私密.aspx");
            }
        }
        
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("支付.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("个人信息.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        //管理员权限
        string mystr, mysqlname;
      
     
        SqlConnection conn = new SqlConnection();
        mystr = " Data Source=ROCKSEAY;Initial Catalog=注册信息;Integrated Security=True;User Id='';Password=''";
            conn.ConnectionString = mystr;
            conn.Open();
        //查询用户名是否正确
             SqlCommand mycmd = new SqlCommand();
            
                mysqlname =  "select username from guanliyuan  where username='" + usn + "'";
                mycmd.CommandText = mysqlname;
                mycmd.Connection = conn;
                //如果用户名正确 检验密码
                if (mycmd.ExecuteScalar() != null)
                {
                    //如果密码正确 进入管路员页面

                    Response.Redirect("管理.aspx");
                }
                else
                {
                    Response.Write("<script>alert('您不是管理员，如需要管理员权限请联系：15610537229')</script>");
                }
    }
}