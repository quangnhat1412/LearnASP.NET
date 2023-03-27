<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TraCuu.aspx.cs" Inherits="Lab06_WebBanHoa.TraCuu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Tra Cứu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdshoatheogia" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Hoa] WHERE (([Gia] &gt;= @Gia) AND ([Gia] &lt;= @Gia2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtgiatu" Name="Gia" PropertyName="Text" Type="Double" />
            <asp:ControlParameter ControlID="txtden" Name="Gia2" PropertyName="Text" Type="Double" />
        </SelectParameters>
    </asp:SqlDataSource>
   <hr />
    <div class="form-inline text-center" style="padding-top: 10px;">
        Giá từ:
        <asp:TextBox ID="txtgiatu" runat="server" CssClass="form-control"></asp:TextBox>

        Đến:
        <asp:TextBox ID="txtden" runat="server" CssClass="form-control"></asp:TextBox>

        <asp:Button ID="btntracuu" runat="server" Text="Tìm kiếm" CssClass="btn btn-success"/>
    </div>
    <hr />
    <div>
        <div class="data_items">
            <asp:Repeater ID="rptHoa" runat="server" DataSourceID="sdshoatheogia">
                <ItemTemplate>
                    <div class="item">
                        <div class="i">
                            <a href="#">
                                <img src='<%# Eval("Hinh", "Uploads/hinh_san_pham/{0}") %>' />
                            </a>
                        </div>
                        <div class="t">
                            <asp:Label ID="lbltenhoa" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                            <br />
                            Giá:
                            <asp:Label ID="lblgiaban" CssClass="vn" runat="server" Text='<%# Eval("Gia","{0: #,##0 VNĐ}") %>'></asp:Label>
                            <br />
                            <a href="#" class="btn btn-success">Add To Cart
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
