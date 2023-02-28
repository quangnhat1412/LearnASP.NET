<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLKhoa.aspx.cs" Inherits="Learn_QLDT.QLKhoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Quản trị khoa</h2>
    <hr />
    <div style="width: 100%; margin-bottom: 20px">
        <h4>THÊM MỚI KHOA</h4>
        <hr />
        <div class="form-horizontal" style="width: 50%; border: 1px solid black; padding: 20px; margin: 0 auto">
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
                    <asp:Button ID="btThem" runat="server" Text="Thêm" CssClass="btn btn-info" />
                </div>
            </div>
            <asp:Label ID="lbThongBao" ForeColor="#cc3300" runat="server"
                Text=""></asp:Label>
        </div>
    </div>
    <div style="width: 100%; margin-bottom: 20px">
        <div style="width: 50%; margin: 0 auto;">
            <asp:SqlDataSource ID="sqlkhoa" runat="server" ConnectionString="<%$ ConnectionStrings:QLDaoTaoConnectionString %>" DeleteCommand="DELETE FROM [Khoa] WHERE [MAKH] = @MAKH" InsertCommand="INSERT INTO [Khoa] ([MAKH], [TENKH]) VALUES (@MAKH, @TENKH)" SelectCommand="SELECT * FROM [Khoa]" UpdateCommand="UPDATE [Khoa] SET [TENKH] = @TENKH WHERE [MAKH] = @MAKH">
                <DeleteParameters>
                    <asp:Parameter Name="MAKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MAKH" Type="String" />
                    <asp:Parameter Name="TENKH" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TENKH" Type="String" />
                    <asp:Parameter Name="MAKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvkhoa" runat="server" AutoGenerateColumns="False" DataKeyNames="MAKH" DataSourceID="sqlkhoa" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MAKH" HeaderText="Mã KH" ReadOnly="True" SortExpression="MAKH" />
                    <asp:BoundField DataField="TENKH" HeaderText="Tên Khoa" SortExpression="TENKH" />
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
