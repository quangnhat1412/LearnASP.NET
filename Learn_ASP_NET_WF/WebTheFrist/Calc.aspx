<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="WebTheFrist.Calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 526px;
        }
        .auto-style2 {
            width: 193px;
        }
        .auto-style3 {
            width: 193px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style1">
                 <tr>
                    <td class="auto-style2">&nbsp; Tính Toán Đơn Giản</td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">Nhập số thứ nhất:</td>
                    <td>
                        <asp:TextBox ID="txt1" runat="server" Width="201px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxt1" runat="server" ControlToValidate="txt1" Display="Dynamic" ErrorMessage="Chưa nhập số thứ 1" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvtxt1" runat="server" ErrorMessage="Số thứ nhất phải là kiểu số" ForeColor="#FF3300" Operator="DataTypeCheck" Type="Double" ControlToValidate="txt1">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nhập số thứ hai
                    </td>
                    <td>
                        <asp:TextBox ID="txt2" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxt2" runat="server" ErrorMessage="Chưa nhập số thứ 2" Display="Dynamic" ForeColor="Red" ControlToValidate="txt2">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvtxt2" runat="server" ErrorMessage="CompareValidator" ForeColor="#FF3300" Operator="DataTypeCheck" Type="Double" ControlToValidate="txt2">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Tổng" OnClick="Button1_Click" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        Kết quả
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtKQ" runat="server" Width="194px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
