<%@ Page Title="" Language="C#" MasterPageFile="~/Doublekai/MasterPage.master" AutoEventWireup="true" CodeFile="user_order.aspx.cs" Inherits="Doublekai_user_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="show_text">
&nbsp;
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="UserId" DataSourceID="SqlDataSource1" Height="50px" 
        Width="100%" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="UserId" HeaderText="用户编号" 
                InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="UserName" HeaderText="用户名" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Age" HeaderText="年龄" 
                SortExpression="Age" />
            <asp:BoundField DataField="Adress" HeaderText="地址" SortExpression="Adress" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="编辑"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="删除" OnClientClick="if(!confirm('你确定删除吗？'))return false;"></asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="更新"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="取消"></asp:LinkButton>
                </EditItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [User] WHERE [UserId] = @UserId" 
        InsertCommand="INSERT INTO [User] ([UserName], [Age], [Adress]) VALUES (@UserName, @Age, @Adress)" 
        SelectCommand="SELECT [UserId], [UserName], [Age], [Adress] FROM [User] WHERE ([UserId] = @UserId)" 
        
        UpdateCommand="UPDATE [User] SET [UserName] = @UserName, [Age] = @Age, [Adress] = @Adress WHERE [UserId] = @UserId">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Adress" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="UserId" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Adress" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

