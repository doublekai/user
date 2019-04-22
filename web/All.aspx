<%@ Page Language="C#" AutoEventWireup="true" CodeFile="All.aspx.cs" Inherits="All" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" type="text/css" href="css/shopping.css"/>
</head>
<meta charset="utf-8" />
		<title>Wedding Dress</title>
		<link rel="stylesheet" type="text/css" href="css/shopping.css"/>
	</head>
	<body>
		
		<form id="form1" runat="server">
		
		<div class="head">
			
		</div>
		<hr />
		<div class="wide">
			<div class="logo_fi">
				<a href="index.html"><img src="img/head.jpg"></a>
			</div>
			<div class="logo_input">
				<input type="text"/>&nbsp;
				<button></button>

			</div>
			<div class="right_bar" style="vertical-align: inherit;#999; ">
                <a href="Log.aspx" style="text-decoration: none;color: ">登录</a>|
                 <a  href="Register.aspx" style="text-decoration: none;color: ">注册</a>
			</div>
		</div>
		<div class="nav_outer" style=" margin-left:50px; display: inline">
            <asp:Menu ID="Menu1" runat="server" style="text-align: center" 
                BorderStyle="None" Width="100%" >
                <Items>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/index.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Products" Value="Products" 
                        NavigateUrl="~/All.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Holiday" Value="Holiday"></asp:MenuItem>
                    <asp:MenuItem Text="Flash Sale" Value="Flash Sale"></asp:MenuItem>
                    <asp:MenuItem Text="New Arrivals" Value="New Arrivals"></asp:MenuItem>
                    <asp:MenuItem Text="Best Deals" Value="Best Deals"></asp:MenuItem>
                    <asp:MenuItem Text="Special Offer" Value="Special Offer"></asp:MenuItem>
                    <asp:MenuItem Text="Contact us" Value="Contact us"></asp:MenuItem>
                </Items>
            </asp:Menu>
		</div>

   <div class="title_new">

     
     <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                <div class="box_new" style="text-align: center">
               <div style=" height:270px"><img onclick=" window.location.href='order.aspx?id=<%# Eval("CommodityId") %>'" src="img/<%# Eval("ImageName")  %>"  height="250" /></div>
               <div class="box2" style=" margin-bottom:10px"><a href="order.aspx?id=<%# Eval("CommodityId")  %>" style="text-decoration: none"><font style="font-size: 14px; text-align: center; vertical-align: inherit; color: #4CCC76; font-weight: 600; text-transform: uppercase; text-decoration: none;"><%# Eval("CommodityName")  %></font></a>
               </div>
               <div style=" width:60%; margin:0 auto; text-align: center"><font style="color: #333; font-size: 12px; font-family: Arial; font-weight: 300; line-height: 40px;">版本:<%# Eval("Version")  %></font></div>
                 <div><font style="color: #4CCC76; font-size: 14px; font-weight: bold">$<%# Eval("CommodityPrice")  %></font></div>
                </div>
              </ItemTemplate>
                </asp:Repeater>

     
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         
           SelectCommand="SELECT  CommodityId, CommodityName, CommodityPrice, Recommend, ImageName, Version, Sales FROM Commodity  ORDER BY Sales DESC">
     </asp:SqlDataSource>

     
 </div>
    </form>
</body>
</html>
