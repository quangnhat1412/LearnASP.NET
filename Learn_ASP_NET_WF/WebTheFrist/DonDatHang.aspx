<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="WebTheFrist.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
            border: 3px solid #66FF33;
        }
        .auto-style2 {
            width: 366px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 366px;
            height: 23px;
        }
        #txtSoLuong{
            margin: 2px 5px
        }
        .auto-style5 {
            text-align: center;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h2>ĐƠN ĐẶT HÀNG</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Khách Hàng:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtHoTen" runat="server" Width="351px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Địa Chỉ:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDC" runat="server" Width="349px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Mã Số Thuế:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMST" runat="server" Width="348px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Chọn Các Loại Bánh Sau:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Text="Danh Sách Bánh Được Đặt:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5 khung">
                        <asp:DropDownList ID="ddldsBanh" runat="server" Height="27px" Width="178px">
                            <asp:ListItem>Hamburger</asp:ListItem>
                            <asp:ListItem>Bánh Bông Lan Trứng Muối</asp:ListItem>
                            <asp:ListItem>Bánh Mì Bơ Sữa </asp:ListItem>
                            <asp:ListItem>Bánh Crep Sầu Riêng</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label6" runat="server" Text="Số lượng:"></asp:Label>
                        <asp:TextBox ID="txtSoLuong" runat="server" Width="87px"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="Cái"></asp:Label>
                        <br />
                        <asp:Label ID="lblLoi" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="btnThem" runat="server" Text=">>>" OnClick="btnThem_Click" />
                    </td>
                    <td class="auto-style2 khung">
                        <asp:ListBox Width="90%" Height="100px" ID="lstBanh" runat="server" SelectionMode="Multiple"></asp:ListBox>
                        <asp:ImageButton ImageUrl="~/Img/Delete.png" Width="30px" ID="btnDelete" runat="server" OnClick="btnDelete_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5">

                        <asp:Button ID="btnIn" runat="server" Text="In Đơn Đặt Hàng" OnClick="btnIn_Click" />

                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3" >
                        <asp:Label ID="lblThongTin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
