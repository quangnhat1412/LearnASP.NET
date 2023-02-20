<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panels.aspx.cs" Inherits="WebTheFrist.Panels" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
   
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 218px; width: 70%; margin: auto;">
            <asp:Panel ID="PanelFather" GroupingText="Sở thích và nghề nghiệp" runat="server">
                <div style="width: 49%; Height:200px; float:left">
                    <asp:Panel ID="PanelST" GroupingText="Sở thích" runat="server">
                        <asp:CheckBox ID="CheckBox1" runat="server" text="Bóng Đá"/><br/>
                        <asp:CheckBox ID="CheckBox2" runat="server" text="Xem Phim"/><br/>
                        <asp:CheckBox ID="CheckBox3" runat="server" text="Kinh Doanh"/>
                    </asp:Panel>
                </div>
                <div style="width: 49%; Height:200px; float:right">
                    <asp:Panel ID="PanelNN" Height="200px" ScrollBars="Both" GroupingText="Nghề nghiệp" runat="server">
                        <asp:BulletedList ID="btnlNgheNghiep" runat="server">

                        </asp:BulletedList>
                    </asp:Panel>
                </div>
            </asp:Panel>
            <div>
                <asp:CheckBox ID="ChkST" AutoPostBack="true" runat="server" text="Hiển thị sở thích" Checked="true" OnCheckedChanged="ChkST_CheckedChanged"/><br />
                <asp:CheckBox ID="ChkNN" AutoPostBack="true" runat="server" text="Hiển thị nghề nghiệp"  Checked="true"/>
            </div>
        </div>
    </form>
</body>
</html>
