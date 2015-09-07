<%@ Page Language="C#" AutoEventWireup="true" CodeFile="注册.aspx.cs" Inherits="注册" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
         Easy Chat
    </title>
    <link rel="Icon" href="/image/聊天.png" />
</head>
<body style="background-image:url(../image/234.jpg);background-size:cover">
    <form id="form1" runat="server">
    <div style="height: 51px; width: 989px">
    
    </div>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" style="z-index: 1; left: 302px; top: 81px; position: absolute; height: 449px; width: 366px; margin-left: 152px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/聊天.png" style="z-index: 1; left: 38px; top: 20px; position: absolute; height: 81px; width: 97px" />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="方正兰亭超细黑简体" Font-Size="X-Large" style="z-index: 1; left: 154px; top: 47px; position: absolute; height: 38px; width: 164px" Text="Easy Chat"></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 44px; top: 132px; position: absolute; height: 25px; width: 66px" Text="用户名"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 120px; top: 125px; position: absolute; height: 25px; width: 147px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="25px" style="z-index: 1; left: 120px; top: 185px; position: absolute" Width="147px" TextMode="Email"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RFV1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请正确输入用户名" Font-Names="方正兰亭超细黑简体" ForeColor="#4F3142" style="z-index: 1; left: 124px; top: 163px; position: absolute"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" BorderColor="#4F3146" Height="25px" style="z-index: 1; left: 41px; top: 191px; position: absolute" Text="邮 箱" Width="66px" ForeColor="#4F3146"></asp:Label>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请正确输入邮箱" Font-Names="方正兰亭超细黑简体" ForeColor="#4F3142" style="z-index: 1; left: 125px; top: 223px; position: absolute"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" ForeColor="#4F3146" Height="25px" style="z-index: 1; left: 41px; top: 258px; position: absolute" Text="密 码" Width="66px"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="25px" style="z-index: 1; left: 120px; top: 249px; position: absolute" Width="147px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="请正确输入密码" Font-Names="方正兰亭超细黑简体" style="z-index: 1; left: 125px; top: 285px; position: absolute; height: 20px" ForeColor="#644668"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Height="25px" style="z-index: 1; left: 120px; top: 316px; position: absolute" Width="147px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label5" runat="server" ForeColor="#4F3146" Height="25px" style="z-index: 1; left: 37px; top: 319px; position: absolute; margin-top: 3px" Text="确认密码" Width="66px"></asp:Label>
            &nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/4XO5H[{G$E(Y86{KX_SB8%I.png" style="z-index: 1; left: 174px; top: 377px; position: absolute; height: 31px; width: 100px" OnClick="ImageButton1_Click" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="确认密码不一致" Font-Names="方正兰亭超细黑简体" style="z-index: 1; left: 124px; top: 352px; position: absolute" ForeColor="#644668" ControlToCompare="TextBox2"></asp:CompareValidator>
        </asp:Panel>
    </form>
</body>
</html>
