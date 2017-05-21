function initMap() {
  var myCenter = new google.maps.LatLng(48.246306,-4.489568);
  var mapCanvas = document.getElementById("mapCrozon");
  var mapOptions = {center: myCenter, zoom: 9};
  var map = new google.maps.Map(mapCanvas, mapOptions);
  var marker = new google.maps.Marker({position:myCenter});

  var myCenter2 = new google.maps.LatLng(47.704194,-2.953554);
  var mapCanvas2 = document.getElementById("mapAnne");
  var mapOptions2 = {center: myCenter2, zoom: 9};
  var map2 = new google.maps.Map(mapCanvas2, mapOptions2);
  var marker2 = new google.maps.Marker({position:myCenter2});

  marker.setMap(map);
  var infowindow = new google.maps.InfoWindow({
    content: "Le bout du monde"
  });
  infowindow.open(map,marker);
}

$('.carousel').carousel({
  interval: 5000 //changes the speed
})
