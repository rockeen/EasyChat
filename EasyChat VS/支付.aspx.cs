using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;

public partial class 新建 : System.Web.UI.Page
{
    String name;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        name = Session["name"].ToString();
        string czk, czkmm, mystr, mysqlname;
        czk = TextBox1.Text;
       czkmm = TextBox2.Text;
        SqlConnection conn = new SqlConnection();
        mystr = " Data Source=ROCKSEAY;Initial Catalog=注册信息;Integrated Security=True;User Id='';Password=''";
            conn.ConnectionString = mystr;
            conn.Open();
        //查询用户名是否正确
             SqlCommand mycmd = new SqlCommand();
             
                mysqlname =  "select  * from czk where czk='" + czk + "'";
                mycmd.CommandText = mysqlname;
                mycmd.Connection = conn;
         SqlDataReader reader = mycmd.ExecuteReader();
                //如果用户名正确 检验密码


         if (reader.Read())
         {

             String mm = reader[1].ToString();
             String je = reader[2].ToString();
             int je1 = Convert.ToInt16(je);
             //密码正确
             if (czkmm == mm)
             {

                 //mysqlname1 = "  delete from czk where czk = '" + czk + "' ";
               
                 //mycmd1.CommandText = mysqlname1;
                 //mycmd1.Connection = conn;
                 mysqlname = " update zh set eb=eb+'" + je1 + "' where username ='" + name + "'";
                 mycmd.CommandText = mysqlname;
                
                 Response.Write("<script>alert('恭喜您充值成功')</script>");
             }
             //密码不正确
             else
             {
                 Response.Write("<script>alert('充值卡信息错误')</script>");

             }
         }
         else {
             Response.Write("<script>alert('充值卡信息错误')</script>");
         }

             reader.Close();
             mycmd.ExecuteNonQuery();
            
             conn.Close();

        //再执行一次删除操作
             SqlConnection myconn = new SqlConnection();
             mystr = " Data Source=ROCKSEAY;Initial Catalog=注册信息;Integrated Security=True;User Id='';Password=''";
             myconn.ConnectionString = mystr;
             myconn.Open();
             //查询用户名是否正确
             SqlCommand cmd = new SqlCommand();

             mysqlname = " delete from czk where czk = '" + czk + "'";
             cmd.CommandText = mysqlname;
             cmd.Connection = myconn;
             //SqlDataReader reader1 = cmd.ExecuteReader();
             //如果用户名正确 检验密码


             //if (reader1.Read())
             //{

             //    String mm = reader1[1].ToString();
             //    String je = reader1[2].ToString();
             //    int je1 = Convert.ToInt16(je);
             //    //密码正确
             //    if (czkmm == mm)
             //    {

             //        mysqlname = "  delete from czk where czk = '" + czk + "' ";

             //        mycmd.CommandText = mysqlname;
             //        mycmd.Connection = conn;
             //        //mysqlname = " update zh set eb=eb+'" + je1 + "' where username ='" + name + "'";
             //        //cmd.CommandText = mysqlname;

             //        Response.Write("<script>alert('恭喜您充值成功')</script>");
             //    }
             //    //密码不正确
             //    else
             //    {
             //        Response.Write("<script>alert('充值卡信息错误')</script>");

             //    }
             //}
             //else
             //{
             //    Response.Write("<script>alert('充值卡信息错误')</script>");
             //}

             //reader1.Close();
             cmd.ExecuteNonQuery();

             myconn.Close();
         }
       
}