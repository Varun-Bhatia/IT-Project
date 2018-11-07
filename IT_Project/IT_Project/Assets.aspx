<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master"
    AutoEventWireup="true" CodeFile="Assets.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphMainContent" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ITProjectConnectionString %>" 
        DeleteCommand="DELETE FROM [Assets] WHERE [AssetId] = @AssetId" 
        InsertCommand="INSERT INTO [Assets] ([AssetName], [TotalQuantity], [AvailableQuantity]) VALUES (@AssetName, @TotalQuantity, @AvailableQuantity)" 
        SelectCommand="SELECT * FROM [Assets]" 
        UpdateCommand="UPDATE [Assets] SET [AssetName] = @AssetName, [TotalQuantity] = @TotalQuantity, [AvailableQuantity] = @AvailableQuantity WHERE [AssetId] = @AssetId">
        <DeleteParameters>
            <asp:Parameter Name="AssetId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AssetName" Type="String" />
            <asp:Parameter Name="TotalQuantity" Type="Int32" />
            <asp:Parameter Name="AvailableQuantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AssetName" Type="String" />
            <asp:Parameter Name="TotalQuantity" Type="Int32" />
            <asp:Parameter Name="AvailableQuantity" Type="Int32" />
            <asp:Parameter Name="AssetId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="true"
        DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="AssetId">
        <Columns>
            <%--<asp:BoundField DataField="AssetId" HeaderText="AssetId" InsertVisible="False" ReadOnly="True" SortExpression="AssetId" />--%>
            <asp:BoundField DataField="AssetName" HeaderText="AssetName" SortExpression="AssetName" />
            <asp:BoundField DataField="TotalQuantity" HeaderText="TotalQuantity" SortExpression="TotalQuantity" />
            <asp:BoundField DataField="AvailableQuantity" HeaderText="AvailableQuantity" SortExpression="AvailableQuantity" />
            <asp:CommandField ShowEditButton="true" EditText="Edit" />
            <%--<asp:CommandField ShowInsertButton="true" InsertText="Add" />--%>
        </Columns>
    </asp:GridView>
</asp:Content>

