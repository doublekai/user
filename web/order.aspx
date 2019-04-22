<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>
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
				<a href="~/index.aspx"><img src="img/head.jpg"></a>
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
        <hr>
        <div class="order"><font style="font-size: 16px; color: #333; font-weight: 300;">当前位置：</font>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
            Font-Size="0.8em" PathDirection="CurrentToRoot" PathSeparator=" : " 
            RenderCurrentNodeAsLink="True">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#666666" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#1C5E55" />
            <RootNodeStyle Font-Bold="True" ForeColor="#1C5E55" />
       
        </asp:SiteMapPath>
       
        </div>
         <div class="show_comm" style=" border:1px groove #808080;">
             
             <asp:Repeater ID="Repeater1" runat="server" 
                     DataSourceID="SqlDataSource1">
                     <ItemTemplate>
                    
                     <div class="show_img"><img src="img/<%# Eval("ImageName")%>" height="500" /></div>
                    <div class="comm">
                     <div class="show_commod" style="text-align: left"><font style="font-family: Arial; font-size: 16px; font-weight: bold; color: #333; line-height: 22px" backcolor="#4CCC76"><%# Eval("CommodityName")%></font>
                     <font style="color: #999; font-size: 12px"><br />版本:<%# Eval("Version")%></font><font style="color: #999; font-size: 12px"><br>库存:<%# Eval("Stock")%></font><font style="color: #999; font-size: 12px"><br>销售数量:<%# Eval("Sales")%></font><font style="color: #333; font-size: 16px; font-weight: bold;"><br><br>好评:<%# Eval("Evaluate")%><div style=" margin-top:10px;">
                        
                     </font><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/pingjia.jpg" 
            onclick="ImageButton1_Click" />
                         </div></div>
                     
                      <div class="clik">
                      
                         <div class="btn"><a href="Pay.aspx" style="padding: 10px; margin: 10px; background-color: #4CCC76; color: #FFFFFF; font-size: 16px; font-family: Arial; font-weight: 300; text-decoration: blink; text-align: center; line-height: 2px; letter-spacing: 5px">+购买</a>
                          </div><div class="btn"><a href="Pay2.aspx" style="padding: 10px; margin: 10px; background-color: #4CCC76; color: #FFFFFF; font-size: 16px; font-family: Arial; font-weight: 300; text-decoration: blink; text-align: center; line-height: 2px;">+加入购物车</a>
                        
                          </div>
                     </div>
                     </div>
                     <div class="miaoshu">
                        <div class="guige" style="text-align: center; font-size: 16px; color: #333; font-weight: bold; line-height: 22px; font-family: Arial;">规 格</div>
                        <div style=" margin-left:25%;  width:55%; text-align: center; font-size: 13px; color: #999; line-height: 20px; font-weight: 300; letter-spacing: 2px;"><%# Eval("Describe")%></div>
                     </div>
                    
                     
                    
                     </ItemTemplate>
             </asp:Repeater>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                     SelectCommand="SELECT [CommodityId], [CommodityName], [Stock],[CommodityPrice], [Version], [ImageName], [Sales], [Describe], [Evaluate] FROM [Commodity] WHERE ([CommodityId] = @CommodityId)">
                     <SelectParameters>
                         <asp:QueryStringParameter Name="CommodityId" QueryStringField="id" 
                             Type="Int32" />
                     </SelectParameters>
                 </asp:SqlDataSource>
             
        </div>
        
        <uc1:footer ID="footer1" runat="server" />
        </form>
          
 </body>
 </html>