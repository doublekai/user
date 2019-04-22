<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="order_user.aspx.cs" Inherits="order_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="menu_log2" style=" width:80%; float:left; height:500px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
            BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
            DataKeyNames="OrderId,CommodityId" DataSourceID="SqlDataSource1" 
            GridLines="None" PageSize="5" Width="100%" Height="100%" 
                EmptyDataText="没有订单数据！">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="修改地址"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="删除订单" OnClientClick="if(!confirm('你确定删除吗？'))return false;"></asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="取消"></asp:LinkButton>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="OrderId" HeaderText="订单编号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="OrderId" />
                <asp:HyperLinkField DataNavigateUrlFields="CommodityId" 
                    DataNavigateUrlFormatString="order.aspx?id={0}" DataTextField="CommodityName" 
                    HeaderText="商品名称" />
                <asp:BoundField DataField="OrderDate" HeaderText="下单日期" 
                    SortExpression="OrderDate" ReadOnly="True" />
                <asp:BoundField DataField="OrderAdress" HeaderText="派送地址" 
                    SortExpression="OrderAdress" />
                <asp:CheckBoxField DataField="OrderIf" HeaderText="是否派送" ReadOnly="True" 
                    SortExpression="OrderIf" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Order] WHERE [OrderId] = @OrderId" 
            SelectCommand="SELECT [Order].OrderId, [Order].OrderDate, [Order].OrderAdress, [Order].OrderIf, Commodity.CommodityId, [Order].CommodityId AS Expr1, Commodity.CommodityName, [Order].IfPayment FROM [Order] INNER JOIN Commodity ON [Order].CommodityId = Commodity.CommodityId WHERE ([Order].UserId = @UserId) AND ([Order].IfPayment = 'true')" 
            
            
            
                UpdateCommand="UPDATE [Order] SET [OrderAdress] = @OrderAdress WHERE [OrderId] = @OrderId">
            <DeleteParameters>
                <asp:Parameter Name="OrderId" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UserId" SessionField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderAdress" Type="String" />
                <asp:Parameter Name="OrderId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
        <div style=" height:500px; width:100%">
        </div>
</asp:Content>

