<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphMainContent" Runat="Server">
    Welcome!
    <br />
    <asp:Label ID="LblAssets" runat="server" ></asp:Label>
    <br />
    <asp:Label ID="LblRequests" runat="server" ></asp:Label>
</asp:Content>

