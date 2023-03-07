<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLMonHoc.aspx.cs" Inherits="WebQLDaoTao.QLMonHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>QUẢN LÝ MÔN HỌC</h2>
    <hr />
    <div class="row">
        <%--<div class="col-md-4">
        </div>--%>
        <div class="col-md-8">
            <h4>DANH SÁCH MÔN HỌC</h4>
            <div style="margin: 0 auto;">
                <asp:GridView CssClass="table table-bordered" ID="gvMonhoc" runat="server" AutoGenerateColumns="false" DataKeyNames="MaMH"
                    OnRowEditing="gvMonhoc_RowEditing"
                    OnRowCancelingEdit="gvMonhoc_RowCancelingEdit"
                    OnRowUpdating="gvMonhoc_RowUpdating"
                    OnRowDeleting="gvMonhoc_RowDeleting"
                    AllowPaging="true" PageSize="5"
                    OnPageIndexChanging="gvMonhoc_PageIndexChanging"
                    >           
                    <Columns>
                        <asp:BoundField HeaderText="Mã môn học" DataField="MaMH" />
                        <asp:BoundField HeaderText="Tên môn học" DataField="TenMH" />
                        <asp:BoundField HeaderText="Số tiết" DataField="SoTiet" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btEdit" CommandName="Edit" runat="server" Text="Sửa"
                                    CssClass="btn btn-success" />
                                <asp:Button ID="btDelete" CommandName="Delete" runat="server"
                                    OnClientClick="return confirm('Bạn có chắc muốn xóa môn học?')" Text="Xóa" CssClass="btn btn-danger"/>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btUpdate" CommandName="Update" runat="server"
                                    Text="Ghi" CssClass="btn btn-success" />
                                <asp:Button ID="btCancel" CommandName="Cancel" runat="server"
                                    Text="Không" CssClass="btn btn-danger" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#003399" ForeColor="#ffffff" />
                </asp:GridView>
            </div>
        </div>
    </div>
    <h4>THÊM MỚI MÔN HỌC</h4>
    <hr />
    <div class="form-horizontal" style="width:50%">
        <div class="form-group">
            <label class="control-label col-sm-2">Mã môn:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtMaMH" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Tên môn</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtTenMH" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Số tiết</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtSoTiet" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="btThem" runat="server" Text="Thêm" CssClass="btn btn-info" OnClick="btThem_Click" />
            </div>
        </div>
        <asp:Label ID="lbThongBao" ForeColor="Red" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
