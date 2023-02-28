<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLSinhVien.aspx.cs" Inherits="WebQLDaoTao.QLSinhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>QUẢN LÝ SINH VIÊN</h2>
    <hr />
    <div class="form-horizontal">
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
                <asp:Button ID="btThem" runat="server" Text="Thêm Mới" CssClass="btn btn-success" OnClick="btThem_Click"/>
                <br/>
                <asp:Label ID="lblthongbao" ForeColor="Red" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
    <div >
        <asp:GridView ID="gvSinhvien" DataKeyNames="Masv"
            OnRowEditing="gvSinhvien_RowEditing"
            OnRowDataBound="gvSinhvien_RowDataBound"
            OnRowUpdating="gvSinhvien_RowUpdating"
            OnRowCancelingEdit="gvSinhvien_RowCancelingEdit"
            OnRowDeleting="gvSinhvien_RowDeleting"
            OnPageIndexChanging="gvSinhvien_PageIndexChanging"
            AllowPaging="True" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" CellPadding="3" PageSize="10" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="masv" HeaderText="Mã SV" />
                <asp:BoundField DataField="hosv" HeaderText="Họ SV" />
                <asp:BoundField DataField="tensv" HeaderText="Tên SV" />
                <asp:CheckBoxField DataField="gioitinh" HeaderText="Giới tính" />
                <asp:BoundField DataField="ngaysinh" HeaderText="ngày sinh" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="noisinh" HeaderText="Nơi sinh" />
                <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" />
                <asp:TemplateField HeaderText="Mã khoa">
                    <ItemTemplate>
                        <asp:Label ID="lbMakh" runat="server" Text='<%# Eval("Makh") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlKhoa" runat="server"></asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Chọn tác vụ">
                    <ItemTemplate>
                        <asp:Button ID="btEdit" CommandName="Edit" runat="server" Text="Sửa" CssClass="btn btnsuccess" />
                        <asp:Button ID="btDelete" CommandName="Delete" runat="server" OnClientClick="return confirm('Bạn có chắc muốn xóa sinh viên này?')"
                            Text="Xóa" CssClass="btn btn-danger" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btUpdate" CommandName="Update" runat="server" Text="Ghi" CssClass="btn btnprimary" />
                        <asp:Button ID="btCancel" CommandName="Cancel" runat="server" Text="Không" CssClass="btn btn-warning" />
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
</asp:Content>
