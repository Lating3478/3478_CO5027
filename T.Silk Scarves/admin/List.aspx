<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="T.Silk_Scarves.admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2 style="font-size: xx-large; background-color: #FF9999">
        LIST OF PRODUCTS:</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" Height="390px" Width="708px">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductType" HeaderText="ProductType" SortExpression="ProductType" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:HyperLinkField  DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Upload Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND (([ProductType] = @original_ProductType) OR ([ProductType] IS NULL AND @original_ProductType IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductId], [ProductType], [Quantity], [Price]) VALUES (@ProductId, @ProductType, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [ProductType] = @ProductType, [Quantity] = @Quantity, [Price] = @Price WHERE [ProductId] = @original_ProductId AND (([ProductType] = @original_ProductType) OR ([ProductType] IS NULL AND @original_ProductType IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
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
