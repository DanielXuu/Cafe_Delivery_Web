<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order</title>
      <style>
          body{
              background-image:url(Image/OrderBackground.jpg);
          }
          
          .auto-style1 {
              width: 295px;
              height: 387px;
              position: absolute;
              left: 277px;
              top: 352px;
          }
          
          .auto-style2 {
              position: absolute;
              top: 750px;
              left: 10px;
          }
          .auto-style3 {
              position: absolute;
              top: 672px;
              left: 638px;
              z-index: 1;
          }
          
    </style>
</head>
  
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="XX-Large" Text="MAKE A ORDER"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" BackColor="#CC6600" Height="10px" Width="710px"></asp:Label>
        
        <br />
        <br />
        
        <br />
        
    </div>
    <div>
        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Trebuchet MS" Font-Size="XX-Large" Text="Step1: " Font-Bold="True" ForeColor="#009900"></asp:Label>
    
        &nbsp;<asp:DropDownList ID="ddlSize" runat="server" AutoPostBack="True" Font-Size="XX-Large">
            <asp:ListItem>--Select Size--</asp:ListItem>
            <asp:ListItem Value="5">Small</asp:ListItem>
            <asp:ListItem Value="6">Medium</asp:ListItem>
            <asp:ListItem Value="7">Large</asp:ListItem>
            <asp:ListItem Value="9">Extra-Large</asp:ListItem>
        </asp:DropDownList><br/><br/>
    
        &nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label4" runat="server"  Font-Names="Trebuchet MS"  Font-Size="XX-Large" Text="Step2: " Font-Bold="True" Visible="False" ForeColor="#009900"></asp:Label>
    
        <asp:DropDownList ID="ddlStyle" runat="server" AutoPostBack="True" Font-Size="XX-Large" Visible="false">
            <asp:ListItem>--Select Style--</asp:ListItem>
            <asp:ListItem Value="Regular">Regular Coffee</asp:ListItem>
            <asp:ListItem Value="Latte">Latte</asp:ListItem>
            <asp:ListItem Value="Cappuccino">Cappuccino</asp:ListItem>
            <asp:ListItem Value="Frozen Coffee">Frozen Coffee</asp:ListItem>
            <asp:ListItem>Mocha</asp:ListItem>
        </asp:DropDownList>
    
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Step4: Extras" Font-Names="Trebuchet MS"  Font-Size="XX-Large" Font-Bold="True" Visible="False" ForeColor="#009900"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="auto-style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBoxList ID="cbxToppings" runat="server" AutoPostBack="True" Font-Names="Franklin Gothic Medium Cond" Font-Size="Medium" OnSelectedIndexChanged="cbxToppings_SelectedIndexChanged" Visible="False" CssClass="auto-style5">
            <asp:ListItem Value="1">Whipped Cream</asp:ListItem>
            <asp:ListItem Value="1">Caramel</asp:ListItem>
            <asp:ListItem Value="1">Soy Milk</asp:ListItem>
        </asp:CheckBoxList>
    
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="imgCafe" runat="server" ImageUrl="~/project3/Image/coffeeCup.jpg" Width="302px" Visible="False" CssClass="auto-style6" Height="367px"/>
    
        <asp:Image ID="imgCream" runat="server" class="toppingImage" ImageUrl="~/project3/Image/cream.png" Visible="False" CssClass="auto-style1"/>
    
        </div>
        <asp:Button ID="btnNext"  Font-Names="Trebuchet MS"  runat="server" Text="Next" Font-Size="XX-Large" OnClick="btnNext_Click" Visible="False" BackColor="#006600" BorderColor="#003300" Font-Bold="True" ForeColor="White" Height="68px" Width="185px" CssClass="auto-style3" />
        &nbsp;<br />
    
        <br />
    
        <br />
        <asp:Image ID="imgCaramel"  runat="server" class="toppingImage" ImageUrl="~/project3/Image/caramel.png" Visible="False" CssClass="auto-style2" style="width: 172px; height: 369px; position: absolute; left: 335px; top: 329px"/>
    
        <br />
        <asp:Image ID="imgMilk" runat="server" class="toppingImage" ImageUrl="~/project3/Image/milk.png" Visible="false" CssClass="auto-style3" style="width: 185px; height: 332px; position: absolute; left: 330px; top: 359px"/>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br/>
    </div>
    </form>
</body>
</html>
