
google.maps.event.addDomListener(window, 'load', initialize);
google.maps.event.addDomListener(window, 'page:load', initialize)


function initialize() {
  var url = window.location.origin + window.location.pathname + ".json";

  $.get(url, function(results){

    var lat = results["latitude"];
    var long = results["longitude"];

    var myCenter = new google.maps.LatLng(lat,long);
    var marker;

  var mapProp = {

    center: myCenter,
    zoom:16,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({

  position:myCenter,

  // animation:google.maps.Animation.BOUNCE
  });

marker.setMap(map);

})


}
google.maps.event.addDomListener(window, 'load', initialize);
