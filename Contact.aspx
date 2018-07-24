<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <style>
        body{
            background-image:url(Image/contactBackground.jpg);
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
            width: 384px;
        }
        .auto-style5 {
            height: 20px;
            text-align: center;
            width: 384px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-size: x-large;
        }
        .auto-style9 {
            font-size: large;
            color: #000000;
        }
        .auto-style10 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style11 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style12 {
            height: 20px;
            text-align: center;
            width: 384px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style6 {
            position: absolute;
            top: 556px;
            left: 1061px;
            z-index: 1;
            width: 140px;
            height: 33px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style7">
    
        <div class="auto-style7">
            <br />
            <span class="auto-style8"><strong>
            <br />
            Contact Us</strong></span><br />
            <br />
            <strong><span class="auto-style9">Reservation Number: 765-760-1199</span></strong><br />
            <br />
            <br />
            <span class="auto-style10">Shop Hours:</span>
            <br />
            <br />
            <span class="auto-style11">Monday - Friday: 9am - 9pm<br />
            </span>
            <br />
            <br />
            <span class="auto-style10">Customer Service Numbers</span><br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">Language&nbsp;&nbsp;&nbsp; Numbers</td>
            </tr>
            <tr>
                <td class="auto-style5">English&nbsp;&nbsp; +17657601111</td>
            </tr>
            <tr>
                <td class="auto-style4">Spanish&nbsp;&nbsp; +17652932244</td>
            </tr>
            <tr>
                <td class="auto-style4">French&nbsp;&nbsp; +17658931231</td>
            </tr>
            <tr>
                <td class="auto-style5">Arabic&nbsp;&nbsp; +17657809312</td>
            </tr>
            <tr>
                <td class="auto-style4">Chinese&nbsp;&nbsp; +17659743252</td>
            </tr>
        </table>
    
    </div>
        <p>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Names="Arial" Font-Size="Large" OnClick="Button1_Click" Text="Go Back &gt;&gt;" />
        </p>
    </form>
</body>
</html>
