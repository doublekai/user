<%@ Page Title="" Language="C#" MasterPageFile="~/Doublekai/MasterPage.master" AutoEventWireup="true" CodeFile="No_order.aspx.cs" Inherits="Doublekai_No_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="show_text">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="OrderId" DataSourceID="SqlDataSource1" 
        Width="100%">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="编辑"></asp:LinkButton>
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
            <asp:TemplateField HeaderText="商品名称">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("Expr1", "commodity.aspx?id={0}") %>' 
                        Text='<%# Eval("CommodityName") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="用户编号">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl='<%# Eval("UserId", "user_order.aspx?id={0}") %>' 
                        Text='<%# Eval("UserId") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="OrderDate" HeaderText="下单时间" 
                SortExpression="OrderDate" />
            <asp:BoundField DataField="OrderAdress" HeaderText="派送地址" 
                SortExpression="OrderAdress" />
            <asp:CheckBoxField DataField="OrderIf" HeaderText="是否派送" 
                SortExpression="OrderIf" />
        </Columns>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Order]  where OrderId=@OrderId" 
            SelectCommand="SELECT [Order].OrderId, [Order].OrderDate, [Order].OrderAdress, [Order].OrderIf, [Order].CommodityId AS Expr1, Commodity.CommodityName, [Order].UserId FROM [Order] INNER JOIN Commodity ON [Order].CommodityId = Commodity.CommodityId 
where [Order].OrderIf='False'" 
            
            
            
        UpdateCommand="UPDATE [Order] SET [OrderDate] = @OrderDate, [OrderAdress] = @OrderAdress, [OrderIf] = @OrderIf 
where OrderId=@OrderId
">
            <DeleteParameters>
                <asp:Parameter Name="OrderId" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="OrderAdress" Type="String" />
                <asp:Parameter Name="OrderIf" Type="Boolean" />
                <asp:Parameter Name="OrderId" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>

