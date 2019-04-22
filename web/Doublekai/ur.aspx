<%@ Page Title="" Language="C#" MasterPageFile="~/Doublekai/MasterPage.master" AutoEventWireup="true" CodeFile="ur.aspx.cs" Inherits="Doublekai_ur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="show_text">

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         DataKeyNames="UserId" DataSourceID="SqlDataSource1" Width="100%">
         <Columns>
             <asp:TemplateField ShowHeader="False">
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                         CommandName="Edit" Text="修改用户信息"></asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                         CommandName="Delete" Text="删除用户" OnClientClick="if(!confirm('你确定删除吗？'))return false;"></asp:LinkButton>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                         CommandName="Update" Text="更新"></asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                         CommandName="Cancel" Text="取消"></asp:LinkButton>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="用户编号">
                 <ItemTemplate>
                     <asp:HyperLink ID="HyperLink1" runat="server" 
                         NavigateUrl='<%# Eval("UserId", "user_order.aspx?id={0}") %>' 
                         Text='<%# Eval("UserId") %>'></asp:HyperLink>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="UserName" HeaderText="用户名" 
                 SortExpression="UserName" />
             <asp:BoundField DataField="Age" HeaderText="年龄" 
                 SortExpression="Age" />
             <asp:BoundField DataField="Adress" HeaderText="地址" SortExpression="Adress" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         DeleteCommand="DELETE FROM [User] WHERE [UserId] = @UserId" 
         InsertCommand="INSERT INTO [User] ([UserName], [Age], [Adress]) VALUES (@UserName, @Age, @Adress)" 
         SelectCommand="SELECT [UserId], [UserName], [Age], [Adress] FROM [User]" 
         UpdateCommand="UPDATE [User] SET [UserName] = @UserName, [Age] = @Age, [Adress] = @Adress WHERE [UserId] = @UserId">
         <DeleteParameters>
             <asp:Parameter Name="UserId" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="UserName" Type="String" />
             <asp:Parameter Name="Age" Type="Int32" />
             <asp:Parameter Name="Adress" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="UserName" Type="String" />
             <asp:Parameter Name="Age" Type="Int32" />
             <asp:Parameter Name="Adress" Type="String" />
             <asp:Parameter Name="UserId" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>

 </div>
</asp:Content>

