<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Signup</h1>
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Username" ControlToValidate="Username"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password" ControlToValidate="Password"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="CPassword" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Confirm Username" ControlToValidate="Username"></asp:RequiredFieldValidator>
            
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid email" ControlToValidate="Email" ValidationExpression=".+@.+"></asp:RegularExpressionValidator>

            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Password does not match" ControlToValidate="Password" OnServerValidate="Password_ServerValidate"></asp:CustomValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

            
        </div>
    </form>
</body>
</html>
