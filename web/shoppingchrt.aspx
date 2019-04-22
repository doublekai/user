<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shoppingchrt.aspx.cs" Inherits="shoppingchrt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="menu_log2" style=" width:80%; float:left; height:500px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="OrderId" DataSourceID="SqlDataSource1" Width="100%" 
            EmptyDataText="购物车空空如也快去购物吧!">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CsesValidation="False" 
                        CommandName="Delete" Text="删除商品" OnClientClick="if(!confirm('你确定删除吗？'))return false;"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="CommodityId" 
                DataNavigateUrlFormatString="order.aspx?id={0}" DataTextField="CommodityName" 
                HeaderText="商品名称" />
<asp:BoundField DataField="CommodityPrice" DataFormatString="{0:c}" HeaderText="商品价格" 
                SortExpression="CommodityPrice"></asp:BoundField>
<asp:BoundField DataField="Stock" HeaderText="库存量" SortExpression="Stock"></asp:BoundField>
<asp:BoundField DataField="Evaluate" HeaderText="好评" SortExpression="Evaluate"></asp:BoundField>
<asp:BoundField DataField="Version" HeaderText="版本" SortExpression="Version"></asp:BoundField>
<asp:BoundField DataField="Type" HeaderText="类型" SortExpression="Type"></asp:BoundField>
            <asp:CheckBoxField DataField="IfPayment" HeaderText="是否付款" 
                SortExpression="IfPayment" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" 
                        CommandName="Update" Text="付款"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Order] WHERE [OrderId] = @OrderId" 
        
            
            SelectCommand="SELECT [Order].OrderId, [Order].OrderDate, [Order].CommodityId, [Order].UserId, [Order].IfPayment, Commodity.CommodityName, Commodity.CommodityPrice, Commodity.Stock, Commodity.Evaluate, Commodity.Version, Commodity.Type FROM [Order] INNER JOIN Commodity ON [Order].CommodityId = Commodity.CommodityId WHERE ([Order].UserId = @UserId) AND ([Order].IfPayment = 'false')" 
            UpdateCommand="update [Order] set IfPayment='True' WHERE [OrderId] = @OrderId">
        <DeleteParameters>
            <asp:Parameter Name="OrderId" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserId" SessionField="id" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderId" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

