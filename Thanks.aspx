<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="Thanks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You!</title>
    <style>
        body{
            background-image:url(Image/thankBackground.jpg);
        }
        .auto-style1 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style2 {
            width: 402px;
            height: 187px;
            position: absolute;
            top: 108px;
            left: 77px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="lblMessage" runat="server" Text="Confirm Your Order!" CssClass="auto-style1" Font-Size="XX-Large"></asp:Label>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
        <br class="auto-style1" />
        <asp:GridView ID="gvDisplay" runat="server" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" CssClass="auto-style1" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblTotal" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
    </div>
    </form>
</body>
</html>
