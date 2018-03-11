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
    <strong>
    <form class="loginform">
        <a>Username: </a><p><input class="loginusername" id="username" style="height: 25px; width: 280px; background-color: #CC99FF;" /><p>&nbsp;<p>
        <a>Password: </a><p><input class="loginpassword" id="password" style="width: 280px; height: 25px; background-color: #CC99FF" /><p>&nbsp;<p>&nbsp;<p>&nbsp;<p>&nbsp;<p>
        <input type="submit" name="submit" value="submit" style="width: 101px; height: 35px; font-weight: bold; font-size: medium; color: #FFFFFF; background-color: #660066;" />
    </form>
</asp:Content>