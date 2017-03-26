<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SimpleBeautyWebsite.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/Contact.css"/>
   
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Contact Us</h2>
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
        <asp:TextBox ID="textboxSubject" runat="server" Font-Size="Medium"></asp:TextBox>
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

    <div id="map_canvas" style="width: 500px; height: 400px"></div>
    
    <script>
    if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(success);
} else {
    alert("Geo Location is not supported on your current browser!");
}
    function success(position) {
        var lat = position.coords.latitude;
        var long = position.coords.longitude;
        var city = position.coords.locality;
        var myLatlng = new google.maps.LatLng(lat, long);
        var myOptions = {
            center: myLatlng,
            zoom: 12,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        var marker = new google.maps.Marker({
            position: myLatlng,
            title: "lat: " + lat + " long: " + long
        });
        marker.setMap(map);
        var infowindow = new google.maps.InfoWindow({ content: "<b>User Address</b><br/> Latitude:" + lat + "<br /> Longitude:" + long + "" });
        infowindow.open(map, marker);
    }
    </script>
</asp:Content>
