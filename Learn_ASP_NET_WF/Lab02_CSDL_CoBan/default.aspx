<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Lab02_CSDL_CoBan._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center;">DEMO QUẢN LÝ NHÂN VIÊN</h1>
            <div style="width:400px; margin: 0 auto;">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Chức Năng">
                    <div style="padding:20px;">                    
                        <asp:Image ID="Image1" runat="server" ImageUrl="~\Image\logonv.jpg" Height="25px" Width="30px" />
                        <asp:HyperLink ID="hlqlnv" NavigateUrl="~/QLNV.aspx" runat="server">Quản Lý Nhân Viên</asp:HyperLink>
                        <br />
                        <asp:Image ID="Image2" runat="server" ImageUrl="~\Image\logopb.jpg" Height="25px" Width="30px" />
                        <asp:HyperLink ID="hlqlpb" runat="server" NavigateUrl="~/QLPB.aspx">Quản Lý Phòng Ban</asp:HyperLink>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
