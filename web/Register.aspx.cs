using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (Can_Register())
        {
            if (Can_Insert())
            {
                Response.Write("<script>alert('注册成功！')</script>");
                Response.Redirect("~/Log.aspx");
            }
        }
        else
            Response.Write("<script>alert('用户已存在！')</script>");
    }
    protected bool Can_Insert() 
    {
        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"INSERT INTO [User](UserName,Age,Adress,Useryou,Userpwd) values(@name,@Age,@Adress,@Useryou,@Userpwd);";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@name", tb_name.Text);
                cmd.Parameters.AddWithValue("@Age", int.Parse(tb_age.Text));
                cmd.Parameters.AddWithValue("@Adress",tb_adress.Text);
                cmd.Parameters.AddWithValue("@Useryou", tb_you.Text);
                cmd.Parameters.AddWithValue("@Userpwd",tb_pwd.Text);
                if (cmd.ExecuteNonQuery() > 0)
                {
                    return true;
                }
            }
        }
        return false;
    }
    protected bool Can_Register()
    {
        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"Select Useryou from [User] where Useryou=@you ";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@you", tb_you.Text);
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
}