function initialize() {
		  var mapProp = {
			<!--Turorial to change the location by coordinates https://support.google.com/maps/answer/18539?hl=en -->
			center:new google.maps.LatLng(-27.471561, 153.018856),
			zoom:17,
			mapTypeId:google.maps.MapTypeId.ROADMAP
		  };
		  var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
		}
		google.maps.event.addDomListener(window, 'load', initialize);
