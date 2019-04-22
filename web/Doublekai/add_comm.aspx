<%@ Page Title="" Language="C#" MasterPageFile="~/Doublekai/MasterPage.master" AutoEventWireup="true" CodeFile="add_comm.aspx.cs" Inherits="Doublekai_add_comm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="show_text" style="text-align: left">


    <br />



    <asp:Label ID="Label1" runat="server" Text="商品名称:"></asp:Label>
     <asp:TextBox ID="tb_name" runat="server" BorderColor="#999999" 
        BorderStyle="Outset" BorderWidth="1px" Height="29px" Width="176px"></asp:TextBox>
     &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="tb_name" ErrorMessage=" *" ForeColor="Red"></asp:RequiredFieldValidator>
     <br />
    <br />
     <asp:Label ID="Label2" runat="server" Text="商品价格:"></asp:Label>
            <asp:TextBox ID="tb_jiaqian" runat="server" BorderColor="#999999" 
        BorderStyle="Outset" BorderWidth="1px" Height="25px" Width="60px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="tb_jiaqian" ErrorMessage=" *" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
      <asp:Label ID="Label3" runat="server" Text="库 存 量 :"></asp:Label>
            <asp:TextBox ID="tb_kc" runat="server" BorderColor="#999999" 
        BorderStyle="Outset" BorderWidth="1px" Height="25px" Width="60px"></asp:TextBox>
    <br />
    <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text=" 好   评    :"></asp:Label>
        &nbsp;<asp:TextBox ID="tb_hp" runat="server" BorderColor="#999999" 
        BorderStyle="Outset" BorderWidth="1px" Height="25px" Width="60px"></asp:TextBox>
    <br />
&nbsp;<br />
&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="版本:"></asp:Label>
         <asp:TextBox ID="tb_bb" runat="server" BorderColor="#999999" 
        BorderStyle="Outset" BorderWidth="1px" Height="29px" Width="176px"></asp:TextBox>
    <br />
    <br />
&nbsp;<asp:Label ID="Label6" runat="server" Text="类型:"></asp:Label>
          <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>无线耳机</asp:ListItem>
              <asp:ListItem>耳机</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;<br />
          <asp:Label ID="Label7" runat="server" Text="描述:"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_ms" runat="server" BorderColor="#999999" 
        BorderStyle="Outset" BorderWidth="1px" Height="65px" TextMode="MultiLine" 
        Width="176px"></asp:TextBox>
    <br />
    <br />
           <asp:Label ID="Label8" runat="server" Text="销售数量:"></asp:Label>
            <asp:TextBox ID="tb_sl" runat="server" BorderColor="#999999" 
        BorderStyle="Outset" BorderWidth="1px" Height="25px" Width="60px"></asp:TextBox>
    <br />
    <br />
            <asp:Label ID="Label9" runat="server" Text="上传图片:"></asp:Label>
             <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="FileUpload1" ErrorMessage=" *" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
             <asp:Label ID="Label10" runat="server" Text="是否流行:"></asp:Label>
              <asp:CheckBox ID="cb_lx" runat="server" />
&nbsp;
              <asp:Label ID="Label11" runat="server" Text="是否最新:"></asp:Label>

    <asp:CheckBox ID="cb_zx" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="bt_add" runat="server" Text="添加" BorderStyle="None" 
        Height="30px" Width="67px" onclick="bt_add_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Button1" 
        style="border-style: none; border-width: 1px; height: 31px; width: 66px;" 
        type="reset" value="重置" onclick="return Button1_onclick()" />
</div>
    <script language="javascript" type="text/javascript">
// <![CDATA[


        function Button1_onclick() {

        }

// ]]>
    </script>
</asp:Content>

