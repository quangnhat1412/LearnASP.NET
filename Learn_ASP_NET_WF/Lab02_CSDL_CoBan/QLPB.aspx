<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLPB.aspx.cs" Inherits="Lab02_CSDL_CoBan.QLPB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="text-align:center">Quản Lý Phòng Ban</h2>
            <div style="margin: 0 auto; width:300px">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Phòng Ban">
                    <asp:DropDownList ID="ddlphongban" AutoPostBack="True" runat="server" DataSourceID="nvpb" DataTextField="TenPhong" DataValueField="MaPhong" Height="27px" Width="281px">
                        
                    </asp:DropDownList>
                </asp:Panel>
            </div>
            
            <hr />

            <asp:SqlDataSource ID="nvpb" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" SelectCommand="SELECT * FROM [Phong]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="nvtheop" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" SelectCommand="SELECT * FROM [NhanVien] WHERE ([MaPhong] = @MaPhong)" UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlphongban" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
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
            <div style="width:70%; margin:0 auto">
                <asp:GridView ID="gvnvp" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="nvtheop" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="MaNV" HeaderText="MaNV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
                        <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV" />
                        <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV" />
                        <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai" />
                        <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
                        <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
                        <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
                    </Columns>
                    <EmptyDataTemplate>
                        <h2>Phòng này không có nhân viên</h2>
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
