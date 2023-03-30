<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="Lab06_WebBanHoa.GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Giỏ Hàng</h1>
    <asp:GridView DataKeyNames="masp" ID="gvgiohang" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered" OnRowDeleting="gvgiohang_RowDeleting" OnRowUpdating="gvgiohang_RowUpdating">
        <Columns>
            <asp:ImageField HeaderText="Ảnh Sản Phẩm" DataImageUrlField="hinh" DataImageUrlFormatString="Uploads/Hinh_San_Pham/{0}" ControlStyle-Width="150px"></asp:ImageField>
            <asp:BoundField HeaderText="Tên Sản Phẩm" DataField="tensp" />
            <asp:BoundField HeaderText="Đơn Giá" DataField="dongia" DataFormatString="{0:#,##0 Đ}" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox Width="80px" TextMode="Number" CssClass="form-control text-center" ID="txtsoluong" runat="server" Text='<%# Eval("soluong")%>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Thành Tiền" DataField="thanhtien" DataFormatString="{0:#,##0 Đ}" />
            <asp:CommandField ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="~/Images/delete.gif" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton CommandName="update" ID="ImageButton1" runat="server" ImageUrl="~/Images/disk.gif" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <div class="alert alert-info">Chưa có sản phẩm trong giỏ</div>
        </EmptyDataTemplate>
    </asp:GridView>
    <div class="row">
        <div class="col-md-6">
            <a href="XemHoa.aspx" class="btn btn-danger">Tiếp Tục Mua Hàng</a>
        </div>
        <div class="text-right">
            <asp:Label ID="lbltongthanhtien" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-bottom:10px">
        <div class="col-md-12 text-right">
            <a href="#" class="btn btn-success">Đặt Hàng</a>
        </div>
    </div>

</asp:Content>
