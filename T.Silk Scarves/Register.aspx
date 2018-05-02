<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="T.Silk_Scarves.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Register | Welcome to T-Silk Scarves and Shawls Shopping.com 
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
    <h2 style="text-align: center; font-size: xx-large; background-color: #FFCCFF;">Register NOW!</h2>
    <form id="form1" runat="server">
     &nbsp;<p></p>
        <strong>
        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            </strong>&nbsp;<asp:TextBox ID="txtRegEmail" runat="server" Height="25px" Width="245px" style="background-color: #CC99FF" Text=""></asp:TextBox>
        <p>&nbsp;</p>
        <strong>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </strong>&nbsp;<asp:TextBox ID="txtRegPassword" runat="server" Height="25px" Width="245px" style="background-color: #CC99FF" Text=""></asp:TextBox>
        <p>&nbsp;</p>
        <strong>
        <asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label>
            </strong>&nbsp;<asp:TextBox ID="txtRegRePassword" runat="server" Height="25px" Width="245px" style="background-color: #CC99FF" Text=""></asp:TextBox>
        <p>&nbsp;</p>
        <asp:Button ID="Btnsignup" runat="server" Text="Signup" OnClick="Btnsignup_Click" Height="32px" Width="100px" />
        <p>
            &nbsp;</p>
     
       
        <asp:Literal ID="LitRegisterError" runat="server"></asp:Literal>
                                       
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
