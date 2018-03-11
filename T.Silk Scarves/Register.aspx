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
    <form class="registerform" style="background-color: #FFCCFF">
     &nbsp;<br />
        <br />
        <br />
        <br />
        <strong><a>Email: </a> </strong> <p><input class="registeremail" id="email" style="margin-left: 60; width: 281px; height: 25px; background-color: #CC99FF;" /><p>&nbsp;<p>
     <a><strong>Password: </strong> </a><p><input class="registerpassword" id="password" style="width: 281px; height: 25px; background-color: #CC99FF" /><p>&nbsp;<p>
     <a><strong>Retype Password: </strong> </a><p><input class="registerretypepassword" id="retype password" style="width: 280px; height: 25px; background-color: #CC99FF" /><p>&nbsp;<p>&nbsp;<p>
     <input type="submit" name="signupbtn" value="sign up" style="width: 88px; height: 32px; font-weight: bold; font-size: medium; color: #FFFFFF; background-color: #660066;" />
        <label>
            &nbsp;</label><p>
            <label>
            &nbsp;&nbsp;
            <input type="checkbox" checked="uncheck" name="remember" />Remember me
        </label>
        <p>
            &nbsp;</form>
</asp:Content>
