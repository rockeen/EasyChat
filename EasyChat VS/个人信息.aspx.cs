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
public partial class 个人信息 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image3.ImageUrl = Convert.ToString(Session["tu"]);
        String eb = Convert.ToString(Session["eb"]);

        String usn = Convert.ToString(Session["username"]);
        String num = Convert.ToString(Session["num"]);
        int time = Convert.ToInt16(num);
        Label7.Text = usn;
        Label10.Text = num;
        Label6.Text = eb;
        if (time <= 20)
        {
            Label5.Text = "青铜 VIP 1";
            Image1.ImageUrl = "../image/1.png";
        }
        else if (time > 20 && time <= 100)
        {
            Label5.Text = "白银 VIP 2";
            Image1.ImageUrl = "../image/2.png";
        }
        else if (time > 100 && time <= 300)
        {
            Label5.Text = "黄金 VIP 3";
            Image1.ImageUrl = "../image/3.png";
        }
        else if (time > 300 && time <= 800)
        {
            Label5.Text = "白金 VIP 4";
            Image1.ImageUrl = "../image/4.png";
        }
        else if (time > 800 && time <= 3000)
        {
            Label5.Text = "钻石 VIP 5";
            Image1.ImageUrl = "../image/5.png";
        }
        else if (time > 3000)
        {
            Label5.Text = "王者 VIP 至尊用户";
            Image1.ImageUrl = "../image/6.png";
        }
        }
        


    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("选择.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("修改.aspx");
    }
    //上传图片
   
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        String tu;
        if (IsPostBack)
        {
            Boolean fileOK = false;
            String path = Server.MapPath("~/touxiang/");

            if (FileUpload1.HasFile)
            {
                String fileExtension =
      System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".jpg", ".png", ".bmp" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                    }
                }
            }
            if (fileOK)
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs(path +
                                                               FileUpload1.FileName);
                    Label11.Text = "文件上传成功!";
                    //上传数据库
                    String name = Convert.ToString(Session["name"]);
                    String str;
                    SqlConnection conn = new SqlConnection();
                    str = "Data Source=ROCKSEAY;Initial Catalog=注册信息;database=注册信息; Integrated Security=True;User Id='';Password=''";

                    conn.ConnectionString = str;
                    conn.Open();

                    SqlCommand cmd = new SqlCommand();

                    String sql = "update zh set tu='~/touxiang/" + FileUpload1.FileName + "' where username='" + name + "'";
         
                    cmd.CommandText = sql;
                    cmd.Connection = conn;
                    cmd.ExecuteNonQuery();
                   // SqlCommand mycmd = new SqlCommand();

                   // String mysql = "select * from zh where username='" + name + "'";
                   // SqlDataReader reader = cmd.ExecuteReader();
                   // if (reader.Read())
                   // {
                       
                   //     tu = reader[7].ToString();
                   //     Image3.ImageUrl = tu;
                   // }

                   //mycmd.CommandText = mysql;
                   // mycmd.Connection = conn;

                   // reader.Close();
                   
                   // mycmd.ExecuteNonQuery();
                    conn.Close();

                    
                }
                catch
                {
                    Label11.Text = "文件没有上传成功.";
                }
            }
            else
            { Label11.Text = "文件类型不对."; }
        }
    }
}