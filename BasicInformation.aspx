<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BasicInformation.aspx.cs" Inherits="BasicInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Information</title>
    <style>
        body{
            background-image:url(Image/thankBackground.jpg);
        }
        .auto-style2 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style3 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            font-weight: normal;
        }
        .auto-style5 {
            width: 213px;
            height: 144px;
            position: absolute;
            top: 80px;
            left: 82px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 335px;
            left: 244px;
            z-index: 1;
            width: 140px;
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span class="auto-style3"><strong>Your Basic Inform</strong><strong class="auto-style4">at</strong></span><span class="auto-style2"><strong>ion is here:<br />
        </strong></span><br />
    </div>
        <asp:GridView ID="gvDisplay" runat="server" OnSelectedIndexChanged="gvDisplay_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style5">
            <AlternatingRowStyle BackColor="White" />
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
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Names="Arial" Font-Size="Large" OnClick="Button1_Click" Text="Go Back &gt;&gt;" />
        </p>
    </form>
</body>
</html>
