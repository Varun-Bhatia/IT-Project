<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="NewAsset.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphMainContent" Runat="Server">
    Asset Name:
    <asp:TextBox ID="TbName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RfvName" runat="server" ErrorMessage="Name is Required"
        ControlToValidate="TbName" Text="*"/>
    <br />
    Total Quantity:
    <asp:TextBox ID="TbQty" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RfvQty" runat="server" ErrorMessage="Quantity is Required"
        ControlToValidate="TbQty" Text="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RevQty" runat="server" ErrorMessage="Invalid quantity"
        Text="*" ControlToValidate="TbQty" ValidationExpression="\d+"/>
    <br />
    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click"/>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>

