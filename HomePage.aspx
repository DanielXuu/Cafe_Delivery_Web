<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delivery Cafe</title>
    <link type="text/css" href="menu.css" rel="stylesheet" />
</head>
<body>

    <header class="menu">
        <ul>
            <li><a href="HomePage.aspx">Home Page</a></li>
            <li><a href="Login.aspx">Sign In</a></li>
            <li><a href="Registration.aspx">Become a member</a></li>
            <li><a>User Information</a>
                <ul class="subMenu">
                    <li><a href="BasicInformation.aspx">Customer Information</a></li>
                </ul>
            </li>
            <li><a href="Order.aspx">Make Order</a></li>
        </ul>
    </header>

    <form id="form1" runat="server">
     <div>
        <a name="top"></a>
        <br/><br/><br/>
        <p>
            &nbsp;</p>
    </div>
    <footer class="menu">
        <ul>
            <li><a href="#top">Back to top</a></li>
            <li><a href="Contact.aspx">Contact to us</a></li>
        </ul>
    </footer>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="titleLabel" runat="server" Text="Welcome to Delivery Cafe" Font-Bold="True" Font-Italic="True" Font-Names="Bodoni MT Black" Font-Size="50pt" ForeColor="White" BorderStyle="None"></asp:Label>
        </p>
    </form>
</body>
</html>
