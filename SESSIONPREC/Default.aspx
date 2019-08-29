<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #C0C0C0">
    <center>
        <h1>LOGIN FORM</h1>
    <form id="form1" runat="server">
    <div>
         ENTER THE USERNAME:<asp:TextBox ID="username" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Enter The UserName" SetFocusOnError="True"></asp:RequiredFieldValidator>
         <br />
         ENTER THE PASSWORD:<asp:TextBox ID="passowrd" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passowrd" ErrorMessage="Enter The Password"></asp:RequiredFieldValidator>
         <br />
        <asp:Button ID="login" Text="login" runat="server" OnClick="login_Click"></asp:Button><br />         
        <a href="insert.aspx">CREATE USER</a>
    </div>
    </form>
        </center>
</body>
</html>
