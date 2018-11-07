<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphMainContent" Runat="Server">
    Report By User: <br />
    <asp:DropDownList ID="DdlUser" runat="server" AutoPostBack="true"
        DataSourceId="SdsUserList" DataValueField="UserName"></asp:DropDownList>
    <asp:SqlDataSource ID="SdsUserList" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ITProjectConnectionString %>" 
        SelectCommand="SELECT [UserName] FROM [User]">
    </asp:SqlDataSource>
    <br />
        <asp:SqlDataSource ID="SdsUser" runat="server" ConnectionString="<%$ ConnectionStrings:ITProjectConnectionString %>" SelectCommand="SELECT * FROM [Requests] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DdlUser" Name="UserName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SdsUser" AutoGenerateColumns="False" DataKeyNames="RequestId">
        <Columns>
            <asp:BoundField DataField="RequestId" HeaderText="RequestId" InsertVisible="False" ReadOnly="True" SortExpression="RequestId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="AssetId" HeaderText="AssetId" SortExpression="AssetId" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="DateofApproval" HeaderText="DateofApproval" SortExpression="DateofApproval" />
            <asp:BoundField DataField="QuantityRequested" HeaderText="QuantityRequested" SortExpression="QuantityRequested" />
            <asp:BoundField DataField="AssetName" HeaderText="AssetName" SortExpression="AssetName" />
        </Columns>

    </asp:GridView>
    <br />
    Report By Asset: <br />
    <asp:DropDownList ID="DdlAsset" runat="server" AutoPostBack="true"
        DataSourceId="SdsAssetList" DataValueField="AssetName"></asp:DropDownList>
    <asp:SqlDataSource ID="SdsAssetList" runat="server" ConnectionString="<%$ ConnectionStrings:ITProjectConnectionString %>" SelectCommand="SELECT [AssetName] FROM [Assets]"></asp:SqlDataSource>
    <br />
        <asp:SqlDataSource ID="SdsAsset" runat="server" ConnectionString="<%$ ConnectionStrings:ITProjectConnectionString %>" SelectCommand="SELECT * FROM [Requests] WHERE ([AssetName] = @AssetName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DdlAsset" Name="AssetName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SdsAsset" AutoGenerateColumns="False" DataKeyNames="RequestId">
        <Columns>
            <asp:BoundField DataField="RequestId" HeaderText="RequestId" InsertVisible="False" ReadOnly="True" SortExpression="RequestId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="AssetId" HeaderText="AssetId" SortExpression="AssetId" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="DateofApproval" HeaderText="DateofApproval" SortExpression="DateofApproval" />
            <asp:BoundField DataField="QuantityRequested" HeaderText="QuantityRequested" SortExpression="QuantityRequested" />
            <asp:BoundField DataField="AssetName" HeaderText="AssetName" SortExpression="AssetName" />
        </Columns>

    </asp:GridView>
</asp:Content>

