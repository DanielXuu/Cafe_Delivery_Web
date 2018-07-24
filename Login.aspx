<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
       <style type="text/css">
        body{
            background-image:url(Image/LoginBackImage.jpg);
        }
        p {
            text-align: center;
        }
        fieldset {
            width: 300px;
            margin: 10% 25% 0 25%;
        }
           .auto-style1 {
               font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
               font-weight: bold;
               color: #0066FF;
           }
           .auto-style2 {
               font-size: x-large;
           }
           .auto-style3 {
               font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
               font-weight: bold;
               font-size: large;
           }
           .auto-style4 {
               color: #FFFFFF;
           }
           .auto-style5 {
               text-align: center;
           }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div class="auto-style5">
        <br/><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <fieldset>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="User Name: " Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="userNameTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password: " Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <legend class="auto-style2">
            <span class="auto-style1">Login</span>
        </legend>
        <p>
            <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" Font-Bold="True" ForeColor="#003366" Height="35px" Width="143px" />
        </p>
        <p>
            <asp:Button ID="registrationButton" runat="server" Text="Create Account" OnClick="registrationButton_Click" Font-Bold="True" ForeColor="#003366" Height="34px" Width="143px" />
        </p>
        <p>
            <span class="auto-style3">
            <a href="forgotPassword.aspx"><span class="auto-style4">Forgot Password?</span></a></span>
            </p>
    </fieldset>
        <br />
        <asp:Label ID="messageLabel" runat="server" Font-Bold="True" Font-Names="Tw Cen MT" Font-Size="X-Large" ForeColor="#FF6666"></asp:Label>
    </div>
    </form>
</body>
</html>
