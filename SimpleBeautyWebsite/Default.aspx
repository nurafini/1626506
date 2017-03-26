<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleBeautyWebsite.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/Default.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="banner1" runat="server" ImageAlign="Middle" ImageUrl="images/slider2.jpg" alt="firstbanner" Width="1750px" AlternateText="banner1" />
    <h2>Featured Products</h2>
  
    <a href="#"><img src="images/product1.jpg" alt="cosrxcleanser" width="300" height="300"/></a>
    <a href="#"><img src="images/product2.jpg" alt="beautywater" width="300" height="300"/></a>
    <a href="#"><img src="images/product3.jpg" alt="sumemulsion" width="300" height="300"/></a>
    <a href="#"><img src="images/product4.jpg" alt="beautygel" width="300" height="300"/></a>
    <a href="#"><img src="images/product5.jpg" alt="bentoncream" width="300" height="300"/></a>
</asp:Content>
