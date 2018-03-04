<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="T.Silk_Scarves.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact | Welcome to T-Silk Scarves and Shawls Shopping.com 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2 style="font-size: xx-large; text-align: center; color: #FFFFFF; background-color: #000066;">Contact US</h2>
    <form class="contactform">
        <a><strong>Username: </strong> </a><p><input class="contactname" id="username" style="width: 265px; height: 25px; background-color: #CC99FF" /><p>&nbsp;<p>
        <a><strong>Email: </strong> </a><p><input class="contactemail" id="email" style="width: 263px; height: 25px; background-color: #CC99FF" /><p>&nbsp;<p>
        <a><strong>Message for us: </strong> </a><p><textarea class="contactmessage" name="message" style="width: 437px; height: 183px; background-color: #CC99FF"></textarea><p>&nbsp;<p>
        <input type="submit" name="submit" value="Send to us" class="auto-style3" style="width: 110px; height: 36px; font-weight: bold; font-size: medium; color: #FFFFFF; background-color: #660066" /> 
        </form>
</asp:Content>
