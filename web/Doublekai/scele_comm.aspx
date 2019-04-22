<%@ Page Title="" Language="C#" MasterPageFile="~/Doublekai/MasterPage.master" AutoEventWireup="true" CodeFile="scele_comm.aspx.cs" Inherits="Doublekai_scele_comm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="show_text">
    <asp:Label ID="Label1" runat="server" Text="请输入商品编号:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
    <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="CommodityId" DataSourceID="SqlDataSource1" Height="50px" 
        Width="100%" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="CommodityId" HeaderText="商品编号" 
                InsertVisible="False" ReadOnly="True" SortExpression="CommodityId" />
            <asp:BoundField DataField="CommodityName" HeaderText="商品名称" 
                SortExpression="CommodityName" />
            <asp:BoundField DataField="CommodityPrice" HeaderText="商品价格" 
                SortExpression="CommodityPrice" DataFormatString="{0:c}" />
            <asp:BoundField DataField="Stock" HeaderText="库存量" SortExpression="Stock" />
            <asp:BoundField DataField="Evaluate" HeaderText="好评" 
                SortExpression="Evaluate" />
            <asp:BoundField DataField="Version" HeaderText="版本" 
                SortExpression="Version" />
            <asp:BoundField DataField="Type" HeaderText="类型" SortExpression="Type" />
            <asp:BoundField DataField="Describe" HeaderText="描述" 
                SortExpression="Describe" />
            <asp:BoundField DataField="Sales" HeaderText="销售数量" SortExpression="Sales" />
            <asp:BoundField DataField="ImageName" HeaderText="图片" 
                SortExpression="ImageName" />
            <asp:CheckBoxField DataField="Fashion" HeaderText="是否流行" 
                SortExpression="Fashion" />
            <asp:CheckBoxField DataField="Recommend" HeaderText="是否最新" 
                SortExpression="Recommend" />
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
        DeleteCommand="DELETE FROM [Commodity] WHERE [CommodityId] = @CommodityId" 
        InsertCommand="INSERT INTO [Commodity] ([CommodityName], [CommodityPrice], [Stock], [Evaluate], [Version], [Type], [Describe], [Sales], [ImageName], [Fashion], [Recommend]) VALUES (@CommodityName, @CommodityPrice, @Stock, @Evaluate, @Version, @Type, @Describe, @Sales, @ImageName, @Fashion, @Recommend)" 
        SelectCommand="SELECT * FROM [Commodity] WHERE ([CommodityId] = @CommodityId)" 
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
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="CommodityId" 
                PropertyName="Text" Type="Int32" />
        </SelectParameters>
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

