<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphMainContent" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITProjectConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [User] ([Password], [UserType], [Email], [UserName]) VALUES (@Password, @UserType, @Email, @UserName)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [Password] = @Password, [UserType] = @UserType, [Email] = @Email, [UserName] = @UserName WHERE [UserId] = @UserId">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="true"
        DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="UserId">
        <Columns>
            <%--<asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />--%>
            <%--<asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />--%>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>

