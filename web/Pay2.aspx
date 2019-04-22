<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pay2.aspx.cs" Inherits="Pay2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            加入成功！&nbsp; 
            <asp:Button ID="Button1" runat="server" BackColor="#009933" BorderStyle="None" 
                Font-Bold="True" ForeColor="White" Height="30px" onclick="Button1_Click" 
                Text="查看购物车" Width="85px" />
        </p>
    </div>
    </form>
</body>
</html>
