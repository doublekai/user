<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>
<%@ Register src="footer.ascx" tagname="footer" tagprefix="uc1" %>

<!DOCTYPE html>
<html>
	<head id="Head1" runat="server">
		<script type="text/javascript" src="js/shoppong.js">
		
	</script>
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
                <a href="order_user.aspx" style="text-decoration: none;color:; font-size: 13px;">
                    <asp:Label ID="lb_name" runat="server" Text=""></asp:Label>  男士/女士</a>| 
                 <a  href="index.aspx" style="text-decoration: none;color: ">退出</a>
			</div>
		</div>
		<div class="nav_outer" style=" margin-left:50px; display: inline">
            <asp:Menu ID="Menu1" runat="server" style="text-align: center" 
                BorderStyle="None" Width="100%" >
                <Items>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Products" Value="Products"></asp:MenuItem>
                    <asp:MenuItem Text="Holiday" Value="Holiday"></asp:MenuItem>
                    <asp:MenuItem Text="Flash Sale" Value="Flash Sale"></asp:MenuItem>
                    <asp:MenuItem Text="New Arrivals" Value="New Arrivals"></asp:MenuItem>
                    <asp:MenuItem Text="Best Deals" Value="Best Deals"></asp:MenuItem>
                    <asp:MenuItem Text="Special Offer" Value="Special Offer"></asp:MenuItem>
                    <asp:MenuItem Text="Contact us" Value="Contact us"></asp:MenuItem>
                </Items>
            </asp:Menu>
		</div>
        <div class="wrap" id='wrap'>
  <asp:Image ID="Image1" runat="server" ImageUrl="~/img/log1.jpg" Width="100%" />
<asp:Image ID="Image2" runat="server" ImageUrl="~/img/log2.jpg" Width="100%" 
               />
 

 </div>
 <div class="container">
    <div class="poclist"><Image src="img/prlist.jpg"/></div>
     <div class="poclist"><Image src="img/prlist1.jpg"/></div>
      <div class="poclist"><Image src="img/prlist2.jpg"/></div>
 
 </div>
 <div class="inmt_inpro_wide">
    <div class="inmtl_fl">
       <img src="img/prlist3.jpg">
       </div>
     <div  class="top_title" >  
     <div class="title1" style="vertical-align: inherit; font-size: 30px; font-weight: bold; line-height: 47px; color: #333;">
         什么比较流行
    </div> 
    <div class="title1" ><hr /></div>
    <div class="title2"><asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                <div class="box" style="text-align: center">
               <div style=" height:270px"><img onclick=" window.location.href='order.aspx?id=<%# Eval("CommodityId") %>'" src="img/<%# Eval("ImageName")  %>"  height="250" /></div>
               <div class="box2" style=" margin-bottom:10px"><a href="order.aspx?id=<%# Eval("CommodityId")  %>" style="text-decoration: none"><font style="font-size: 14px; text-align: center; vertical-align: inherit; color: #4CCC76; font-weight: 600; text-transform: uppercase; text-decoration: none;"><%# Eval("CommodityName")  %></font></a>
               </div>
               <div style=" width:60%; margin:0 auto; text-align: center"><font style="color: #333; font-size: 12px; font-family: Arial; font-weight: 300; line-height: 40px;">版本:<%# Eval("Version")  %></font></div>
                 <div><font style="color: #4CCC76; font-size: 14px; font-weight: bold">$<%# Eval("CommodityPrice")  %></font></div>
                </div>
              </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
            
            SelectCommand="SELECT TOP (3) CommodityId, Version, CommodityName, CommodityPrice, Evaluate, ImageName, Fashion FROM Commodity WHERE (Fashion = 'True') ORDER BY Evaluate DESC">
                </asp:SqlDataSource></div>
 </div>
 </div>
 <div class="inmb_wide">
    <div class="Log3_4"><img onclick=" window.location.href='order.aspx?id=<%# Eval("CommodityId") %>'" src="img/log3.jpg" height="320" /></div>
    <div class="Log3_4"><img src="img/log4.jpg" height="320" /></div>
 </div>
 <div class="title_to" style=" margin-top:40px;vertical-align: inherit; font-size: 30px; font-weight: bold; line-height: 47px; color: #333;">
         新到产品
    </div> 
 <div class="title_to"><hr /></div>
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
         SelectCommand="SELECT top(8) CommodityId, CommodityName, CommodityPrice, Recommend, ImageName, Version, Sales FROM Commodity WHERE (Recommend = 'True') ORDER BY Sales DESC">
     </asp:SqlDataSource>

     
 </div>
		
	    <uc1:footer ID="footer1" runat="server" />
        </form>
	</body>
</html>