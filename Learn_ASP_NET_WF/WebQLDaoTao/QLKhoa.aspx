﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLKhoa.aspx.cs" Inherits="WebQLDaoTao.QLKhoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>QUẢN TRỊ KHOA</h2>
    <hr />
    <h4>THÊM MỚI KHOA</h4>
    <hr/>
    <div class="form-horizontal" style="width:50%">
        <div class="form-group">
            <label class="control-label col-sm-2">Mã khoa:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtMaKH" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Tên khoa</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtTenKH" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="btThem" runat="server" Text="Thêm" CssClass="btn btn-info" OnClick="btThem_Click" />
            </div>
        </div>
        <asp:Label ID="lbThongBao" ForeColor="red" runat="server"
            Text=""></asp:Label>
    </div>
    <div>
        <h4>DANH SÁCH CÁC KHOA</h4>
        <hr/>
        <asp:GridView ID="gvKhoa" DataKeyNames="MaKH" CssClass="table table-bordered" runat="server"
            AutoGenerateColumns="false"
            OnRowDeleting="gvKhoa_RowDeleting"
            OnRowEditing="gvKhoa_RowEditing"
            OnRowCancelingEdit="gvKhoa_RowCancelingEdit"
            OnRowUpdating="gvKhoa_RowUpdating">
            <Columns>
                <asp:BoundField HeaderText="Mã khoa" DataField="MaKH" />
                <asp:BoundField HeaderText="Tên khoa" DataField="TenKH" />
                <asp:TemplateField HeaderText="Chọn tác vụ">
                    <ItemTemplate>
                        <asp:Button ID="btEdit" CommandName="Edit" runat="server"
                            Text="Sửa" CssClass="btn btn-success" />
                        <asp:Button ID="btDelete" CommandName="Delete" runat="server"
                            OnClientClick="return confirm('Bạn có chắc muốn xóa môn học?')" Text="Xóa" CssClass="btn btn-danger" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btUpdate" CommandName="Update" runat="server"
                            Text="Ghi" CssClass="btn btn-primary" />
                        <asp:Button ID="btCancel" CommandName="Cancel" runat="server"
                            Text="Không" CssClass="btn btn-warning" />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#99ccff" />
        </asp:GridView>
    </div>
</asp:Content>
