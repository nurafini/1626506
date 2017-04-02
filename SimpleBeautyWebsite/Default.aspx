<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleBeautyWebsite.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/Default.css" />
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome to Simple Beauty Shop!</h2>
    <asp:Image ID="banner1" runat="server" ImageAlign="Middle" ImageUrl="images/slider2.jpg" alt="banner" Width="1750px" AlternateText="banner" />
    <h2>Featured Products</h2>

    <ul class="featuredproduct">
    <li>
        <a href="#">
            <img src="images/product1.jpg" alt="Cosrx Low pH Good Morning Gel Cleanser" width="300" height="300">
            <h4>Cosrx Low pH Gel Cleanser</h4>
            <p>$7.00</p>
        </a></li>

        <li>
        <a href="#">
            <img src="images/product2.jpg" alt="Su:m37 Fresh Emulsion" width="300" height="300">
            <h4>Su:m37 Fresh Emulsion</h4>
            <p>$30.00</p>
        </a></li>
    
        <li>
        <a href="#">
            <img src="images/product3.jpg" alt="Son and Park Beauty Water" width="300" height="300">
            <h4>Son and Park Beauty Water</h4>
            <p>$20.00</p>
        </a></li>

        <li>
        <a href="#">
            <img src="images/product4.jpg" alt="Son and Park Beauty Gel" width="300" height="300">
            <h4>Son and Park Beauty Gel</h4>
            <p>$20.00</p>
        </a></li>

        <li>
        <a href="#">
            <img src="images/product5.jpg" alt="Benton Snail Bee High Content Steam Cream" width="300" height="300">
            <h4>Benton Snail Bee High Content Steam Cream</h4>
            <p>$18.00</p>
        </a></li></ul>  
</asp:Content>
