<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckSN.aspx.cs" Inherits="WebTheFrist.CheckSN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h3{
            color:red;
            text-align: center;
        }
        #Calendar1{
            
            margin: 0 auto;
        }
        #calendar{
            color: red;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>CHƯƠNG TRÌNH KIỂM TRA SINH NHẬT</h3>
            <div id="calendar">
                <asp:Label ID="lblToday" runat="server" Text="lblToday"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                <asp:Label ID="lblNS" runat="server" Text=""></asp:Label>
                <br />
                <asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
