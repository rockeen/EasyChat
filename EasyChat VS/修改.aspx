<%@ Page Language="C#" AutoEventWireup="true" CodeFile="修改.aspx.cs" Inherits="修改" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Easy Chat</title>
    <link rel="Icon" href="/image/聊天.png" />
</head>
<body style="background-image:url(../image/234.jpg);background-size:cover">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" style="z-index: 1; left: 471px; top: 123px; position: absolute; height: 422px; width: 351px">
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" style="z-index: 1; left: 126px; top: 77px; position: absolute; bottom: 309px" Width="160px"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" Height="30px" style="z-index: 1; left: 126px; top: 259px; position: absolute" Width="160px"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Height="30px"  style="z-index: 1; left: 126px; top: 164px; position: absolute" Width="160px"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 59px; top: 91px; position: absolute; height: 30px; width: 86px" Text="邮  箱"></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="#4F3146" Height="30px" style="z-index: 1; left: 38px; top: 180px; position: absolute" Text="新用户名" Width="80px"></asp:Label>
            <asp:Label ID="Label3" runat="server" ForeColor="#4F3146" Height="30px" style="z-index: 1; left: 47px; top: 275px; position: absolute" Text="新密码" Width="80px"></asp:Label>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/K0O4RS3O9EB{ATRMW)B[KLN.png" OnClick="ImageButton1_Click" style="z-index: 1; left: 113px; top: 342px; position: absolute; height: 36px; width: 116px" />
        </asp:Panel>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/关闭.png" OnClick="ImageButton2_Click" style="z-index: 1; left: 903px; top: 266px; position: absolute; height: 85px; width: 92px" />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/聊天.png" style="z-index: 1; left: 283px; top: 126px; position: absolute; height: 111px; width: 133px" />
    </form>
</body>
</html>
