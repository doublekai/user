<%@ Page Title="" Language="C#" MasterPageFile="~/Doublekai/MasterPage.master" AutoEventWireup="true" CodeFile="comm.aspx.cs" Inherits="Doublekai_comm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="show_text">
     <asp:GridView ID="GridView1" runat="server" Width="100%" 
         AutoGenerateColumns="False" 
         DataKeyNames="CommodityId" DataSourceID="SqlDataSource1" Font-Size="12pt" 
            AllowPaging="True" Height="100%" PageSize="5" HorizontalAlign="Left">
         <Columns>
            
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
    <ControlStyle Width="70px" />
    <ItemStyle Width="70px" />
</asp:TemplateField>
             <asp:TemplateField HeaderText="商品编号" InsertVisible="False" 
                 SortExpression="CommodityId">
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("CommodityId") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("CommodityId") %>'></asp:Label>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="商品名称">
                 <EditItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("CommodityName") %>'></asp:Label>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="商品价格" SortExpression="CommodityPrice">
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" 
                         Text='<%# Bind("CommodityPrice", "{0:c}") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CommodityPrice") %>' 
                         Width="50px"></asp:TextBox>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="库存量" SortExpression="Stock">
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Stock") %>' 
                         Width="50px"></asp:TextBox>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="好评" SortExpression="Evaluate">
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("Evaluate") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Evaluate") %>' 
                         Width="50px"></asp:TextBox>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="版本" SortExpression="Version">
                 <ItemTemplate>
                     <asp:Label ID="Label6" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Version") %>'></asp:TextBox>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="类型" SortExpression="Type">
                 <ItemTemplate>
                     <asp:Label ID="Label7" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="描述" SortExpression="Describe">
                 <ItemTemplate>
                     <asp:HyperLink ID="HyperLink1" runat="server" 
                         NavigateUrl='<%# Eval("CommodityId", "commodity.aspx?id={0}") %>' 
                         Text='<%# Eval("CommodityName") %>'></asp:HyperLink>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("Describe") %>'></asp:Label>
                 
                 </ItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("Describe") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Describe") %>' 
                         TextMode="MultiLine"></asp:TextBox>
                 </EditItemTemplate>
                 <FooterStyle Height="100px" />
                 <ItemStyle Font-Size="6pt" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="销售数量" SortExpression="Sales">
                 <ItemTemplate>
                     <asp:Label ID="Label8" runat="server" Text='<%# Bind("Sales") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Sales") %>' 
                         Width="50px"></asp:TextBox>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="图片" SortExpression="ImageName">
                 <ItemTemplate>
                     <asp:Label ID="Label9" runat="server" Text='<%# Bind("ImageName") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ImageName") %>' 
                         Width="70px"></asp:TextBox>
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="是否流行" SortExpression="Fashion">
                 <ItemTemplate>
                     <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Fashion") %>' 
                         Enabled="false" />
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Fashion") %>' 
                         Width="50px" />
                 </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="是否最新" SortExpression="Recommend">
                 <ItemTemplate>
                     <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("Recommend") %>' 
                         Enabled="false" />
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("Recommend") %>' 
                         Width="50px" />
                 </EditItemTemplate>
             </asp:TemplateField>
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         DeleteCommand="DELETE FROM [Commodity] WHERE [CommodityId] = @CommodityId" 
         InsertCommand="INSERT INTO [Commodity] ([CommodityName], [CommodityPrice], [Stock], [Evaluate], [Version], [Type], [Describe], [Sales], [ImageName], [Fashion], [Recommend]) VALUES (@CommodityName, @CommodityPrice, @Stock, @Evaluate, @Version, @Type, @Describe, @Sales, @ImageName, @Fashion, @Recommend)" 
         SelectCommand="SELECT [CommodityId], [CommodityName], [CommodityPrice], [Stock], [Evaluate], [Version], [Type], [Describe], [Sales], [ImageName], [Fashion], [Recommend] FROM [Commodity]" 
         UpdateCommand="UPDATE [Commodity] SET [CommodityName] = @CommodityName, [CommodityPrice] = @CommodityPrice, [Stock] = @Stock, [Evaluate] = @Evaluate, [Version] = @Version, [Type] = @Type, [Describe] = @Describe, [Sales] = @Sales, [ImageName] = @ImageName, [Fashion] = @Fashion, [Recommend] = @Recommend WHERE [CommodityId] = @CommodityId">
         <DeleteParameters>
             <asp:Parameter Name="CommodityId" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="CommodityName" Type="String" />
             <asp:Parameter Name="CommodityPrice" Type="Decimal" />
             <asp:Parameter Name="Stock" Type="Int32" />
             <asp:Parameter Name="Evaluate" Type="Int32" />
             <asp:Parameter Name="Version" Type="String" />
             <asp:Parameter Name="Type" Type="String" />
             <asp:Parameter Name="Describe" Type="String" />
             <asp:Parameter Name="Sales" Type="Int32" />
             <asp:Parameter Name="ImageName" Type="String" />
             <asp:Parameter Name="Fashion" Type="Boolean" />
             <asp:Parameter Name="Recommend" Type="Boolean" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="CommodityName" Type="String" />
             <asp:Parameter Name="CommodityPrice" Type="Decimal" />
             <asp:Parameter Name="Stock" Type="Int32" />
             <asp:Parameter Name="Evaluate" Type="Int32" />
             <asp:Parameter Name="Version" Type="String" />
             <asp:Parameter Name="Type" Type="String" />
             <asp:Parameter Name="Describe" Type="String" />
             <asp:Parameter Name="Sales" Type="Int32" />
             <asp:Parameter Name="ImageName" Type="String" />
             <asp:Parameter Name="Fashion" Type="Boolean" />
             <asp:Parameter Name="Recommend" Type="Boolean" />
             <asp:Parameter Name="CommodityId" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
 </div>
</asp:Content>

