using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (!Can_Register())
        {
            Session["id"] = Can_zhi();
           Session["Username"] = tb_log.Text;

           Response.Redirect("~/Login.aspx");

           
            
        }
        else
            Response.Write("<script>alert('密码错误！')</script>");
    }
    protected bool Can_Register()
    {
        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"Select Useryou from [User] where Useryou=@you and Userpwd=@pwd ";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@you", tb_log.Text);
                cmd.Parameters.AddWithValue("@pwd", tb_pwd.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                //若是读到数据则返回 False
                if (dr.Read())
                {
                    return false;
                }
            }
        }



        return true;
    }
    protected string Can_zhi()
    {

        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"Select UserId,UserName from [User] where Useryou=@you";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@you", tb_log.Text);

                SqlDataReader dr = cmd.ExecuteReader();
                //若是读到数据则返回 False
                dr.Read();
                return dr[0].ToString();


            }
        }
    }

}