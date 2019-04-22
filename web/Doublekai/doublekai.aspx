<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doublekai.aspx.cs" Inherits="Doublekai_doublekai" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #000904;
            font-size: x-large;
        }
        .style2
        {
            color: #000904;
            font-size: large;
        }
    </style>
</head>
<body bgcolor="#003300">
       
    <div >
        <div style="margin:0 auto; height:300px;width:400px;margin-top:100px;background-color: #808080; text-align: center;" >
        <form id="Form1" runat="server" method="post" style="text-align: center; width: 400px;" >
        <strong><span class="style1" style="color: #904">
        <br />
        </span><span class="style2" style="color: #904; text-align: center;">管理员登录<br />
        <br />
        </span></strong>
            <br />
        <strong><span class="style2" style="color: #904">
        <asp:Label ID="Label1" runat="server" Text="用户名:" Font-Size="13px" 
            style="font-size: small; color: #999999;"></asp:Label>
        </span></strong>
        <asp:TextBox ID="tb_log"
            runat="server" Width="148px" BorderColor="#CCCCCC" 
            BorderWidth="1px" Height="25px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="tb_log" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;<strong><span class="style2" style="color: #904">&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="密 码 :" Font-Size="13px" 
            style="font-size: small; color: #999999;"></asp:Label>
        &nbsp;</span></strong><asp:TextBox ID="tb_pwd"
            runat="server" Width="148px" BorderColor="#CCCCCC" 
            BorderWidth="1px" Height="25px" style="margin-left: 0px" 
            TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="tb_pwd" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<span style=" color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><div 
            style=" width: 367px; margin-left: 0px; margin-right: auto; margin-top: 0; margin-bottom: 0; text-align: center;">
        <asp:Button ID="Button1" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" 
            Height="29px" Text="登录" Width="70px" onclick="Button1_Click1" />
       
        </div>
            </form>
        </div>
    </div>
       
</body>
</html>

