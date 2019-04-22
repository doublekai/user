using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Session["commid"] = Request["id"];
        string username = Session["Username"] as string;   //获取登录页面传递的对象

        if (String.IsNullOrEmpty(username))        //判断是否有参数
        {
            Response.Redirect("~/Login_to.aspx");
        }
        lb_name.Text = Can_Register(username);
    }
    protected string Can_Register(string username)
    {

        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"Select UserName from [User] where Useryou=@you";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@you", username);

                SqlDataReader dr = cmd.ExecuteReader();
                //若是读到数据则返回 False
                dr.Read();
                return dr[0].ToString();


            }
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
         //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"UPDATE [Commodity] SET Evaluate=Evaluate+1 where CommodityId=@you";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@you", int.Parse(Request["id"]));

                if (cmd.ExecuteNonQuery() > 0)
                {
                    foreach (RepeaterItem i in Repeater1.Items)
                    {
                        ImageButton btn = i.FindControl("ImageButton1") as ImageButton;
                        btn.ImageUrl = "~/img/haoping.jpg";
                        btn.Enabled = false;
                    }
                }
            }
        }
               
        

      
      
    }
}