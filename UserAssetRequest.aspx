﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserAssetRequest.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Asset Name: <asp:Label ID="AssetName" runat="server" Text="Label"></asp:Label><br />
    Quantity Available: <asp:Label ID="AQuantity" runat="server" Text="Label"></asp:Label><br />
    Request Quantity: <asp:TextBox ID="Quantity" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /><br />
    <asp:Label ID="Label1" runat="server" Text="Request Submitted" Visible="false"></asp:Label>


</asp:Content>

