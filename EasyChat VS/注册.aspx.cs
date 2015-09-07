using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
public partial class 注册 : System.Web.UI.Page
{
    String em;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {    //检验账号名是否重复
           string name, password,str, sqlname,touxiang;
           touxiang = "~/touxiang/默认头像.png";
           name = TextBox1.Text;
           password = TextBox2.Text;
           SqlConnection conn = new SqlConnection();
           str = " Data Source=ROCKSEAY;Initial Catalog=注册信息;Integrated Security=True;User Id='';Password=''";
            conn.ConnectionString = str;
            conn.Open();
             SqlCommand cmd = new SqlCommand();

             sqlname = "execute cunchu  '" + name + "'";//应用存储过程
                cmd.CommandText = sqlname;
                cmd.Connection = conn;
        
                
        //如果重复 提示重复
                if (cmd.ExecuteScalar() != null )
                {
                    Response.Write("<script>alert('账号名重复')</script>");
                    conn.Close();
                }
        //如果不重复 按步骤注册信息
                else
                {
                 

                    String mysql = "insert into zh (username,password,email,number,eb,zxzt,sr,tu)values(@username,@password,@email,@number,@eb,@zxzt,@sr,@tu)";
                    cmd.CommandText = mysql;
                    
                    cmd.Parameters.Add("@username", SqlDbType.Char, 50).Value = TextBox1.Text;
                    cmd.Parameters.Add("@password", SqlDbType.Char,50).Value = TextBox2.Text;
                    cmd.Parameters.Add("@email", SqlDbType.Char, 50).Value = TextBox3.Text;
                    cmd.Parameters.Add("@number", SqlDbType.Int).Value = 0;
                    cmd.Parameters.Add("@eb", SqlDbType.Int).Value = 0;
                    cmd.Parameters.Add("@zxzt", SqlDbType.Int).Value = 0;
                    cmd.Parameters.Add("@sr", SqlDbType.Int).Value = 0;
                    cmd.Parameters.Add("@tu", SqlDbType.Char).Value = touxiang.Trim();
                    //try
                    //{
                        if (cmd.ExecuteNonQuery() >= -1)
                        {
                            Response.Write("<script>alert('恭喜您，注册成功')</script>");

                            Response.Write("<script language='avascript' type='text/javascript'>");
                            Response.Write("window.location.href='登陆.aspx?backurl='+window.location.href;");

                            Response.Write("</script>");

                        }
                        else { Response.Write("<script>alert('注册信息有错误，请重新输入')</script>"); }
                    //}
                    //catch {
                    //    Response.Write("<script>alert('邮箱重复')</script>");
                    //}

                    conn.Close();
                }
           
        }
    
}
