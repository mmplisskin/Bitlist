
google.maps.event.addDomListener(window, 'load', initialize);
google.maps.event.addDomListener(window, 'page:load', initialize)


function initialize() {
  var url = window.location.origin + window.location.pathname + ".json";

  $.get(url, function(results){
    var my_content = results["name"]
    var lat = results["latitude"];
    var long = results["longitude"];

    var myCenter = new google.maps.LatLng(lat,long);
    var marker;

  var mapProp = {

    center: myCenter,
    zoom:12,
    zoomControl:false,
    panControl:false,
    mapTypeId:google.maps.MapTypeId.HYBRID
  };
  var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({

  position:myCenter,
  icon: image

  // animation:google.maps.Animation.BOUNCE
  });

marker.setMap(map);

google.maps.event.addListener(marker,'click',function() {
  map.setZoom(16);
  map.setCenter(marker.getPosition());
  });

var infowindow = new google.maps.InfoWindow({
  content: my_content
  });

infowindow.open(map,marker);

})


}
google.maps.event.addDomListener(window, 'load', initialize);
