<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Become Our Member</title>
    <style type="text/css">
        body{
            background-image:url(Image/RegisterBackground.jpg);
        }
        .auto-style1 {
            width: 91%;
        }
        .auto-style3 {
            text-align: right;
            height: 56px;
            color: #FFFFFF;
            font-size: larger;
            font-weight: 700;
            width: 197px;
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
        }
        .textBox {
      
            background-color:#FFFF99;
        }
        .button1 {
            height:32px;
            color:red;
            font-family:'Times New Roman', Times, serif;
            font-size: 18px;
            padding:3px;
            width: 91px;
        }
        .auto-style10 {
            text-align: right;
            color: #FFFFFF;
            font-size: large;
            font-weight: 700;
            height: 60px;
            width: 197px;
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
        }
        .auto-style11 {
            width: 101px;
            height: 60px;
            text-align: center;
        }
        .auto-style12 {
            height: 60px;
            width: 322px;
        }
        .auto-style13 {
            text-align: right;
            color: #FFFFFF;
            font-size: large;
            font-weight: 700;
            height: 59px;
            width: 197px;
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
        }
        .auto-style14 {
            width: 101px;
            height: 59px;
            text-align: center;
        }
        .auto-style15 {
            height: 59px;
            width: 322px;
        }
        .auto-style16 {
            width: 101px;
            height: 56px;
            text-align: center;
        }
        .auto-style17 {
            height: 56px;
            width: 322px;
        }
        .auto-style18 {
            text-align: right;
            color: #FFFFFF;
            font-size: large;
            font-weight: 700;
            height: 61px;
            width: 197px;
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
        }
        .auto-style19 {
            width: 101px;
            height: 61px;
            text-align: center;
        }
        .auto-style20 {
            height: 61px;
            width: 322px;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style24 {
            margin-left: 0px;
        }
        .auto-style25 {
            text-align: justify;
        }
        .auto-style26 {
            height: 42px;
            color: white;
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-size: large;
            padding: 3px;
            width: 91px;
            font-weight: bold;
        }
        .auto-style27 {
            color: #00FFFF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style25">
    <div>
  
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Tw Cen MT" Font-Size="XX-Large" ForeColor="White" Text="BECOME A MEMBER"></asp:Label>
  
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" BackColor="White" Width="700px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
  
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">FIRST NAME</td>
                <td class="auto-style11">
                    <asp:TextBox ID="FnameTextBox" class="textBox" runat="server" BackColor="#FFFF99" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FnameTextBox" ErrorMessage="FirstName Is Requested" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">LAST NAME</td>
                <td class="auto-style14">
                    <asp:TextBox ID="LnameTextBox" class="textBox" runat="server" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LnameTextBox" ErrorMessage="LastName Is Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">USER NAME</td>
                <td class="auto-style16">
                    <asp:TextBox ID="userName" class="textBox" runat="server" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="userName" ErrorMessage="UserName Is Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">EMAIL ADDRESS</td>
                <td class="auto-style14">
                    <asp:TextBox ID="emailTextBox" class="textBox" runat="server" Height="30px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Email Is Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Please Enter a Valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" ForeColor="#FFFF66"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">PASSWORD</td>
                <td class="auto-style11">
                    <asp:TextBox ID="passwordTextBox" class="textBox" runat="server" TextMode="Password" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="Password Is Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="Please Enter at Least 6 Letters with Number" ForeColor="#FFFF66" ValidationExpression="[a-zA-Z]\w{5,17}" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">CONFIRM PASSWORD</td>
                <td class="auto-style19">
                    <asp:TextBox ID="confirmTextBox" class="textBox" runat="server" TextMode="Password" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="confirmTextBox" ErrorMessage="Confirm Password Is Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTextBox" ControlToValidate="confirmTextBox" ErrorMessage="Please Confirm the Same Password" ForeColor="#FFFF66" Font-Bold="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Phone Number</td>
                <td class="auto-style19">
                    <asp:TextBox ID="phoneTextBox" runat="server" CssClass="textBox" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="Phone Number Is Required" Font-Bold="True" ForeColor="#FFFF66"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="Please Enter a Valid Phone Number, Form: 000-0000000" Font-Bold="True" ForeColor="#FFFF66" ValidationExpression="\d{3,4}-\d{7}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">GENDER</td>
                <td class="auto-style19">
                    <asp:TextBox ID="genderTextBox" CssClass="textBox" runat="server" Height="30px" ToolTip="Enter Male or Female"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="genderTextBox" ErrorMessage="Please Enter Your Gender" Font-Bold="True" ForeColor="#FFFF66"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            </table>
&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CheckBox ID="agreeCheckBox" runat="server" Font-Bold="True" Font-Names="Tunga" Font-Size="Large" ForeColor="White" Text="      I agree to the Website Terms of Use and" /> &nbsp;<a href="policyForm.aspx"><span class="auto-style27">Privacy Policy</span></a>
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="checkagreeLabel" runat="server" Font-Bold="True" Font-Names="Trebuchet MS" ForeColor="#FF6666"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="submitButton" class="button1" runat="server" OnClick="submitButton_Click" Text="Become a Member" BackColor="#00CCFF" BorderColor="#006699" CssClass="auto-style24" Font-Bold="True" Font-Italic="False" Font-Names="Trebuchet MS" Font-Size="Large" ForeColor="White" Height="42px" Width="168px" ToolTip="Click Button to Become Our Member" />
                &nbsp;&nbsp;&nbsp;
            <input id="ResetButton" class="auto-style26" type="reset" value="Reset" style="background-color: #003366; color: #FFFFFF"  /></div>
        <p class="auto-style22">
&nbsp;<asp:Label ID="messageLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
        </p>
    </form>
</body>
</html>
