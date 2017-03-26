if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(success);
} else {
    alert("Geo Location is not supported on your current browser!");
}
function success(position) {
    var lat = position.coords.latitude;
    var long = position.coords.longitude;
    var city=position.coords.locality;
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