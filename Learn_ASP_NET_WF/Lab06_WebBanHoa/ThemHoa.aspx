<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ThemHoa.aspx.cs" Inherits="Lab06_WebBanHoa.ThemHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Thêm Hoa
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsdanhmuc" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Loai]"></asp:SqlDataSource>
    <hr />
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-md-2">Danh Mục:</label>
            <div class="col-md-4">
                <asp:DropDownList ID="ddldanhmuc" runat="server" CssClass="form-control" DataSourceID="sdsdanhmuc" DataTextField="tenloai" DataValueField="maloai"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Tên hoa:</label>
            <div class="col-md-4">
                <asp:TextBox ID="txttenhoa" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Giá:</label>
            <div class="col-md-4">
                <asp:TextBox ID="txtgia" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Ngày cập nhật:</label>
            <div class="col-md-4">
                <asp:Calendar ID="cldngaycapnhat" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="300px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Hình:</label>
            <div class="col-md-4">
                <asp:FileUpload ID="fuhinhhoa" runat="server" CssClass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2"></label>
            <div class="col-md-4">
                <asp:Button ID="btThem" runat="server" Text="Thêm Mới" CssClass="btn btn-success" OnClick="btThem_Click" />
                <br/>
                <asp:Label ID="lblthongbao" ForeColor="Red" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
    <hr />
</asp:Content>
