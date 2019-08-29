<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Welcome!
        <asp:Label ID="lbl1" runat="server"></asp:Label>
        <asp:GridView ID="gvlogin" runat="server"></asp:GridView>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        ID:<asp:TextBox ID="id" runat="server"></asp:TextBox>
        <br />
        Name:<asp:TextBox ID="name" runat="server"></asp:TextBox>
        <br />
        &nbsp;
        Date:<asp:TextBox ID="date" runat="server"></asp:TextBox>
        <br />
        Salary:<asp:TextBox ID="salary" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;
        City:<asp:TextBox ID="city" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="insert" runat="server" Text="insert" OnClick="insert_Click" />
        <asp:GridView ID="gvlogin1" runat="server">
        </asp:GridView>
        <br />
        <br />

         <asp:GridView ID="GridView1" runat="server" CellPadding="6" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">  

            <Columns>  

                <asp:BoundField DataField="Empid" HeaderText="Id"/>  

                <asp:BoundField DataField="Empname" HeaderText="Name"/>  

                <asp:BoundField DataField="Empjoindate" HeaderText="jdate"/>

                <asp:BoundField DataField="Empsalary" HeaderText="Salary"/>

                <asp:BoundField DataField="Empcity" HeaderText="City"/>    

            </Columns>  

        </asp:GridView>
    </div>
    </form>
</body>
</html>
