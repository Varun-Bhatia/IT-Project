<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignupSuccess.aspx.cs" Inherits="SignupSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Successfully signed up<br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Return to Login Page</asp:HyperLink>
        </div>
    </form>
</body>
</html>
