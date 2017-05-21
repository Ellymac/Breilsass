function mapCrozon() {
  var myCenter = new google.maps.LatLng(48.246306,-4.489568);
  var mapCanvas = document.getElementById("map");
  var mapOptions = {center: myCenter, zoom: 9};
  var map = new google.maps.Map(mapCanvas, mapOptions);
  var marker = new google.maps.Marker({position:myCenter});
  marker.setMap(map);

  var infowindow = new google.maps.InfoWindow({
    content: "Le bout du monde"
  });
  infowindow.open(map,marker);
}

$('.carousel').carousel({
  interval: 5000 //changes the speed
})
