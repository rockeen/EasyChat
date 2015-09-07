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
public partial class s收 : System.Web.UI.Page
{
    String name;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = Session["name"].ToString();
        String mystr,sp,um,tm,val,yanse,ziti;
        val = Session["val"].ToString();
        
            
            SqlConnection myconn = new SqlConnection();
            mystr = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

            myconn.ConnectionString = mystr;
            myconn.Open();
            SqlCommand cmd = new SqlCommand();

            string sql = "delete  from sp where sp is null  ";
            cmd.CommandText = sql;
            cmd.Connection = myconn;
            cmd.ExecuteNonQuery();
            SqlCommand mycmd = new SqlCommand();
            //查询聊天记录并且按 时间顺序排列
           
           
                string mysql = "select *  from sp where( username='" + name + "' and tosp='" + val + "' )or( username='" + val + "' and tosp='" + name + "'  )  order by time   ";
                mycmd.CommandText = mysql;
                mycmd.Connection = myconn;

                SqlDataReader reader = mycmd.ExecuteReader();
                while (reader.Read())
                {
                    sp = reader["sp"].ToString();
                    um = reader["username"].ToString();
                    tm = reader["time"].ToString();
                    yanse = reader["yanse"].ToString();
                     ziti = reader["ziti"].ToString();
                   
                    Response.Write("&nbsp" + "&nbsp" + "&nbsp" + "&nbsp" + "&nbsp" + "&nbsp" + "&nbsp" + "<font color=blue>" + tm + "</font>" + "<br/>");
                    Response.Write(um + "说：");

                    Response.Write("<font color=" + yanse + " face=" + ziti + " >" + sp + "</font>" + "<br/>");



                }
                reader.Close();
                mycmd.ExecuteNonQuery();
                myconn.Close();
            }
       
        
    
}