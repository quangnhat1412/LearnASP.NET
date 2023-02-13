
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThongTinCaNhan.aspx.cs" Inherits="WebTheFrist.ThongTinCaNhan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
            border: 3px solid #000000;
            background-color: cyan;
        }
        body{
            color: red;
            font-size: 25px;
        }
        h2{
            text-align: center;
        }
        .auto-style2 {
            height: 32px;
            text-align: left;
        }
        .auto-style3 {
            width: 431px;
        }
        .auto-style4 {
            height: 32px;
            width: 431px;
        }
        #btnDangKi{
            margin: 0 auto;
            color: red;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style7 {
            width: 431px;
            text-align: left;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            text-align: left;
            height: 46px;
        }
        .auto-style10 {
            width: 431px;
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h2>THÔNG TIN CÁ NHÂN</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="Họ và tên:"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtHoten" runat="server" Width="423px" Height="30px" Font-Size="18px" ForeColor="Red" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Giới tính:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="rbtNam" GroupName="GT" runat="server" Text="Nam" OnCheckedChanged="rbtNam_CheckedChanged" />
                        <asp:RadioButton ID="rbtNu" GroupName="GT" runat="server" Text="Nữ"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Ngoại ngữ:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:CheckBox ID="chkAV" runat="server" Text="Anh Văn"/>
                        <asp:CheckBox ID="chkPV" runat="server" Text="Pháp Văn"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Text="Thu Nhập:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:RadioButtonList ID="rbtlistTN" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Dưới 5tr</asp:ListItem>
                            <asp:ListItem>Từ 5-10tr</asp:ListItem>
                            <asp:ListItem>Trên 10tr</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Trình độ:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:RadioButtonList ID="rbtlistTD" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Sau đại học</asp:ListItem>
                            <asp:ListItem>Đại học</asp:ListItem>
                            <asp:ListItem>Cao đẳng</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <asp:Button ID="btnDangKi" runat="server" Text="Đăng Kí" Height="43px" Width="91px" OnClick="btnDangKi_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblThongTin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
