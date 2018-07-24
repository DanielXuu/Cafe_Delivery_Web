<%@ Page Language="C#" AutoEventWireup="true" CodeFile="policyForm.aspx.cs" Inherits="policyForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Privacy Policy</title>
    <style>
        body{
            background-image:url(Image/contactBackground.jpg);
        }
        .auto-style3 {
            text-align: center;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
        }
        .auto-style4 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-size: xx-large;
            color: #FFFFFF;
            font-weight: bold;
            text-align: justify;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
    <div class="auto-style4">
    
        PRIVATE POLICY<br />
        <asp:Label ID="Label1" runat="server" BackColor="White" Height="10px" Width="778px"></asp:Label>
            </div>

        <div class="auto-style3">
            <br />
            <br />
            <br />
            <br />
            In order to make your visits to the various channels of Delivery Cafe as <br />
            responsive as possible, we collect information when you visit us online.
            <br />
            To help ensure an enjoyable online experience, we provide this summary of
            <br />
            what information we collect online, and how that information is used.
            <br />
            One section of this privacy policy also addresses what happens
            <br />
            with information we collect on Delivery Cafe pages on social media sites,
            <br />
            such as Facebook, Twitter, et al. (&quot;Social Media Pages&quot;).<br />
&nbsp;This privacy policy statement applies only to the information collected
            <br />
            online through Delivery Cafe microsites or mobile sites (collectively our &quot;Websites&quot;),
            <br />
            via our telephone support lines, our emails, or mobile applications<br />
&nbsp;Delivery provided for download to your mobile device (&quot;Apps&quot;)
            <br />
            that expressly adopt, and display or link to, this policy or through our Social Media Pages
        </div>
    &nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:Button ID="closeButton" runat="server" BackColor="#663300" BorderColor="#FF9900" Font-Bold="True" Font-Italic="False" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Large" ForeColor="#FFFF99" Height="30px" OnClick="Button1_Click" Text="Close" Width="129px" />
        </div>
    </form>
</body>
</html>
