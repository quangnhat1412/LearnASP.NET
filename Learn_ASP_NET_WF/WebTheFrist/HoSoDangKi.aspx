<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoSoDangKi.aspx.cs" Inherits="WebTheFrist.HoSoDangKi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 845px;
            border:1px solid black;
        }
        .auto-style2 {
            width: 519px;
        }
        .auto-style3 {
            width: 100%;
            border: 2px solid black;
        }
        .auto-style4 {
            width: 180px;
        }
        .auto-style5 {
            width: 180px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style8 {
            width: 180px;
            height: 30px;
        }
        .tieude{
            color: blue;
            padding-left: 150px;
        }
        .tieudee{
            color: blue;
            padding-left: 80px;
        }
        .ktieude{
            background: #FEE4FF;
            border: 2px solid black;
        }
        h2{
            text-align: center;
            color: red;
        }
        .auto-style9 {
            width: 313px;
        }
        .auto-style10 {
            width: 313px;
            height: 30px;
        }
        #cha{
            position:relative;
        }
        #tt{
            position: absolute;
            top: 1px;
            width: 100%;
        }
        .auto-style11 {
            margin-bottom: 19px;
        }
        .auto-style13 {
            height: 26px;
            width: 308px;
        }
        .auto-style14 {
            width: 313px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Hồ Sơ Đăng Kí</h2>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style6 ktieude">
                        <asp:Label ID="Label1" CssClass="tieude" runat="server" Text="Thông tin đăng nhập"></asp:Label>
                    </td>
                    <td class="auto-style6 ktieude">
                        <asp:Label ID="Label2" runat="server" CssClass="tieudee" Text="Thông tin khách hàng"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style4">Tên đăng nhập: </td>
                                <td class="auto-style14">
                                    <asp:TextBox ID="txtTk" runat="server" Width="225px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvtk" runat="server" ErrorMessage="Tên đăng nhập rỗng !" ControlToValidate="txtTk" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revtendk" runat="server" ErrorMessage="Tên đăng nhập không hợp lệ !" ForeColor="Red" ValidationExpression="[\d|\w|!|&|_]{8}[\d|\w|!|&|_]+" ControlToValidate="txtTk">(*)</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Mật khẩu: </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtmk" runat="server" Width="225px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvmk" runat="server" ErrorMessage="Mật khẩu rổng !" ControlToValidate="txtmk" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Nhập lại mật khẩu :</td>
                                <td class="auto-style14">
                                    <asp:TextBox ID="txtnlmk" runat="server" Width="225px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvnlmk" runat="server" ErrorMessage="Nhập lại mật khẩu rổng !" ControlToValidate="txtnlmk" Display="Dynamic" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cvnlmk" runat="server" ErrorMessage="Mật khẩu nhập lại không trùng khớp !" ControlToCompare="txtmk" ControlToValidate="txtnlmk" ForeColor="Red">(*)</asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td rowspan="3" id="cha">
                        <div id="tt">
                            <asp:ValidationSummary ID="vsdsloi" runat="server" ForeColor="Red" HeaderText="Danh sách lỗi" CssClass="auto-style11" />
                            <asp:Label ID="lblthongtin" runat="server" Text=""></asp:Label>
                        </div>
                  
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 ktieude">
                        <asp:Label ID="Label4" CssClass="tieude" runat="server" Text="Thông tin cá nhân"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style4">Họ tên khách hàng:</td>
                                <td class="auto-style9">
                                    <asp:TextBox ID="txthoten" runat="server" Width="225px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTenkh" runat="server" ErrorMessage="Tên khách hàng rỗng !" ControlToValidate="txthoten" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">Ngày sinh:</td>
                                <td class="auto-style10">
                                    <asp:DropDownList ID="ddlns" runat="server" Height="20px" Width="60px">
                                         <asp:ListItem>ngày</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="ddlTs" runat="server" Height="20px" Width="60px">
                                         <asp:ListItem>tháng</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="ddlnams" runat="server" Height="20px" Width="100px">
                                         <asp:ListItem>năm</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Email:</td>
                                <td class="auto-style9">
                                    <asp:TextBox ID="txtEmail" runat="server" Width="225px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email không hợp lệ !" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Thu nhập:</td>
                                <td class="auto-style9">
                                    <asp:TextBox ID="txtthunhap" runat="server" Width="225px"></asp:TextBox>
                                    <asp:RangeValidator ID="rvthunhap" runat="server" ErrorMessage="Thu nhập 1rtr - 50tr" ControlToValidate="txtthunhap" ForeColor="Red" MaximumValue=" 50000000" MinimumValue="1000000" Type="Integer">(*)</asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Giới tính: </td>
                                <td class="auto-style9">
                                    <asp:RadioButtonList ID="rbtgioitinh" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>Nam</asp:ListItem>
                                        <asp:ListItem>Nữ</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Địa chỉ: </td>
                                <td class="auto-style9">
                                    <asp:TextBox ID="txtdiachi" runat="server" Width="225px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvdiachi" runat="server" ErrorMessage="Địa chỉ rỗng !" ControlToValidate="txtdiachi" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Điện thoại:</td>
                                <td class="auto-style9">
                                    <asp:TextBox ID="txtsdt" runat="server" Width="225px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revsdt" runat="server" ErrorMessage="Số điện thoại không hợp lệ !" ControlToValidate="txtsdt" ValidationExpression="0\d{9}" ForeColor="Red">(*)</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Button ID="btndangki" runat="server" Text="Đăng kí" OnClick="btndangki_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
