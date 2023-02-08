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
        
        .auto-style6 {
            height: 18px;
        }
        .auto-style7 {
            width: 366px;
            height: 18px;
        }
        h2 {
            text-align: center;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style9 {
            width: 366px;
            height: 29px;
        }
        .Error{
            color: red;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="2" style="background-color: lightgreen; color: green">
                        <h2>ĐƠN ĐẶT HÀNG</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Khách Hàng:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtHoTen" runat="server" Width="345px"></asp:TextBox>
                        <br />
                        <asp:Label CssClass="Error" ID="lblLoiTen" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label2" runat="server" Text="Địa Chỉ:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtDC" runat="server" Width="345px"></asp:TextBox>
                        <br />
                        <asp:Label CssClass="Error" ID="lblLoiDC" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="Mã Số Thuế:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtMST" runat="server" Width="345px"></asp:TextBox>
                        <br />
                        <asp:Label CssClass="Error" ID="lblLoiMST" runat="server" Text=""></asp:Label>
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
                        <asp:DropDownList ID="ddldsBanh" runat="server" Height="26px" Width="200px">
                            <asp:ListItem>Hamburger</asp:ListItem>
                            <asp:ListItem>Bánh Bò Nướng</asp:ListItem>
                            <asp:ListItem>Bánh Hột Vịt </asp:ListItem>
                            <asp:ListItem>Bánh Trứng Muối</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Số lượng:"></asp:Label>
                        <asp:TextBox ID="txtSoLuong" runat="server" Width="56px"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="Cái"></asp:Label>
                        <br />
                        <asp:Label CssClass="Error" ID="lblLoi" runat="server"></asp:Label>
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

                        <asp:Button ID="btnIn" runat="server" Text="In Đơn Đặt Hàng" OnClick="btnIn_Click" BackColor="#99FF33" ForeColor="#009900" />

                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3" >
                        <br/> 
                        <asp:Label CssClass="Error" ID="lblThongTin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
