function myMap() {
    var mapProp = {
        center: new google.maps.LatLng(4.8857309, 114.9294805),
        zoom: 17,
    };
    var map = new google.maps.Map(document.getElementById("myGoogleMap"), mapProp);
}