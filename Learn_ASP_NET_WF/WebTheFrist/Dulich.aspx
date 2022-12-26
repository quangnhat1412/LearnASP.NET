<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dulich.aspx.cs" Inherits="WebTheFrist.Dulich" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px;
            border: 3px solid #000000;
            background-color: #CCFFFF;
        }
        h2{
            text-align: center;
        }

        .auto-style2 {
            width: 309px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h2>Địa Danh Du Lịch</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Địa danh"></asp:Label>
                    </td>
                    <td>

                        <asp:ListBox ID="lstDiadanh" SelectionMode="Multiple" runat="server" Height="57px" Width="328px" OnSelectedIndexChanged="lstDiadanh_SelectedIndexChanged"></asp:ListBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Tổng số địa danh"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSumdd" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnChon" runat="server" Text="Chọn" OnClick="btnChon_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblDSDD" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
