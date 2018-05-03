<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="T.Silk_Scarves.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login | Welcome to T-Silk Scarves and Shawls Shopping.com 
<style type="text/css">
    .auto-style1 {
        width: 227px;
    }
    .auto-style2 {
        width: 227px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2 style="font-size: xx-large; text-align: center; background-color: #FF6666;"><span style="font-weight: normal"><strong><span style="background-color: #FF6666">Login</span></strong></span></h2>
    <form id="form1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtLoginEmail" runat="server" Height="25px" style="background-color: #CC99FF" Width="245px"></asp:TextBox>
        <p>&nbsp;</p>
        
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtLoginPassword" runat="server" Height="25px" style="background-color: #CC99FF" Width="245px"></asp:TextBox>
        <p>&nbsp;</p>&nbsp;<p>
        &nbsp;<asp:Button ID="Btnlogin" runat="server" Text="Login" OnClick="Btnlogin_Click" Height="27px" Width="81px" />
        </p>
            <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
    </form>

</asp:Content>