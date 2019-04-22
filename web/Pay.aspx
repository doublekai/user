<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pay.aspx.cs" Inherits="Pay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" 
        
        style="font-size: 60px; color: #333; font-weight: bold; text-align: center; margin-left: 40px;">
        <p style="margin-left: 240px">
            购买成功！&nbsp; 
            <asp:Button ID="Button1" runat="server" BackColor="#009933" BorderStyle="None" 
                Font-Bold="True" ForeColor="White" Height="30px" onclick="Button1_Click" 
                Text="查看订单" Width="85px" />
        </p>
    </div>
   <div style=" margin-left:25%; width:50%; height:100%;text-align: center;"> <asp:Image ID="Image1" 
           runat="server" Height="500px" 
        ImageUrl="~/img/meny.jpg"/>
        </div>
    </form>
</body>
</html>
