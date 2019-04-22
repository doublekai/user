using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doublekai_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Session["adminid"] as string;   //获取登录页面传递的对象

        if (String.IsNullOrEmpty(username))        //判断是否有参数
        {
            Response.Redirect("~/Doublekai/doublekai.aspx");
        }
        lb_log.Text = username; 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Session.Abandon();
        Response.Redirect("~/Doublekai/doublekai.aspx");
    }
}
