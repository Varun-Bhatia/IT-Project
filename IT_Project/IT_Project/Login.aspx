<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        <div style="align-content:center;text-align:center;margin:auto" >
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.png" />
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Username: " ></asp:Label>
            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="Password" runat="server"></asp:TextBox> 
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button_Login" />
            <br /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Signup.aspx">SignUp</asp:HyperLink>
            <br /><br />
            <asp:Label ID="Label3" runat="server" Text="Invalid Credentials" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
