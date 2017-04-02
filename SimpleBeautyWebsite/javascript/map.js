//w3schools Google Map Tutorial, 1999-2017

function myMap() {
    var mapProp = {
        center: new google.maps.LatLng(4.8856828, 114.9314358),
        zoom: 17,
    };
    var map = new google.maps.Map(document.getElementById("myGoogleMap"), mapProp);


    //Google Developers. Adding a Google Map with a Marker to Your Website. 14th March 2017
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(4.8856828, 114.9314358),
        map: map
    });
}