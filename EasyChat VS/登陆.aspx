<%@ Page Language="C#" AutoEventWireup="true" CodeFile="登陆.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    
    <title>
      Easy Chat
  </title>
    <link rel="Icon" href="/image/聊天.png" />
    </head>
<body  style="background-image:url(../image/234.jpg);background-size:cover">
      
    <form id="form1" runat="server">
    <div style="height: 118px; width: 1328px; margin-top: 0px; z-index: 1;">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" style="z-index: 2; left: 434px; top: 100px; position: absolute; height: 422px; width: 374px; margin-right: 0px">
            <asp:Image ID="Image2" runat="server" Height="91px" ImageUrl="~/image/聊天.png" style="z-index: 1; left: 41px; top: 27px; position: absolute" Width="114px" />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="方正兰亭超细黑简体" Font-Size="X-Large" ForeColor="Black" style="z-index: 1; left: 175px; top: 60px; position: absolute; height: 47px; width: 166px" Text="Easy Chat"></asp:Label>
            &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="194px" style="z-index: 1; left: 103px; top: 223px; position: absolute; height: 33px; width: 191px;" Width="35px" TextMode="Password" OnTextChanged="TB_MM_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox1" runat="server" Height="35px" style="z-index: 1; left: 100px; top: 144px; position: absolute" Width="194px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1"   runat="server" Height="39px" ImageUrl="~/image/K0O4RS3O9EB{ATRMW)B[KLN.png" Style="z-index: 1; left: 127px; top: 304px; position: absolute" Width="125px" OnClick="ImageButton1_Click1" />
            <asp:Label ID="Label4" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 28px; top: 158px; position: absolute; height: 35px; width: 77px" Text="用户名"></asp:Label>
            <asp:Label ID="Label5" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 32px; top: 235px; position: absolute; height: 31px; width: 71px; bottom: 156px" Text="密 码"></asp:Label>
            <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#666666" OnClick="LinkButton2_Click" style="z-index: 1; left: 275px; top: 368px; position: absolute; width: 64px">注册账户</asp:LinkButton>
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#666666" OnClick="LinkButton1_Click1" style="z-index: 1; left: 34px; top: 369px; position: absolute">修改账户</asp:LinkButton>
        </asp:Panel>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
