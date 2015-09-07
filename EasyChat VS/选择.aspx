<%@ Page Language="C#" AutoEventWireup="true" CodeFile="选择.aspx.cs" Inherits="选择" %>

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
        <asp:ImageButton ID="ImageButton1" runat="server" style="z-index: 1; left: 303px; top: 228px; position: absolute; height: 131px; width: 131px" ImageUrl="~/image/公共.png" OnClick="ImageButton1_Click" />
        <asp:ImageButton ID="ImageButton3" runat="server" style="z-index: 1; left: 755px; top: 232px; position: absolute; height: 131px; width: 133px;" ImageUrl="~/image/建立.png" OnClick="ImageButton3_Click" />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#FF5050" style="z-index: 1; left: 658px; top: 56px; position: absolute; height: 67px; width: 422px" Text="欢迎来到 Easy Chat" Font-Bold="True" Font-Names="方正兰亭超细黑简体" Font-Overline="False" Font-Strikeout="False"></asp:Label>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/聊天.png" style="z-index: 1; left: 210px; top: 17px; position: absolute; height: 123px; width: 142px" />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#9900FF" style="z-index: 1; left: 317px; top: 373px; position: absolute; height: 33px; width: 102px" Text="公共聊天室" Font-Names="黑体"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#9900FF" style="z-index: 1; left: 777px; top: 370px; position: absolute; height: 29px; width: 96px" Text="私人聊天室" Font-Names="黑体"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="#9900FF" style="z-index: 1; left: 905px; top: 536px; position: absolute; height: 71px; width: 378px"></asp:Label>
        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/image/关闭.png" OnClick="ImageButton4_Click" style="z-index: 1; left: 1113px; top: 165px; position: absolute; height: 81px; width: 84px" />
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FF5050" OnClick="LinkButton1_Click" style="z-index: 1; left: 288px; top: 541px; position: absolute; height: 35px; width: 170px">EB充值链接</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="方正兰亭超细黑简体" Font-Size="XX-Large" ForeColor="#666666" OnClick="LinkButton2_Click" style="z-index: 1; left: 398px; top: 55px; position: absolute; height: 63px; width: 225px"></asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#FF5050" OnClick="LinkButton3_Click" style="z-index: 1; left: 535px; top: 542px; position: absolute">管理员登陆</asp:LinkButton>
    </form>
</body>
</html>
