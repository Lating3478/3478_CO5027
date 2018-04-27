<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="T.Silk_Scarves.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <p>
    <br />
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
    <link href="CSS/Styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

.repeater ul li {
        height:500px;
        margin-top:40px;
}

.repeater li {
    display: inline-block;
    float: left;
    width: 30%;
}


.repeater ul li a {
        text-decoration: none;
        color: purple;
        font-size: 50px;
}

.repeater ul li a p {
        text-align: center;
}

        .auto-style4 {
            font-size: xx-large;
            text-align: center;
            background-color: #99CC00;
        }

    </style>
    <form id="form1" runat="server">
        <h2 class="auto-style4">
            PRODUCT LIST:</h2>
        <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT ProductId, ProductType, Quantity, Price FROM tblProduct WHERE (Quantity &gt; 0)"></asp:SqlDataSource>
            <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate>

<ul class="repeater">
    <li>
                &nbsp;<img src="/ProductImages/<%#Eval("ProductId") %>.jpg" alt="<%#Eval("ProductType") %>" title="<%#Eval("ProductType") %>" width="300" height="300" /><br />
                <p style="font-size: larger"><strong>Available size:</strong></p>
                <p>&nbsp;</p>
                <p>  
                <a href="<%#Eval("ProductId","Product.aspx?Id={0}") %>"><%#Eval("ProductType") %></a></p>
                <p><h3>Quantity:</h3><%#Eval("Quantity") %></p>
                <p><h3>Price:</h3><%#Eval("Price") %></p>
  
     </li>
</ul>
                    </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
        </p>
    </form>
</asp:Content>

