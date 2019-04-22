using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

public partial class Doublekai_add_comm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_add_Click(object sender, EventArgs e)
    {
        if (Can_Insert())
        {
            string filefullname = ((FileUpload)FileUpload1.FindControl("FileUpload1")).FileName;     //获取文件获取路径和文件名  
            string fillName = filefullname.Substring(filefullname.LastIndexOf("\\") + 1);             //获取文件名  
            string type = filefullname.Substring(filefullname.LastIndexOf(".") + 1);                  //获取文件类型  
            if (type == "png" || type == "bmp" || type == "jpg" || type == "gif" || type == "PNG" ||
            type == "JPG" || type == "BMP" || type == "GIF")  //判断文件类型  
            {
                //判断是否有该路径  
                string wantPath = Server.MapPath("../img");
                if (!Directory.Exists(wantPath))
                    Directory.CreateDirectory(wantPath);        //若没有路径就创建新的路径  
                ((FileUpload)FileUpload1.FindControl("FileUpload1")).SaveAs(Server.MapPath("../img/") +
             fillName);    
                //上传服务器(获取服务器项目地址是Server.MapPath())  
                Response.Write("<script>alert('添加成功！！')</script>");
            }
            else
            {
                Response.Write("<script>alert('图片上传错误！请检查文件名或路径')</script>");
            }
        }

        else {
            Response.Write("<script>alert('插入失败！！')</script>");
        }
       
    }
    protected bool Can_Insert()
    {
        //构建数据库连接字符串
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shopping.mdf;Integrated Security=True;User Instance=True";
        //建立数据库连接
        string sql = @"INSERT INTO [Commodity](CommodityName,CommodityPrice,Stock,Evaluate,Version,Type,Describe,Sales,ImageName,Fashion,Recommend) values" +
            "(@CommodityName,@CommodityPrice,@Stock,@Evaluate,@Version,@Type,@Describe,@Sales,@ImageName,@Fashion,@Recommend)";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            //打开数据库、建立数据库连接命令
            con.Open();
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                //使用参数化查询
                cmd.Parameters.AddWithValue("@CommodityName", tb_name.Text);
                cmd.Parameters.AddWithValue("@CommodityPrice", tb_jiaqian.Text);
                cmd.Parameters.AddWithValue("@Stock", tb_kc.Text);
                cmd.Parameters.AddWithValue("@Evaluate",tb_hp.Text);
                cmd.Parameters.AddWithValue("@Version", tb_bb.Text);
                cmd.Parameters.AddWithValue("@Type", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Describe",tb_ms.Text );
                cmd.Parameters.AddWithValue("@Sales",tb_sl.Text);
                cmd.Parameters.AddWithValue("@ImageName", Path.GetFileName(FileUpload1.PostedFile.FileName));
                cmd.Parameters.AddWithValue("@Fashion", cb_lx.Checked);
                cmd.Parameters.AddWithValue("@Recommend", cb_zx.Checked);



                if (cmd.ExecuteNonQuery() > 0)
                {
                    return true;
                }
            }
        }
        return false;
    }
}