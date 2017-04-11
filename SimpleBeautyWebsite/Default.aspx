<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleBeautyWebsite.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/Default.css" />
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome to Simple Beauty Shop!</h2>
    <asp:Image ID="banner1" runat="server" ImageUrl="images/slider2.jpg" Width="1750px" AlternateText="banner" />
    <h2>Featured Products</h2>

    <ul class="featuredproduct">
    <li>
        <a href="#">
            <img src="images/product1.jpg" alt="Cosrx Low pH Good Morning Gel Cleanser" width="300" height="300"/>
            <h4>Cosrx Low pH Gel Cleanser</h4>
            <p>A gentle cleanser</p>
            <p>$7</p>
        </a></li>

        <li>
        <a href="#">
            <img src="images/product2.jpg" alt="Su:m37 Fresh Emulsion" width="300" height="300"/>
            <h4>Su:m37 Waterfull Rebalancing Gel Lotion</h4>
            <p>To moisturize skin</p>
            <p>$30</p>
        </a></li>
    
        <li>
        <a href="#">
            <img src="images/product3.jpg" alt="Son and Park Beauty Water" width="300" height="300"/>
            <h4>Son and Park Beauty Water</h4>
            <p>Creates a clean base for the face</p>
            <p>$20</p>
        </a></li>

        <li>
        <a href="#">
            <img src="images/product4.jpg" alt="Son and Park Beauty Gel" width="300" height="300"/>
            <h4>Son and Park Beauty Gel</h4>
            <p>Light moisturizing gel</p>
            <p>$20</p>
        </a></li>

        <li>
        <a href="#">
            <img src="images/product5.jpg" alt="Benton Snail Bee High Content Steam Cream" width="300" height="300"/>
            <h4>Benton Snail Bee High Content Steam Cream</h4>
            <p>To deeply hydrate the skin</p>
            <p>$18</p>
        </a></li></ul>  
</asp:Content>
