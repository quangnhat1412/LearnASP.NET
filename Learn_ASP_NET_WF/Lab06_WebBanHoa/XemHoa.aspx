<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="Lab06_WebBanHoa.XemHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Xem Hoa
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsloai" runat="server"
        ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" 
        SelectCommand="SELECT * FROM [Loai]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdshoatheoloai" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Hoa] WHERE ([MaLoai] = @MaLoai)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlLoaiHoa" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <hr />
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2">Danh Mục Loại</label>
            <div class="col-md-2">
                <asp:DropDownList ID="ddlLoaiHoa" CssClass="form-control" runat="server" DataSourceID="sdsloai" DataTextField="TenLoai" DataValueField="MaLoai" AutoPostBack="true"></asp:DropDownList>
            </div>
        </div>
    </div>
    <hr />
    <div>
        <%--datalist
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaHoa" DataSourceID="sdshoatheoloai" RepeatColumns="4">
            <ItemTemplate>
                <asp:Image ID="Image1" ImageUrl='<%# Eval("Hinh", "Uploads/hinh_san_pham/{0}") %>' runat="server" />                <br />  
                <asp:Label ID="TenHoaLabel" runat="server" Text='<%# Eval("TenHoa") %>' />
                <br />
                <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
                <br />            
            </ItemTemplate>
        </asp:DataList>--%>
        <div class ="data_items">
        <asp:Repeater ID="rptHoa" runat="server" DataSourceID="sdshoatheoloai">
            <ItemTemplate>
                <div class="item">
                    <div class="i">
                        <a href="#">
                            <img src='<%# Eval("Hinh", "Uploads/hinh_san_pham/{0}") %>'/>
                        </a>
                    </div>
                    <div class="t">
                        <asp:Label ID="lbltenhoa" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                        <br />
                        Giá: <asp:Label ID="lblgiaban" CssClass="vn" runat="server" Text='<%# Eval("Gia","{0: #,##0 VNĐ}") %>'></asp:Label>
                        <br />
                        <%--<a href="#" class="btn btn-success">
                            Add To Cart
                        </a>--%>
                        <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" class="btn btn-success" CommandArgument='<%# Eval("MaHoa") %>' OnClick="btnAddtoCart_Click"/>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        </div>
    </div>
</asp:Content>
