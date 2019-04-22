using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Doublekai_doublekai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string pwd = FormsAuthentication.HashPasswordForStoringInConfigFile(tb_pwd.Text, "MD5");
        
        if (Can_Register(pwd))
        {
            Session["adminid"] = tb_log.Text;
            Response.Write("<script>alert('登录成功')</script>");
            Response.Redirect("~/Doublekai/order.aspx");
        }
    }
    protected bool Can_Register(string pwd)
    {
       
        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"Select admin,pwd from [Admin] where admin=@you and pwd=@pwd ";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@you",tb_log.Text);
                cmd.Parameters.AddWithValue("@pwd",pwd);
                SqlDataReader dr = cmd.ExecuteReader();
                //若是读到数据则返回 False
                if (dr.Read())
                {
                    return true;
                }
            }
        }
        return false;
    }
}