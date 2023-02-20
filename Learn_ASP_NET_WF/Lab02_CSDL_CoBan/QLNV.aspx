<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLNV.aspx.cs" Inherits="Lab02_CSDL_CoBan.QLNV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 6px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Quản Lý Nhân Viên</h2>
            <asp:SqlDataSource ID="dsnv" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
                DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" 
                InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" 
                SelectCommand="SELECT * FROM [NhanVien]" 
                UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV"
             >
                <DeleteParameters>
                    <asp:Parameter Name="MaNV" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HoNV" Type="String" />
                    <asp:Parameter Name="TenNV" Type="String" />
                    <asp:Parameter Name="Phai" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="NgaySinh" />
                    <asp:Parameter Name="NoiSinh" Type="String" />
                    <asp:Parameter Name="MaPhong" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HoNV" Type="String" />
                    <asp:Parameter Name="TenNV" Type="String" />
                    <asp:Parameter Name="Phai" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="NgaySinh" />
                    <asp:Parameter Name="NoiSinh" Type="String" />
                    <asp:Parameter Name="MaPhong" Type="Int32" />
                    <asp:Parameter Name="MaNV" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <hr class="auto-style1" />
            <%--<asp:GridView ID="gvdsnv" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="dsnv" Width="626px">
                <Columns>
                    <asp:BoundField DataField="MaNV" HeaderText="MaNV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
                    <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV" />
                    <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV" />
                    <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai" />
                    <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
                    <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
                    <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
                </Columns>
            </asp:GridView>--%>

            <asp:GridView ID="gvnv" runat="server" DataSourceID="dsnv" AutoGenerateColumns="False" DataKeyNames="MaNV" Width="751px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="250px" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="Mã Nhân Viên" DataField="MaNV" ReadOnly="true"/>
                    <asp:BoundField HeaderText="Họ Nhân Viên" DataField="HoNV" />
                    <asp:BoundField HeaderText="Tên Nhân Viên" DataField="tenNV" />
                    <asp:CheckBoxField HeaderText="Phái" DataField="Phai" />
                    <asp:BoundField HeaderText="Ngày Sinh" DataField="NgaySinh" DataFormatString="{0: dd/MM/yyyy}"/>
                    <asp:BoundField HeaderText="Nơi Sinh" DataField="noisinh" />
                    <asp:BoundField HeaderText="Mã Phòng" DataField="maphong" />

                    <asp:CommandField ShowEditButton="true" ButtonType="Button" ShowDeleteButton="true" DeleteText="Xóa"/>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
