<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        <div >
            <asp:Label ID="Label1" runat="server" Text="Username: " ></asp:Label>
            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button_Login" />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Signup" OnClick="Button_Signup" />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Invalid Credentials" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
