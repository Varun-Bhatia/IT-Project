<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Requests.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphMainContent" runat="Server">
    Pending Requests:
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ITProjectConnectionString %>"
        SelectCommand="SELECT * FROM [Requests] WHERE ([Status]='Pending')">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server"
        DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="RequestId">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"
                ReadOnly="true" />
            <asp:BoundField DataField="AssetName" HeaderText="AssetName" SortExpression="AssetName" />
            <asp:BoundField DataField="QuantityRequested" HeaderText="QuantityRequested" SortExpression="QuantityRequested" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="BtnApprove" runat="server" Text="Approve"
                        OnClick="BtnApprove_Click"
                        CommandArgument='<%#Eval("RequestId") %>' />
                    <asp:Button ID="BtnReject" runat="server" Text="Reject"
                        OnClick="BtnReject_Click"
                        CommandArgument='<%#Eval("RequestId") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="LblDetails" runat="server"></asp:Label>
    <br />
    All Requests:
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ITProjectConnectionString %>" SelectCommand="SELECT * FROM [Requests]"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server"
        DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="RequestId">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="AssetName" HeaderText="AssetName" SortExpression="AssetName" />
            <asp:BoundField DataField="QuantityRequested" HeaderText="QuantityRequested" SortExpression="QuantityRequested" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="DateofApproval" HeaderText="DateofApproval" SortExpression="DateofApproval" />
        </Columns>
    </asp:GridView>

</asp:Content>

