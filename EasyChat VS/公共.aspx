<%@ Page Language="C#" AutoEventWireup="true" CodeFile="公共.aspx.cs" Inherits="测试" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Easy Chat公共频道</title>
    <meta http-equiv="Refresh" content="10" />
    <link rel="Icon" href="/image/聊天.png" />
</head>
<body  style="background-image:url(../image/234.jpg);background-size:cover">
    <form id="form1" runat="server">
    <div style="height: 619px; width: 1119px">
    
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" style="z-index: 1; left: 94px; top: 38px; position: absolute; height: 588px; width: 798px; margin-left: 194px">
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 27px; top: 368px; position: absolute; height: 140px; width: 510px" TextMode="MultiLine" ForeColor="Black"></asp:TextBox>
            <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove" Height="584px" style="margin-left: 584px; margin-right: 0px">
                <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left: 30px; top: 312px; position: absolute; height: 48px; width: 502px; margin-bottom: 0px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="70px" style="position: relative; top: 21px; left: 41px;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>黑色</asp:ListItem>
                        <asp:ListItem>橙色</asp:ListItem>
                        <asp:ListItem >黄色</asp:ListItem>
                        <asp:ListItem>绿色</asp:ListItem>
                        <asp:ListItem>青色</asp:ListItem>
                        <asp:ListItem>蓝色</asp:ListItem>
                        <asp:ListItem>紫色</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 1px; top: 22px; position: absolute; height: 18px; width: 36px" Text="颜色"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" style="z-index: 1; left: 160px; top: 21px; position: absolute; width: 80px;" Height="20px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                         <asp:ListItem>隶书</asp:ListItem>
                        <asp:ListItem>宋体</asp:ListItem>
                        <asp:ListItem>方正舒体</asp:ListItem>
                        <asp:ListItem>华文行楷</asp:ListItem>
                        <asp:ListItem>幼圆</asp:ListItem>
                        <asp:ListItem>楷体</asp:ListItem>
                        <asp:ListItem>华文彩绘</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 123px; top: 21px; position: absolute; height: 19px; width: 50px" Text="字体"></asp:Label>
                </asp:Panel>
                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" style="z-index: 1; left: 431px; top: 535px; position: absolute; height: 33px; width: 89px" ImageUrl="~/image/发送 (2).png" />
                <asp:ImageButton ID="ImageButton2" runat="server" style="z-index: 1; left: 876px; top: 124px; position: absolute; height: 67px; width: 80px" ImageUrl="~/image/关闭.png" OnClick="ImageButton2_Click" />
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" style="z-index: 1; left: 31px; top: 25px; position: absolute; height: 274px; width: 505px" TextMode="MultiLine"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" ForeColor="#A43E8C" style="z-index: 1; left: 673px; top: 27px; position: absolute; height: 34px; width: 102px; bottom: 527px"></asp:Label>
                <asp:Label ID="Label8" runat="server" ForeColor="#A43E8C" style="z-index: 1; left: 602px; top: 29px; position: absolute; height: 20px; width: 79px" Text="用户名："></asp:Label>
                <asp:Image ID="Image2" runat="server" style="z-index: 1; left: 645px; top: 88px; position: absolute; height: 62px; width: 72px" />
                <asp:Label ID="Label9" runat="server" ForeColor="#A43E8C" style="z-index: 1; left: 604px; top: 52px; position: absolute; height: 26px; width: 76px" Text="积分段："></asp:Label>
                <asp:Label ID="Label11" runat="server" ForeColor="Yellow" style="z-index: 1; left: 674px; top: 52px; position: absolute; height: 24px; width: 115px" Font-Bold="True"></asp:Label>
            </asp:Panel>
        </asp:Panel>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/聊天.png" style="z-index: 1; left: 105px; top: 41px; position: absolute; height: 119px; width: 140px" />
        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#990099" style="z-index: 1; left: 82px; top: 213px; position: absolute; height: 37px; width: 182px" Text="公共聊天室"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" ForeColor="#990099" style="z-index: 1; left: 96px; top: 151px; position: absolute; height: 31px; width: 161px; bottom: 164px" Text="Easy Chat"></asp:Label>
    
        <asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" style="z-index: 1; left: 78px; top: 461px; position: absolute; height: 84px; width: 93px" ImageUrl="~/image/退出.png" />
    
        <asp:Label ID="Label12" runat="server" ForeColor="Red" style="z-index: 1; left: 51px; top: 313px; position: absolute; height: 120px; width: 202px" Font-Bold="True"></asp:Label>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="z-index: 1; left: 896px; top: 212px; position: absolute; height: 280px; width: 169px; margin-left: 0px" AllowSorting="True" CellPadding="4" DataKeyNames="username" ForeColor="#333333" GridLines="None" PageSize="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ImageField DataImageUrlField="tu" HeaderText="头像">
                    <ControlStyle Height="35px" Width="40px" />
                </asp:ImageField>
                <asp:BoundField DataField="username" HeaderText="姓名" SortExpression="username" ReadOnly="True" />
                <asp:BoundField DataField="number" HeaderText="积分" SortExpression="number" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:Label ID="Label13" runat="server" ForeColor="#990099" style="z-index: 1; left: 67px; top: 568px; position: absolute; height: 49px; width: 136px" Text="退出聊天请点击"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:注册信息ConnectionString %>" SelectCommand="SELECT [username], [number], [tu] FROM [zh] WHERE ([zxzt] = @zxzt)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="zxzt" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
