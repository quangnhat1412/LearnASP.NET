<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CauChao.aspx.cs" Inherits="WebTheFrist.CauChao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px;
            border: 4px solid #000000;
        }
        .auto-style2 {
            width: 152px;
        }
        .auto-style3 {
            margin-left: 48px;
        }
        .auto-style4 {
            width: 118px;
        }
        #lblCauChao{
            text-align: center;
            color: green;
            

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
        </div>
        <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style4">Nhập họ tên: </td>
                <td>
                    <asp:TextBox ID="txtHoten" runat="server" CssClass="auto-style3" Width="287px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Thay đổi câu chào</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblCauChao" runat="server" Text="Chào Bạn" Width="700px"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
