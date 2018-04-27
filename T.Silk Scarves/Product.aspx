<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="T.Silk_Scarves.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2 style="font-size: xx-large; background-color: #999999">PRODUCT DESCRIPTIONS:</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
    <form id="form1" runat="server">
       
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" Height="229px" Width="404px">
        <EditItemTemplate>
            ProductId:
            <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductType:
            <asp:TextBox ID="ProductTypeTextBox" runat="server" Text='<%# Bind("ProductType") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductId:
            <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
            <br />
            ProductType:
            <asp:TextBox ID="ProductTypeTextBox" runat="server" Text='<%# Bind("ProductType") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ProductId:
            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductType:
            <asp:Label ID="ProductTypeLabel" runat="server" Text='<%# Bind("ProductType") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />

        </ItemTemplate>
        </asp:FormView>
    
        <p><asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>
        &nbsp;<asp:DropDownList ID="DDLQuantity" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList></p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="BtnPurchase" runat="server" Text="BUY NOW!" OnClick="BtnPurchase_Click1" />
        </p>
        <br />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT [ProductId], [ProductType], [Price] FROM [tblProduct] WHERE ([ProductId] = @ProductId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductId" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        </form>
</asp:Content>

