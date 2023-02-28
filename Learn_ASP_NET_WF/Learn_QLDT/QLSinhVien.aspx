<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLSinhVien.aspx.cs" Inherits="Learn_QLDT.QLSinhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>QUẢN LÝ SINH VIÊN</h2>
    <hr />
    <div style="width: 100%; margin-bottom: 20px">
        <h3>Thông tin sinh viên</h3>
        <hr />
        <div class="form-horizontal" style="width: 70%; margin: 0 auto">
            <div class="form-group">
                <label class="control-label col-md-2">Mã sinh viên</label>
                <div class="col-md-2">
                    <asp:TextBox ID="txtMaSV" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-2">Họ sinh viên</label>
                <div class="col-md-2">
                    <asp:TextBox ID="txtHoSv" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <label class="control-label col-md-2">Tên sinh viên</label>
                <div class="col-md-2">
                    <asp:TextBox ID="txtTenSV" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-2">Giới tính</label>
                <div class="col-md-4">
                    <asp:RadioButton ID="rdNam" runat="server" Text="Nam" CssClass="radio-inline" Checked="true"
                        GroupName="GT" />
                    <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" CssClass="radio-inline" GroupName="GT" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-2">Ngày sinh</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtNgaysinh" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                <label class="control-label col-md-2">Nơi sinh</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtNoiSinh" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-2">Địa chỉ</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-2">Chọn khoa</label>
                <div class="col-md-4">
                    <asp:DropDownList ID="ddlMaKhoa" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-2"></label>
                <div class="col-md-4">
                    <asp:Button ID="btThem" runat="server" Text="Thêm Mới" CssClass="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
    <div style="width: 100%; margin-bottom: 20px">
        <div style="width: 80%; margin: 0 auto;">
            <asp:SqlDataSource ID="sqlsinhvien" runat="server" ConnectionString="<%$ ConnectionStrings:QLDaoTaoConnectionString %>" DeleteCommand="DELETE FROM [SinhVien] WHERE [MASV] = @MASV" InsertCommand="INSERT INTO [SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (@MASV, @HOSV, @TENSV, @GIOITINH, @NGAYSINH, @NOISINH, @DIACHI, @MAKH)" SelectCommand="SELECT * FROM [SinhVien]" UpdateCommand="UPDATE [SinhVien] SET [HOSV] = @HOSV, [TENSV] = @TENSV, [GIOITINH] = @GIOITINH, [NGAYSINH] = @NGAYSINH, [NOISINH] = @NOISINH, [DIACHI] = @DIACHI, [MAKH] = @MAKH WHERE [MASV] = @MASV">
                <DeleteParameters>
                    <asp:Parameter Name="MASV" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MASV" Type="String" />
                    <asp:Parameter Name="HOSV" Type="String" />
                    <asp:Parameter Name="TENSV" Type="String" />
                    <asp:Parameter Name="GIOITINH" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="NGAYSINH" />
                    <asp:Parameter Name="NOISINH" Type="String" />
                    <asp:Parameter Name="DIACHI" Type="String" />
                    <asp:Parameter Name="MAKH" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HOSV" Type="String" />
                    <asp:Parameter Name="TENSV" Type="String" />
                    <asp:Parameter Name="GIOITINH" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="NGAYSINH" />
                    <asp:Parameter Name="NOISINH" Type="String" />
                    <asp:Parameter Name="DIACHI" Type="String" />
                    <asp:Parameter Name="MAKH" Type="String" />
                    <asp:Parameter Name="MASV" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvsinhvien" runat="server" AutoGenerateColumns="False" DataKeyNames="MASV" DataSourceID="sqlsinhvien" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MASV" HeaderText="Mã SV" ReadOnly="True" SortExpression="MASV" />
                    <asp:BoundField DataField="HOSV" HeaderText="Họ SV" SortExpression="HOSV" />
                    <asp:BoundField DataField="TENSV" HeaderText="Tên SV" SortExpression="TENSV" />
                    <asp:TemplateField HeaderText="Giới Tính">
                        <ItemTemplate>
                            <asp:Label ID="lblgioitinh" runat="server" Text='<%# (bool)Eval("GioiTinh") == true? "Nam" : "Nữ" %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlgioitinh" runat="server" SelectedValue='<%# Bind("GioiTinh") %>'>
                                <asp:ListItem Value="True">Nam</asp:ListItem>
                                <asp:ListItem Value="False">Nữ</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="NGAYSINH" HeaderText="Ngày Sinh" SortExpression="NGAYSINH" />
                    <asp:BoundField DataField="NOISINH" HeaderText="Nơi Sinh" SortExpression="NOISINH" />
                    <asp:BoundField DataField="DIACHI" HeaderText="Địa chỉ" SortExpression="DIACHI" />
                    <asp:BoundField DataField="MAKH" HeaderText="Mã Khoa" SortExpression="MAKH" />
                    <asp:CommandField HeaderText="Chức năng" ShowEditButton="true" ButtonType="Button"/>
                    <asp:TemplateField HeaderText="Tác vụ">
                        <ItemTemplate>
                            <asp:Button ID="btnxoa" runat="server" Text="Xóa" CommandName="Delete" OnClientClick="return confirm('Bạn có đồng ý xóa nhân viên này không?')"/>
                        </ItemTemplate>
                        <EditItemTemplate>

                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
