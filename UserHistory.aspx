<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserHistory.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [Requests] WHERE [UserName]=@UserName" ConnectionString="Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=ITProject;Integrated Security=True">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="UserName" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="AssetName" HeaderText="Asset Name" />
            <asp:BoundField DataField="QuantityRequested" HeaderText="Quantity Requested" />
            <asp:BoundField DataField="DateofApproval" HeaderText="Date of Request/Approval" />
            <asp:BoundField DataField="Status" HeaderText="Status" />

        </Columns>
    </asp:GridView>
</asp:Content>

