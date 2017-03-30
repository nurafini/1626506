﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SimpleBeautyWebsite.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    
    <link rel="stylesheet" href="css/Contact.css" type="text/css" />
    <script src="javascript/map.js"></script>
     

    <h2><span class="newStyle2">Contact Us</span></h2>
    <p>
        <asp:Label ID="labelName" runat="server" AssociatedControlID="textboxName" Text="Name:" Font-Names="Segoe UI" Font-Size="Large" CssClass="lblName"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="textboxName" runat="server" CausesValidation="True" MaxLength="30" ValidateRequestMode="Enabled" Font-Size="Medium"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="labelEmail" runat="server" AssociatedControlID="textboxEmail" Text="Email:" Font-Names="Segoe UI" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="textboxEmail" runat="server" MaxLength="30" TextMode="Email" ValidateRequestMode="Enabled" ValidationGroup="email" Font-Size="Medium"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="labelSubject" runat="server" AssociatedControlID="textboxSubject" Font-Names="Segoe UI" Font-Size="Large" Text="Subject:"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="textboxSubject" runat="server" Font-Size="Medium" MaxLength="20"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="labelMessage" runat="server" AssociatedControlID="textboxMsg" Text="Message:" Font-Names="Segoe UI" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="textboxMsg" runat="server" Height="69px" MaxLength="250" TextMode="MultiLine" Width="251px" Font-Size="Medium"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" BackColor="#FF99FF" Font-Names="Segoe UI" Font-Size="Large" Text="Submit" />
    </p>
    <p>
        <asp:Literal ID="litMessage" runat="server"></asp:Literal>
    </p>
    
  
 
    <div id="myGoogleMap" style="width:500px; height:300px"></div>

   <%--static map--%>

    <img width="600" src="https://maps.googleapis.com/maps/api/staticmap?center=4.8856828,114.9314358&zoom=19&scale=false&size=600x300&maptype=roadmap&format=jpg&visual_refresh=true&markers=size:mid%7Ccolor:0xff0000%7Clabel:1%7C4.8856828,114.9314358" alt="Static Google Map of Simple Beauty store location"/>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARAFlBpOcUBOoBY9S4LX9M1GdFzPyMGKQ&callback=myMap"></script>
  
</asp:Content>
