window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	theme: "light2",
	title:{
		text: "Speed vs Altitude"
	},
	axisY:{
		includeZero: false
	},
	data: [{        
		type: "line",       
		dataPoints: [
			{ y: 450 },
			{ y: 414},
			{ y: 520, indexLabel: "highest",markerColor: "red", markerType: "triangle" },
			{ y: 460 },
			{ y: 450 },
			{ y: 500 },
			{ y: 480 },
			{ y: 480 },
			{ y: 410 , indexLabel: "lowest",markerColor: "DarkSlateGrey", markerType: "cross" },
			{ y: 500 },
			{ y: 480 },
			{ y: 510 }
		]
	}]
});
chart.render();

}
    function initMap(){
      // Map options
    
      var options = {
        zoom:3,
        center:{lat:13.007,lng:75.7492}

      }

      // New map
      var map = new google.maps.Map(document.getElementById('map'), options);
        var opt = { minZoom: 2, maxZoom: 9 };
map.setOptions(opt);
      // Listen for click on map
     $(document).ready(function() {
    $(window).resize(function() {
        google.maps.event.trigger(map, 'resize');
    });
    google.maps.event.trigger(map, 'resize');
});

     

        var image1='./images/plane.png';
        var image2='./images/plane2.png';
          var image3='./images/AA.jpg';
          var image4='./images/planeee.png';
          var image5='./images/plane22.png';
      var markers = [
      {
        coords:[{lat:13.1767, lng:77.6833},{lat:3.1390,lng: 101.6869}],
        iconImage:image4,
        content:'<h4>ETD49B</h4>',
        hex:'8961e6',
        speed:'472',
        source:'Kuala Lumpur Int',
        destination:'Bangalore',
      },
      { "hex":"8961e6",
       content:'<h4>ETD49B</h4>',
        coords:{lat:13.228912, lng:77.603633},
        "altitude":40000,
         "track":276,
        "speed":472,
        iconImage:image1,


      },
      {
        coords:[{lat:-34.9524,lng:138.5204},{lat:55.751244,lng:55.751244}],
        iconImage:image1,
        content:'<h4>Western Australia </h4>'
      },
     {
        coords:[{lat:-28.6217,lng:151.9533},{lat:-34.9524,lng:138.5204}],
        iconImage:image1,
        content:'<h4>New South Wales </h4>'
      }/*,
	  
      {
        coords:[{lat:-15.4877,lng:147.1183},{lat: 39.913818,lng:116.363625}],
        iconImage:image1,
        content:'<h4> Queensland</h4>'
      },
	  
      {
        coords:{lat:-18.637,lng:135.945},{lat: ‎ 64.18347,lng:-51.72157}],
        iconImage:image1,
        content:'<h4>Northern Territory </h4>'
      },
	  
      {
        coords:{lat:68.534401,lng:-89.808098},
        iconImage:image1,
        content:'<h4>VNPK </h4>'
      },
      {
        coords:{lat:28.200899124145508,lng:83.98210144042969},
        iconImage:image1,
        content:'<h4> CYBB</h4>'
      },
      {
        coords:{lat:13.198775,lng:77.706510},
        iconImage:image1,
        content:'BIA'
      },
      {
        coords:{lat:12.994258,lng:80.170899},
        iconImage:image1,
        content:'<h4>Chennai Airport</h4>'
      },
      {
        coords:{lat:33.923036,lng:151.259052},
        iconImage:image1,
        content:'<h4> Airport Terminal</h4>'
      },
      {
        coords:{lat:34.028249,lng:151.157507},
        iconImage:image1,
        content:'<h4>Bondi Beach </h4>'
      },
      {
        coords:{lat:-33.950198,lng:151.259302},
        iconImage:image1,
        content:'<h4>Coogee Beach </h4>'
      },
      {
          coords:{lat:42.4668,lng:-70.9495},
          iconImage:image1,
          content:'<h4>Lynn MA</h4>'
      },
      {
          coords:{lat:42.8584,lng:-70.9300},
          iconImage:image1,
          content:'<h4>Amesbury MA</h4>'
     },
     {
          coords:{lat:42.7762,lng:-71.0773},
          iconImage:image1,
          content:'<h4> No idea</h4>' 
     }*/
      ];

   map.data.loadGeoJson(
      'https://gist.githubusercontent.com/tdreyno/4278655/raw/7b0762c09b519f40397e4c3e100b097d861f5588/airports.json');

      // Loop through markers
      for(var i = 0;i < markers.length;i++){
        // Add marker
        addMarker(markers[i]);
      }
       
      // Add Marker Function
      function addMarker(props){
        console.log(props.coords.length);
       // for(var j=0;j<props.coords.length;j++){
        var marker = new google.maps.Marker({

          position:props.coords[0],
          map:map,
          icon:props.iconImage
        
      });

        // Check for customicon
        if(props.iconImage){
          // Set icon image
          marker.setIcon(props.iconImage);

        }
        // Check content
        if(props.content){
          var infoWindow = new google.maps.InfoWindow({

            content:props.content
          });
        
       google.maps.event.addListener(marker, 'mouseover', function(){
              marker.setIcon(image5);
           infoWindow.open(map, marker);
          });
        google.maps.event.addListener(marker, 'mouseout', function(){
            infoWindow.close(map, marker);
            marker.setIcon(image1);
          });
          
          var change;
          google.maps.event.addListener(marker,'mouseover',function(){
              change=document.getElementsByClassName("navbar-inverse1")[0];
              change.ClassName="changed";
              change.style.opacity="1.0";

              console.log(props.content);
              var flightPath = new google.maps.Polyline({
          path: props.coords,
          geodesic: true,
          strokeColor: '#FF0000',
          strokeOpacity: 1.0,
          strokeWeight: 2
        });
		google.maps.event.addListener(marker,'mouseout',function(){
		           flightPath.setMap(null);
		});
               flightPath.setMap(map);
              var information=document.getElementsByTagName("H1")[0];
                information.innerHTML=props.content;

          });
          google.maps.event.addListener(marker,'mouseout',function(){
              if(change.ClassName=="changed"){
                  change.ClassName="navbar-inverse1";
                  change.style.opacity="0.0"

              }


          });


        }
      }

    }
  
  function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
