<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="T.Silk_Scarves.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact | Welcome to T-Silk Scarves and Shawls Shopping.com 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2 style="font-size: xx-large; text-align: center; color: #FFFFFF; background-color: #000066;">Contact US</h2>
    <form id="form1" runat="server">
        <a><strong>Username: </strong> </a><p><input class="contactname" id="username" style="width: 265px; height: 25px; background-color: #CC99FF" /><p>&nbsp;<p>
        <a><strong>Email: </strong> </a><p><input class="contactemail" id="email" style="width: 263px; height: 25px; background-color: #CC99FF" /><p>&nbsp;<p>
        <a><strong>Message for us: </strong> </a><p><asp:TextBox ID="txtbody" runat="server" TextMode="MultiLine" Height="165px" Width="395px" style="background-color: #CC99FF"></asp:TextBox>
        <p>
            <p>
                <p>
       
            <asp:Button ID="Btnsend" runat="server" Text="Send" style="height: 21px" OnClick="Btnsend_Click" />
        <p>
        <p>
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </form>
</asp:Content>