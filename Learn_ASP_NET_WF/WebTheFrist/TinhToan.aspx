<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="WebTheFrist.TinhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h3{
            color: blue;
            text-align: center;
        }
        .auto-style1 {
            width: 505px;
            border: 3px solid #000000;
            background-color: #66FFCC;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 36px;
        }
        .btn{
            margin: 5px 15px;
            width: 60px;
            height: 30px;
        }
        .lbl{
            color: blue;
            margin-left: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h3>CHƯƠNG TRÌNH TÍNH TOÁN CƠ BẢN</h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label CssClass="lbl" ID="Label1" runat="server" Text="Nhập số thứ 1:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txts1" runat="server" Width="304px" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label CssClass="lbl" ID="Label2" runat="server" Text="Nhập số thứ 2:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txts2" runat="server" Width="303px" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button CssClass="btn" ID="btnCong" runat="server" Text="Cộng" OnClick="btnCong_Click" />
                        <asp:Button CssClass="btn" ID="btnTru" runat="server" Text="Trừ" OnClick="btnTru_Click" />
                        <asp:Button CssClass="btn" ID="btnNhan" runat="server" Text="Nhân" OnClick="btnNhan_Click" />
                        <asp:Button CssClass="btn" ID="btnChia" runat="server" Text="Chia" OnClick="btnChia_Click" />
                        <asp:Button CssClass="btn" ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click" />
                        

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label CssClass="lbl" ID="Label3" runat="server" Text="KQ:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtKQ" runat="server" Width="303px" Height="30px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
