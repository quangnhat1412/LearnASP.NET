<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUpLoad.aspx.cs" Inherits="WebTheFrist.ViewUpLoad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:0 auto; width:700px; border: 2px solid #860887">
            <div style="background-color: #860887; text-align:center">
                <asp:LinkButton ID="lbtnUpload" runat="server" ForeColor="White" OnClick="lbtnUpload_Click">Upload tệp tin</asp:LinkButton>
                
                <asp:LinkButton ID="lbtnXemUp" runat="server" ForeColor="White" OnClick="lbtnXemUp_Click">xem các tệp tin đã được Upload</asp:LinkButton>
            </div>
            <asp:MultiView ID="mtvUpXem" runat="server">
                <asp:View ID="vUp" runat="server">
                    <div style="text-align:center; padding:2px" >
                        Chọn tập tin: <asp:FileUpload ID="FileUP" runat="server" /> <br />
                        <asp:Button ID="btnUP" runat="server" Text="Upload" OnClick="btnUP_Click" /> <br />
                        <asp:Label ID="lblthongbao" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                </asp:View>
                <asp:View ID="VXem" runat="server">
                    <div style="padding:10px">
                        <asp:ListBox ID="lstDSF" runat="server" Width="100%" Rows="5">

                        </asp:ListBox>
                    </div>
                </asp:View>
            </asp:MultiView>
            
        </div>
    </form>
</body>
</html>
