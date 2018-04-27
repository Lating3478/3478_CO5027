<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="T.Silk_Scarves.admin.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
    <form id="form1" runat="server">
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1"  AllowPaging="True">
            <EditItemTemplate>
                ProductId:
                <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                ProductType:
                <asp:TextBox ID="ProductTypeTextBox" runat="server" Text='<%# Bind("ProductType") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
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
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
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
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND (([ProductType] = @original_ProductType) OR ([ProductType] IS NULL AND @original_ProductType IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductId], [ProductType], [Quantity], [Price]) VALUES (@ProductId, @ProductType, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductId] = @ProductId)" UpdateCommand="UPDATE [tblProduct] SET [ProductType] = @ProductType, [Quantity] = @Quantity, [Price] = @Price WHERE [ProductId] = @original_ProductId AND (([ProductType] = @original_ProductType) OR ([ProductType] IS NULL AND @original_ProductType IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductId" Type="Int32" />
                <asp:Parameter Name="original_ProductType" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="ProductType" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductType" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="original_ProductId" Type="Int32" />
                <asp:Parameter Name="original_ProductType" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
