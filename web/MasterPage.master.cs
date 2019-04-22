using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Session["Username"] as string;   //获取登录页面传递的对象

        if (String.IsNullOrEmpty(username))        //判断是否有参数
        {
            Response.Redirect("~/Login_to.aspx");
        }
        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"Select UserName,UserId from [User] where Useryou=@you";
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
                lb_name.Text = dr[0].ToString();

            }
        }
        
    }
}
