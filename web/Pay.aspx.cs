using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Pay : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {


        string commid = Session["commid"] as string;   //获取登录页面传递的对象

        if (String.IsNullOrEmpty(commid))        //判断是否有参数
        {
            Response.Redirect("~/Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
          
        string username = Session["Username"].ToString();
        string adress;
       
        string commname;
        string userid;
        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"SELECT   Commodity.CommodityId, Commodity.CommodityName, [User].UserId, [User].UserName, [User].Adress, [User].Useryou FROM Commodity CROSS JOIN [User] WHERE  (Commodity.CommodityId = @commodityid) AND ([User].Useryou = @you)";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@commodityid", Session["commid"] as string);
                cmd.Parameters.AddWithValue("@you", username);

                SqlDataReader dr = cmd.ExecuteReader();
                //读数据
                dr.Read();
                username = dr[3].ToString();
                adress = dr[4].ToString();
                userid = dr[2].ToString();
                commname = dr[0].ToString();
                

            }
        }
        Can_Insert(userid, commname, adress);
        Response.Redirect("~/order_user.aspx");
       
       
       
    }
    protected bool Can_Insert(string userid,string commname,string orderadress)
    {
        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"INSERT INTO [order](OrderDate,UserId,CommodityId,OrderAdress,OrderIf,IfPayment) values(@now_date,@Userid,@commodityId ,@adress,'False','True');";
        string sql1=@"UPDATE [Commodity] SET Sales=Sales+1,Stock=Stock-1 where CommodityId="+commname;
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            SqlCommand cd = new SqlCommand(sql1, con);
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@now_date",DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@Userid", int.Parse(userid));
                cmd.Parameters.AddWithValue("@Adress",orderadress);
                cmd.Parameters.AddWithValue("@commodityId",commname);
                if (cmd.ExecuteNonQuery() > 0)
                {
                    return true;
                }
            }
        }
        return false;
    }
        
    
}