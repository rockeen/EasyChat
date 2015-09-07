<%@ Page Language="C#" AutoEventWireup="true" CodeFile="私密.aspx.cs" Inherits="私密" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title> Easy Chat</title>
    <link rel="Icon" href="/image/聊天.png" />
     <style type="text/css">
         .auto-style2 {
             width: 542px;
             height: 90px;
         }
         .auto-style22 {
             width: 257px;
             height: 90px;
         }
         .auto-style26 {
             width: 542px;
             height: 43px;
         }
         .auto-style27 {
             width: 257px;
             height: 43px;
         }
         .auto-style29 {
             width: 542px;
             height: 52px;
         }
         .auto-style30 {
             width: 257px;
             height: 52px;
         }
         .auto-style31 {
             width: 589px;
             height: 43px;
         }
         .auto-style32 {
             width: 589px;
             height: 90px;
         }
         .auto-style34 {
             width: 589px;
             height: 52px;
         }
         .auto-style35 {
             width: 542px;
             height: 106px;
         }
         .auto-style36 {
             width: 257px;
             height: 106px;
         }
         </style>
</head>

<body style="background-image:url(../image/234.jpg);background-size:cover">
    <form id="form1" runat="server">
    <table style="height: 623px; width: 994px; margin-left: 67px;" >

<tr>
   
   <td class="auto-style26" height: 374px;></td>
   <td class="auto-style27"></td>
   <td class="auto-style31"></td>
   </tr>
<tr>
  
   <td class="auto-style2">
       <asp:Image ID="Image2" runat="server" style="z-index: 1; left: 921px; top: 106px; position: absolute; height: 112px; width: 128px; bottom: 227px" />
       <asp:Image ID="Image3" runat="server" ImageUrl="~/image/聊天.png" style="z-index: 1; left: 105px; top: 67px; position: absolute; height: 108px; width: 110px" />
    </td>
   <td class="auto-style22"><iframe src="s收.aspx" style="height: 345px; width: 508px; margin-top: 0px;margin-right: 0px;"></iframe></td>
   <td class="auto-style32"rowspan="3">
       <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#FF5050" style="z-index: 1; left: 918px; top: 227px; position: absolute; height: 42px; width: 154px" Text="选择聊天对象"></asp:Label>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:注册信息ConnectionString %>" SelectCommand="SELECT [tu], [username] FROM [zh] WHERE ([zxzt] = @zxzt)">
           <SelectParameters>
               <asp:Parameter DefaultValue="1" Name="zxzt" Type="Int32" />
           </SelectParameters>
       </asp:SqlDataSource>
       <asp:SqlDataSource ID="颜色" runat="server" ConnectionString="<%$ ConnectionStrings:注册信息ConnectionString %>" SelectCommand="SELECT [yanse] FROM [zi]"></asp:SqlDataSource>
       <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" style="z-index: 1; left: 902px; top: 65px; position: absolute; height: 509px; width: 166px">
           <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="z-index: 1; left: 25px; top: 203px; position: absolute; height: 291px; width: 118px">
           </asp:RadioButtonList>
       </asp:Panel>
       <asp:SqlDataSource ID="字号" runat="server" ConnectionString="<%$ ConnectionStrings:注册信息ConnectionString %>" SelectCommand="SELECT [zihao] FROM [zi]"></asp:SqlDataSource>
       <asp:SqlDataSource ID="字体" runat="server" ConnectionString="<%$ ConnectionStrings:注册信息ConnectionString %>" SelectCommand="SELECT [ziti] FROM [zi]"></asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:注册信息ConnectionString %>" SelectCommand="SELECT [username] FROM [zh] WHERE ([zxzt] = @zxzt)">
           <SelectParameters>
               <asp:Parameter DefaultValue="1" Name="zxzt" Type="Int32" />
           </SelectParameters>
       </asp:SqlDataSource>
       <asp:SqlDataSource ID="表情" runat="server" ConnectionString="<%$ ConnectionStrings:注册信息ConnectionString %>" SelectCommand="SELECT [bq] FROM [zi]"></asp:SqlDataSource>
    </td>
   </tr>
<tr>
   
   <td class="auto-style29"></td>
   <td class="auto-style30">
       <asp:Label ID="Label2" runat="server" Text="颜色"></asp:Label>
       <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="颜色" DataTextField="yanse" DataValueField="yanse">
       </asp:DropDownList>
       <asp:Label ID="Label3" runat="server" Text=" 字体"></asp:Label>
       <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="字体" DataTextField="ziti" DataValueField="ziti">
       </asp:DropDownList>
       <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 517px; top: 434px; position: absolute; height: 20px; width: 41px" Text="表情"></asp:Label>
       <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="表情" DataTextField="bq" DataValueField="bq" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" style="z-index: 1; left: 556px; top: 434px; position: absolute">
       </asp:DropDownList>
    </td>
   
   </tr>


<tr>
 
   <td class="auto-style35"></td>
   <td class="auto-style36">
        <asp:TextBox ID="TextBox1" runat="server" Height="89px" style="margin-top: 0px" Width="505px"></asp:TextBox>
    </td>
  
   </tr>
<tr>
   
   <td class="auto-style29">&nbsp;</td>
   <td class="auto-style30">
       <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/发送 (2).png" OnClick="ImageButton1_Click" style="z-index: 1; left: 690px; top: 598px; position: absolute; height: 30px; width: 90px" />
       <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/关闭.png" OnClick="ImageButton3_Click" style="z-index: 1; left: 1182px; top: 236px; position: absolute; height: 73px; width: 74px" />
       <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/退出.png" OnClick="ImageButton2_Click" style="z-index: 1; left: 1163px; top: 459px; position: absolute; width: 85px; height: 68px" />
    </td>
   <td class="auto-style34">
       <asp:Label ID="Label6" runat="server" ForeColor="Red" style="z-index: 1; left: 1181px; top: 569px; position: absolute; height: 32px; width: 135px" Text="退出聊天"></asp:Label>
    </td>
    
   </tr>
   </table>
    </form>
</body>
</html>
