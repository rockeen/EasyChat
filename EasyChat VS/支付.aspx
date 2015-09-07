<%@ Page Language="C#" AutoEventWireup="true" CodeFile="支付.aspx.cs" Inherits="新建" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title> Easy Chat</title>
    <link rel="Icon" href="/image/聊天.png" />
    <style type="text/css">
        
    </style>
</head>
<body style="background-image:url(../image/234.jpg);background-size:cover">
   
    <form id="form2" runat="server" >
       
    <div>
    
    </div>
        <p>
            <asp:Label ID="Label1" runat="server" text="<br/><br/>一.如何进行充值？<br/><br/>一>
               登录EASY CHAT网->点击“进入充值”->扫描二维码->支付宝填备注账号名->邮箱发送充值卡->充值成功。<br/><br/><br/>

二.有几种充值方式？<br/><br/>
EASY CHAT支持以下充值方式<br/><br/>
1、支付宝购买充值卡充值<br/><br/>
2、当面支付<br/><br/>

 
三.充值有什么好处？<br/><br/>
1、为您的账户充值，可以获得私人聊天，建立房间权限。<br/><br/>
2、有钱任性，土豪。<br/>" style="z-index: 1; left: 718px; top: 171px; position: absolute; height: 402px; width: 405px" BorderColor="#993399" BorderStyle="None" ForeColor="Red"></asp:Label>
            <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl="~/image/聊天.png" style="z-index: 1; left: 194px; top: 69px; position: absolute" Width="152px" />
        </p>
        <asp:Label ID="Label2" runat="server" text=" EASY CHAT 充值说明" style="z-index: 1; left: 812px; top: 118px; position: absolute; height: 47px; width: 234px" Font-Size="Larger" ForeColor="Red" Font-Bold="True" ></asp:Label>
        <asp:Label ID="Label4" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 120px; top: 453px; position: absolute; height: 27px; width: 89px" Text="充值卡号："></asp:Label>
        <asp:Label ID="Label5" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 331px; top: 452px; position: absolute; height: 24px; width: 132px; bottom: 164px;" Text="充值卡密码："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 119px; top: 495px; position: absolute; height: 26px; width: 152px; "></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; top: 496px; position: absolute; height: 26px; width: 147px; left: 323px;"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/K0O4RS3O9EB{ATRMW)B[KLN.png" style="z-index: 1; left: 251px; top: 552px; position: absolute; height: 30px; width: 91px" OnClick="ImageButton1_Click" />
        <asp:Label ID="Label6" runat="server" ForeColor="#4F3146" style="z-index: 1; left: 177px; top: 283px; position: absolute; height: 49px; width: 146px" Text="支付宝购买充值卡："></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="http://2.taobao.com/item.htm?id=45491111430&amp;spm=686.1000925.0.0.e0rxz3" style="z-index: 1; left: 333px; top: 282px; position: absolute; height: 23px; width: 144px">购买链接10元</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" style="z-index: 1; left: 335px; top: 323px; position: absolute; height: 17px; width: 107px" PostBackUrl="http://2.taobao.com/item.htm?id=45570417137&amp;spm=686.1000925.0.0.N1KirJ">购买链接50元</asp:LinkButton>
    </form>
</body>
</html>
