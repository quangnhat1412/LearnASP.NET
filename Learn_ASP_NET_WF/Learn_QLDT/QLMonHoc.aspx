<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLMonHoc.aspx.cs" Inherits="Learn_QLDT.QLMonHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>QUẢN LÝ MÔN HỌC
    </h2>
    <hr />
    <asp:SqlDataSource ID="sqlmonhoc" runat="server" ConnectionString="<%$ ConnectionStrings:QLDaoTaoConnectionString2 %>" DeleteCommand="DELETE FROM [MonHoc] WHERE [MAMH] = @MAMH" InsertCommand="INSERT INTO [MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (@MAMH, @TENMH, @SOTIET)" SelectCommand="SELECT * FROM [MonHoc]" UpdateCommand="UPDATE [MonHoc] SET [TENMH] = @TENMH, [SOTIET] = @SOTIET WHERE [MAMH] = @MAMH">
        <DeleteParameters>
            <asp:Parameter Name="MAMH" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MAMH" Type="String" />
            <asp:Parameter Name="TENMH" Type="String" />
            <asp:Parameter Name="SOTIET" Type="Byte" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENMH" Type="String" />
            <asp:Parameter Name="SOTIET" Type="Byte" />
            <asp:Parameter Name="MAMH" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div style="width: 100%">
        <div style="margin: 0 auto; width: 70%;">
            <asp:GridView Width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MAMH" DataSourceID="sqlmonhoc" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MAMH" HeaderText="Mã MH" ReadOnly="True" SortExpression="MAMH" />
                    <asp:BoundField DataField="TENMH" HeaderText="Tên MH" SortExpression="TENMH" />
                    <asp:BoundField DataField="SOTIET" HeaderText="Số Tiết" SortExpression="SOTIET" />
                    <asp:CommandField HeaderText="Chức năng" ShowEditButton="true" ButtonType="Button" />
                    <asp:TemplateField HeaderText="Tác vụ">
                        <ItemTemplate>
                            <asp:Button ID="btnxoa" runat="server" Text="Xóa" CommandName="Delete" OnClientClick="return confirm('Bạn có đồng ý xóa nhân viên này không?')" />
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
        <div style="width: 100%; margin-bottom: 20px">
            <h4>THÊM MỚI MÔN HỌC</h4>
            <hr />
            <div class="form-horizontal" style="width: 50%; border: 1px solid black; padding: 20px; margin: 0 auto">
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
                        <asp:Button ID="btThem" runat="server" Text="Thêm" CssClass="btn btn-info" />
                    </div>
                </div>
                <asp:Label ID="lbThongBao" ForeColor="#cc3300" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
