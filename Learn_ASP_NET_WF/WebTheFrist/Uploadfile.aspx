<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uploadfile.aspx.cs" Inherits="WebTheFrist.Uploadfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h3{
            text-align: center;
        }
        .auto-style1 {
            width: 500px;
            border: 1px solid #000000;
            background-color: #CCCCCC;
            margin: 0 auto;
        }
        .auto-style4 {
            width: 126px;
            height: 40px;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style6 {
            margin-left: 15px;
        }
        .auto-style7 {
            margin-left: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
             <h3>UPLOAD FILE</h3>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Chọn tệp tin:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:FileUpload ID="FileUP" runat="server" Width="328px" CssClass="auto-style6" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" Width="98px" CssClass="auto-style7" OnClick="btnUpload_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5">
                        <asp:Label ID="lblthongbao" ForeColor="Red" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
             
        </div>
    </form>
</body>
</html>
