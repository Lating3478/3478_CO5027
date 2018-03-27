<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="T.Silk_Scarves.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact | Welcome to T-Silk Scarves and Shawls Shopping.com 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2 style="font-size: xx-large; text-align: center; color: #FFFFFF; background-color: #000066;">Contact US</h2>
    <form id="form1" runat="server">
        <asp:ValidationSummary ID="ErrorMessage" runat="server" ForeColor="Red" />
        <br />
        <strong>
        <a>Username: </a> </strong><p>
            <asp:TextBox ID="username" runat="server" Height="23px" Width="242px"></asp:TextBox></p>
        <p><asp:RequiredFieldValidator ID="ReqUsername" runat="server" ControlToValidate="username" Display="None" ErrorMessage="Username must be valid" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;</p>
        <a><strong>Email: </strong> </a>
        <p>
            <asp:TextBox ID="email" runat="server" Height="24px" Width="238px"></asp:TextBox></p>
        <p><asp:RequiredFieldValidator ID="ReqEmail" runat="server" ControlToValidate="email" Display="None" ErrorMessage="Email is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="validemail" runat="server" ControlToValidate="email" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></p>
        <p><strong>Subject:</strong></p>
        <asp:TextBox ID="txtSubject" runat="server" Height="25px" style="background-color: #CC99FF" Width="263px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="ReqSubject" runat="server" ControlToValidate="txtSubject" Display="None" ErrorMessage="Subject cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        <p>&nbsp;</p>
        <a><strong>Message for us: </strong> </a><p><asp:TextBox ID="txtbody" runat="server" TextMode="MultiLine" Height="165px" Width="395px" style="background-color: #CC99FF"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="ReqMessage" runat="server" ControlToValidate="txtbody" Display="None" ErrorMessage="Do you have any questions for us?" ForeColor="Red"></asp:RequiredFieldValidator>
        
           
               
       
            <asp:Button ID="Btnsend" runat="server" Text="Send" style="height: 21px" OnClick="Btnsend_Click" />
        
        
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        <br />
        <br />
        <br />
        <h1>Location</h1>
        <br />
    </form>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="GoogleMap"> <div id="map"></div>
    <h1>&nbsp;</h1>
    <br />
    <div id="map1"></div>
    <script src="../JS/Map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDy1r8m5bTcXnNezQ6iDRz7-Do54FMlXmc
&callback=initMap"
    async defer></script>
</asp:Content>
