<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="UserAssetView.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="CphMainContent" Runat="Server">
    Select required asset from table and click submit<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [Assets]" ConnectionString="Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=ITProject;Integrated Security=True"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="AssetId" AutoGenerateColumns="false" >
        <Columns>
            <asp:BoundField DataField="AssetName" HeaderText="Asset Name" />
            <asp:BoundField DataField="TotalQuantity" HeaderText=" Total Quantity" />
            <asp:BoundField DataField="AvailableQuantity" HeaderText="Available Quantity" />
            <asp:CommandField ShowSelectButton="true" ButtonType="Button" />
        </Columns>
        <SelectedRowStyle Font-Bold="true" />
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
</asp:Content>

