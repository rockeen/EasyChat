<%@ Page Language="C#" AutoEventWireup="true" CodeFile="私密1.aspx.cs" Inherits="私密1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Easy Chat</title>
    <link rel="Icon" href="/image/聊天.png" />
    <style type="text/css">
        .auto-style1 {
            height: 327px;
        }
    </style>
</head>
<body style="background-image:url(../image/234.jpg);background-size:cover">
    <form id="form1" runat="server">
    <div>
    
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    
    </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#FF3300" style="z-index: 1; left: 531px; top: 70px; position: absolute; width: 296px; height: 28px" Text="私密聊天室使用守则"></asp:Label>
        </p>
    <p>
        &nbsp;</p>
        <p style="height: 181px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table id="table4" border="1" cellpadding="0" cellspacing="0" style="font-family: Simsun; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); width: 900px; z-index: 1; left: 225px; top: 165px; position: absolute; height: 283px;">
                <tr>
                    <td class="auto-style1"><span style="font-size: 14px;">
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 一、进入此页面即为同意开通同意开通私密聊天室功能，并已经扣费10EB成功，即可永久使用私密聊天室功能。<br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 二、用户使用易聊聊天室应以本条例为行为准则，自觉遵守。用户进入易聊聊天室即意味着承诺受本守则约束。<br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 三、易聊聊天室的发布、维护、程序修改由易聊网站负责，易聊聊天室修改或中断服务不需对用户或任何第三方负责。<br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 四、易聊聊天室管理人员依据本守则进行管理，易聊网站对本条例具有最终解释权。<br />
                        <br />
                        <br />
                        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" style="z-index: 1; left: 396px; top: 275px; position: absolute; height: 31px; width: 172px" Text="已阅读并同意本条约" />
                        </span></td>
                </tr>
            </table>
        </p>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/关闭.png" OnClick="ImageButton1_Click" style="height: 89px; width: 96px; z-index: 1; left: 947px; top: 532px; position: absolute" Enabled="False" />
        <p>
            &nbsp;</p>
    </form>
    </body>
</html>
