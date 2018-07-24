<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-image:url(Image/LoginBackImage.jpg)
        }
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        <br />
        <br />
        <br />
        <br />
    <asp:Label ID="Label1" runat="server" Text="Please enter your user name:" Font-Bold="True" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Large" ForeColor="#003366"></asp:Label>
    
        &nbsp;
        <asp:TextBox ID="tbxUserName" runat="server"></asp:TextBox>
    
        <br />
    
        <br />
    
        <br />
        <asp:Label ID="Label2" runat="server" Text="Please enter your email:" Font-Bold="True" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Large" ForeColor="#003366"></asp:Label>
    
        &nbsp;
        <asp:TextBox ID="tbxEMail" runat="server"></asp:TextBox>
    
        <br />
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxEMail" ErrorMessage="*Please enter a valid email format!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Font-Bold="True" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Large" ForeColor="#003366"/>
        <br />
        <asp:Label ID="firstMessage" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lblNewPassword" runat="server" Text="Please enter your new password:" Visible="false" Font-Bold="True" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Large" ForeColor="#003366"></asp:Label>
        &nbsp;
        <asp:TextBox ID="tbxNewPassword" runat="server" Visible="false" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="lblCheckPassword" runat="server" Text="Please re-enter your new password:" Font-Bold="True" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Large" ForeColor="#003366" Visible="false"></asp:Label>
        &nbsp;
        <asp:TextBox ID="tbxCheckPassword" runat="server" Visible="false" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnChangePassword" Font-Bold="True" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Large" ForeColor="#003366" runat="server" Text="Change password" Visible="false" OnClick="btnChangePassword_Click"/>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
