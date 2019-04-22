<%@ Page Language="C#"  AutoEventWireup="true"  CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register src="footer.ascx" tagname="footer" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #000333;
        }
        #Text1
        {
            height: 29px;
        }
        #Text2
        {
            height: 29px;
        }
        .style3
        {
            color: #ff0000;
        }
        .style5
        {
            color: #555;
        }
        #Text3
        {
            height: 29px;
        }
        #Text4
        {
            height: 29px;
        }
        #Text5
        {
            height: 29px;
        }
        #Text6
        {
            height: 29px;
        }
        #Submit1
        {
            height: 30px;
            width: 147px;
            background-color: #0000CC;
        }
        .style6
        {
            color: #000333;
            text-align: center;
            font-size: x-large;
        }
        #Button1
        {
            color: #FFFFFF;
            background-color: #005AB0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" height: 15px; font-size: large;" >
    <hr style="color: #C0C0C0" />

    </div>
    <p class="style6" style="text-align: center">
        <strong>注册一个新账户</strong></p>
    <hr style="color: #C0C0C0; height: 0px;" />

    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        姓</p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        <asp:TextBox ID="tb_name" runat="server" BorderColor="#CCCCCC" 
            BorderStyle="Ridge" BorderWidth="1px" Height="31px"></asp:TextBox>
    </p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="tb_name" ErrorMessage="请输入姓!" ForeColor="Red" 
            style="font-size: small"></asp:RequiredFieldValidator>
    </p>
    <p class="style1" style="text-align: left; margin-left: 360px">
        <span class="style5">电邮</span><span class="style3">*</span></p>
    <p class="style1" style="text-align: left; margin-left: 360px">
        <asp:TextBox ID="tb_you" runat="server" BorderColor="#CCCCCC" 
            BorderStyle="Ridge" BorderWidth="1px" Height="31px" Width="285px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="tb_you" ErrorMessage="*" ForeColor="Red" 
            style="font-size: large"></asp:RequiredFieldValidator>
    </p>
    <p class="style1" style="text-align: left; margin-left: 360px">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="tb_you" ErrorMessage="您输入的邮箱不正确。" ForeColor="Red" 
            style="font-size: small" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        创建您的密码<span class="style3">*</span></p>
    <p class="style1" style="text-align: left; margin-left: 360px">
        <asp:TextBox ID="tb_pwd" runat="server" BorderColor="#CCCCCC" 
            BorderStyle="Ridge" BorderWidth="1px" Height="31px" TextMode="Password" 
            Width="285px"></asp:TextBox>
    </p>
    <p class="style1" style="text-align: left; margin-left: 360px">
        &nbsp;</p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        确认密码<span class="style3">*</span></p>
    <p class="style1" style="text-align: left; margin-left: 360px">
        <asp:TextBox ID="tb_pwd_to" runat="server" BorderColor="#CCCCCC" 
            BorderStyle="Ridge" BorderWidth="1px" Height="31px" TextMode="Password" 
            Width="285px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="tb_pwd_to" ErrorMessage="*" ForeColor="Red" 
            style="font-size: large"></asp:RequiredFieldValidator>
    </p>
    <p class="style1" style="text-align: left; margin-left: 360px">
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="tb_pwd" ControlToValidate="tb_pwd_to" 
            ErrorMessage="您输入的密码不正确。" ForeColor="Red" style="font-size: small"></asp:CompareValidator>
    </p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        年龄<span class="style3">*</span></p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        <asp:TextBox ID="tb_age" runat="server" BorderColor="#CCCCCC" 
            BorderStyle="Ridge" BorderWidth="1px" Height="31px" Width="285px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="tb_age" ErrorMessage="*" ForeColor="Red" 
            style="font-size: large"></asp:RequiredFieldValidator>
    </p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="tb_age" ErrorMessage="您输入的年龄不正确。" ForeColor="Red" 
            MaximumValue="99" MinimumValue="18" style="font-size: small" Type="Integer"></asp:RangeValidator>
    </p>

    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        收货地址</p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        <asp:TextBox ID="tb_adress" runat="server" BorderColor="#CCCCCC" 
            BorderStyle="Ridge" BorderWidth="1px" Height="31px" Width="287px"></asp:TextBox>
    </p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #555;">
        &nbsp;</p>
    <p class="style1" style="text-align: left; margin-left: 360px; color: #005AB0;">
        &nbsp;<asp:Button ID="Button1" runat="server" BorderColor="#CCCCCC" 
            BorderWidth="1px" Height="33px" Text="创建我的账户" Width="100px" 
            onclick="Button1_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <span style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        »</span><a href="index.aspx" style=" margin-right:170px; color: #0000FF">返回</a><uc1:footer ID="footer1" runat="server" />
    </form>
    
    </body>
</html>
