<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert.aspx.cs" Inherits="insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
        <h1>USER REGISTRATION</h1>
   
    <form id="form1" runat="server" style="background-color: #C0C0C0; border-style: dashed; border-color: #99FF66">
    <div>
    
        Enter The Username:<asp:TextBox ID="username" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Enter The UserName"></asp:RequiredFieldValidator>
        <br />
        <br />
        Enter The Password:<asp:TextBox ID="password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Enter The Password"></asp:RequiredFieldValidator>
        <br />
        <br />
        Enter The UserCity:
        <asp:TextBox ID="city" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="city" ErrorMessage="Enter The City"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Enter The UserPhone:<asp:TextBox ID="phone" runat="server"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="phone" ErrorMessage="Enter The Phone"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" ErrorMessage="Enter Maximum 10 Digit" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    
        <br />
        <br />
        <asp:Button ID="btn1" runat="server" OnClick="Button1_Click" Text="Insert" />
         
    </div>
    </form>
         </center>
</body>
</html>
