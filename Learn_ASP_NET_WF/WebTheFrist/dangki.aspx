<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangki.aspx.cs" Inherits="WebTheFrist.dangki" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            width: 163px;
        }
        .auto-style3 {
            width: 163px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 163px;
            height: 17px;
        }
        .auto-style6 {
            height: 17px;
        }
        .auto-style7 {
            height: 423px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">

            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="2">&nbsp;ĐĂNG KÍ TÀI KHOẢN</td>
                </tr>
                <tr>
                    <td class="auto-style2">Tên đăng nhập:</td>
                    <td>
                        <asp:TextBox ID="txtTenDN" runat="server" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtendn" runat="server" ErrorMessage="Phải có tên đăng nhập" Display="Dynamic" ControlToValidate="txtTenDN" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mật khẩu: </td>
                    <td>
                        <asp:TextBox ID="txtmk" TextMode="Password" runat="server" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvmk" runat="server" ErrorMessage="Mật khẩu không được bỏ trống" Display="Dynamic" ForeColor="Red" ControlToValidate="txtmk">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nhập lại mậ khẩu</td>
                    <td>
                        <asp:TextBox ID="txtnlmk" TextMode="Password" runat="server" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rsvnlmk" runat="server" ErrorMessage="Mật khẩu nl không được bỏ trống" Display="Dynamic" ControlToValidate="txtnlmk" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="codmknl" runat="server" ErrorMessage="không trùng khớp" ControlToCompare="txtmk" ControlToValidate="txtnlmk" ForeColor="Red">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Tuổi:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtage" runat="server" Width="230px"></asp:TextBox>
                        <asp:RangeValidator ID="rvage" runat="server" ErrorMessage="Tuổi từ 18-60" ControlToValidate="txtage" ForeColor="Red" MaximumValue="60" MinimumValue="18" Type="Integer">(*)</asp:RangeValidator>
<%--                        <asp:CompareValidator ID="codage" runat="server" ControlToValidate="txtage" ErrorMessage="Bạn chưa đủ 18 tuổi" ForeColor="Red" Display="Dynamic" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="18">(*)</asp:CompareValidator> // tuổi phải lớn hơn 18--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtEmail" runat="server" Width="230px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email không hợp lệ " ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Số điện thoại:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtsdt" runat="server" Width="230px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="sdt không hợp lệ " ControlToValidate="txtsdt" ForeColor="Red" ValidationExpression="0\d{9}">(*)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnDK" runat="server" Text="Đăng kí" OnClick="btnDK_Click" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblthongtin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="vsThongbao" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" />                    </td>
                </tr>

            </table>

        </div>
    </form>
</body>
</html>
