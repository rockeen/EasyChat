<%@ Page Language="C#" AutoEventWireup="true" CodeFile="个人信息.aspx.cs" Inherits="个人信息" %>

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
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" style="z-index: 1; left: 410px; top: 68px; position: absolute; height: 513px; width: 399px">
            <asp:Label ID="Label1" runat="server" Text="个人信息" Font-Bold="True" Font-Size="XX-Large" ForeColor="#9900CC" style="z-index: 1; left: 122px; top: 47px; position: absolute; height: 42px; width: 143px"></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 70px; top: 126px; position: absolute; height: 23px; width: 50px" Text="用户名"></asp:Label>
            <asp:Label ID="Label3" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 73px; top: 183px; position: absolute; height: 38px; width: 54px" Text="等 级"></asp:Label>
            <asp:Label ID="Label4" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 71px; top: 288px; position: absolute; height: 31px; width: 53px" Text="EB余额"></asp:Label>
            <asp:Label ID="Label5" runat="server" ForeColor="Yellow" style="z-index: 1; left: 188px; top: 183px; position: absolute; height: 31px; width: 163px"></asp:Label>
            <asp:Label ID="Label6" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 189px; top: 287px; position: absolute; height: 32px; width: 150px"></asp:Label>
            <asp:Label ID="Label7" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 188px; top: 121px; position: absolute; height: 29px; width: 145px"></asp:Label>
            <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 161px; top: 352px; position: absolute; width: 114px; height: 94px" />
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#4F3146" OnClick="LinkButton1_Click" style="z-index: 1; left: 293px; top: 489px; position: absolute">修改账户信息</asp:LinkButton>
            <asp:Label ID="Label8" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 71px; top: 240px; position: absolute; height: 17px; width: 62px" Text="积  分"></asp:Label>
            <asp:Label ID="Label10" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 188px; top: 236px; position: absolute; height: 31px; width: 95px"></asp:Label>
            <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 792px; top: 410px; position: absolute; height: 35px; width: 94px"></asp:Label>
        </asp:Panel>
        <p>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/image/聊天.png" style="z-index: 1; left: 206px; top: 100px; position: absolute; height: 109px; width: 129px" />
        </p>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/关闭.png" OnClick="ImageButton1_Click" style="z-index: 1; left: 1033px; top: 489px; position: absolute; height: 86px; width: 100px" />
        <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove" style="z-index: 1; left: 876px; top: 71px; position: absolute; height: 335px; width: 316px">
            <asp:Image ID="Image3" runat="server" style="z-index: 1; left: 102px; top: 49px; position: absolute; height: 101px; width: 117px" />
            <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 46px; top: 192px; position: absolute; height: 32px; width: 238px" />
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/K0O4RS3O9EB{ATRMW)B[KLN.png" OnClick="ImageButton2_Click1" style="z-index: 1; left: 105px; top: 255px; position: absolute; height: 34px; width: 103px" />
        </asp:Panel>
    </form>
</body>
</html>
