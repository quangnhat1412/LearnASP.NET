<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="WebQLDaoTao.DoiMatKhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
        .auto-style2 {
            width: 182px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Mật khẩu cũ:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtmkc" runat="server" Width="395px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Mật khẩu mới:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="395px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Nhập mật khẩu mới:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="395px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btndoimk" runat="server" Text="Đổi mật Khẩu" Height="40px" Width="130px" OnClick="btndoimk_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
