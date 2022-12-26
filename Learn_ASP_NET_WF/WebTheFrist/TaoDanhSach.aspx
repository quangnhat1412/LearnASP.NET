<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaoDanhSach.aspx.cs" Inherits="WebTheFrist.TaoDanhSach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
            border: 5px solid #00FFFF;
        }
        .auto-style2 {
            width: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h3>Nhập họ và tên:</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtThem" runat="server" Height="34px" Width="302px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnThem" runat="server" Height="38px" Text="Thêm" Width="81px" OnClick="btnThem_Click" />
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:ListBox ID="lstDS" SelectionMode="Multiple" runat="server" Height="222px" Width="442px"></asp:ListBox>
                     </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
