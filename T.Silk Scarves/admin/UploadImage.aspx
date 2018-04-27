<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="T.Silk_Scarves.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUploadImage" runat="server" Height="47px" Width="322px" />
        <p>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" Height="21px" Width="112px" />
        <p>
        </p>
        <p>
        </p>
        <asp:Image ID="CurrentImage" runat="server" />
        <p>
        </p>
    </form>
</asp:Content>
