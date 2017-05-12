<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="SimpleBeautyWebsite.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/Product.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="banner2" runat="server" ImageUrl="images/banner2.jpg" Width="1750px" Height="200" AlternateText="product banner" />
    <h2>Shop Our Products</h2>
    <ul><li>
        <a href="ProductPage.aspx?Id=5">
            <img src="images/product1.jpg" alt="Cosrx Low pH Good Morning Gel Cleanser" width="200" height="200"/>
            <h4>Cosrx Low pH Gel Cleanser</h4>
        </a></li>

        <li>
        <a href="ProductPage.aspx?Id=4">
            <img src="images/product2.jpg" alt="Su:m37 Fresh Emulsion" width="200" height="200"/>
            <h4>Su:m37 Waterfull Rebalancing Gel Lotion</h4>
        </a></li>
    
        <li>
        <a href="ProductPage.aspx?Id=3">
            <img src="images/product3.jpg" alt="Son and Park Beauty Water" width="200" height="200"/>
            <h4>Son and Park Beauty Water</h4>
        </a></li>

        <li>
        <a href="ProductPage.aspx?Id=2">
            <img src="images/product4.jpg" alt="Son and Park Beauty Gel" width="200" height="200"/>
            <h4>Son and Park Beauty Gel</h4>
        </a></li>

        <li>
        <a href="ProductPage.aspx?Id=1">
            <img src="images/product5.jpg" alt="Benton Snail Bee High Content Steam Cream" width="200" height="200"/>
            <h4>Benton Snail Bee High Content Steam Cream</h4>
        </a></li>

        <li>
        <a href="ProductPage.aspx?Id=6">
            <img src="images/product6.jpg" alt="Mizon Snail Recovery Gel" width="200" height="200"/>
            <h4>Mizon Snail Recovery Gel</h4>
        </a></li>

        <li>
        <a href="ProductPage.aspx?Id=7">
            <img src="images/product8.jpg" alt="Toosowong Enzyme Powder Wash" width="200" height="200"/>
            <h4>Toosowong Enzyme Powder Wash</h4>
        </a></li>

        <li>
        <a href="ProductPage.aspx?Id=8">
            <img src="images/product10.jpg" alt="Innisfree The Green Tea Seed Serum" width="200" height="200"/>
            <h4>Innisfree The Green Tea Seed Serum</h4>
        </a></li>
    </ul>
</asp:Content>
