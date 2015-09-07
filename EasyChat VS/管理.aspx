<%@ Page Language="C#" AutoEventWireup="true" CodeFile="管理.aspx.cs" Inherits="管理" %>

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
        <p>
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#FF5050" style="z-index: 1; left: 535px; top: 42px; position: absolute; height: 53px; width: 356px" Text="管理员页面"></asp:Label>
        </p>
        <p>
&nbsp;</p>
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#3333FF" style="z-index: 1; left: 313px; top: 135px; position: absolute; height: 35px; width: 131px" Text="注册用户"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="注册用户" style="z-index: 1; left: 96px; top: 186px; position: absolute; height: 401px; width: 596px; margin-right: 23px" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="username" PageSize="7">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:ImageField DataImageUrlField="tu" HeaderText="头像">
                      <ControlStyle Height="35px" Width="40px" />
                </asp:ImageField>
                <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" ReadOnly="True" />
                <asp:BoundField DataField="email" HeaderText="邮箱" SortExpression="email" />
                <asp:BoundField DataField="eb" HeaderText="余额" SortExpression="eb" />
                <asp:BoundField DataField="number" HeaderText="积分" SortExpression="number" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="注册用户" runat="server" ConnectionString="<%$ ConnectionStrings:注册信息ConnectionString %>" SelectCommand="SELECT [username], [email], [eb], [number], [tu] FROM [zh]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [zh] WHERE [username] = @original_username AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([eb] = @original_eb) OR ([eb] IS NULL AND @original_eb IS NULL)) AND (([number] = @original_number) OR ([number] IS NULL AND @original_number IS NULL)) AND (([tu] = @original_tu) OR ([tu] IS NULL AND @original_tu IS NULL))" InsertCommand="INSERT INTO [zh] ([username], [email], [eb], [number], [tu]) VALUES (@username, @email, @eb, @number, @tu)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [zh] SET [email] = @email, [eb] = @eb, [number] = @number, [tu] = @tu WHERE [username] = @original_username AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([eb] = @original_eb) OR ([eb] IS NULL AND @original_eb IS NULL)) AND (([number] = @original_number) OR ([number] IS NULL AND @original_number IS NULL)) AND (([tu] = @original_tu) OR ([tu] IS NULL AND @original_tu IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_eb" Type="Int32" />
                <asp:Parameter Name="original_number" Type="Int32" />
                <asp:Parameter Name="original_tu" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="eb" Type="Int32" />
                <asp:Parameter Name="number" Type="Int32" />
                <asp:Parameter Name="tu" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="eb" Type="Int32" />
                <asp:Parameter Name="number" Type="Int32" />
                <asp:Parameter Name="tu" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_eb" Type="Int32" />
                <asp:Parameter Name="original_number" Type="Int32" />
                <asp:Parameter Name="original_tu" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="在线用户" style="z-index: 1; left: 776px; top: 186px; position: absolute; height: 261px; width: 274px" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
                <asp:BoundField DataField="email" HeaderText="邮箱" SortExpression="email" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="在线用户" runat="server" ConnectionString="<%$ ConnectionStrings:注册信息ConnectionString %>" SelectCommand="SELECT [username], [email] FROM [zh] WHERE ([zxzt] = @zxzt)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="zxzt" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/关闭.png" OnClick="ImageButton2_Click" style="z-index: 1; left: 1100px; top: 205px; position: absolute; height: 75px; width: 86px" />
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="#3333FF" style="z-index: 1; left: 852px; top: 128px; position: absolute; height: 36px; width: 135px" Text="在线用户"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
       
    </form>
</body>
</html>
