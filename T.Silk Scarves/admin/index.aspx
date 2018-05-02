<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="T.Silk_Scarves.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Welcome to the admin panel
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<h2 style="font-size: xx-large; background-color: #FF9999">Welcome to the Admin Page:</h2>
    <ul>
        <li style="font-size: large; text-align: center"><a href="~/admin/Add.aspx" runat="server">Add Product</a></li>
        <li></li>
        <li style="font-size: large; text-align: center"><a href="~/admin/Edit.aspx" runat="server">Edit Product</a></li>
        <li></li>
        <li style="font-size: large; text-align: center"><a href="~/admin/List.aspx" runat="server">List Product</a></li>
    </ul>
</asp:Content>
