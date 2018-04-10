<!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="user-scalable=no"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="./style.css">
<script type="text/JavaScript" src="./js/Map.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
 </script>
 <script src="http://maps.googleapis.com/maps/api/js?key=####################&sensor=false" type="text/javascript"></script>
  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHjgFXZPw-mYg9LTqKz51NK1ADWU9aQsc&callback=initMap">
    </script>
 <style>
     body{
        overflow-x: hidden;
        overflow-y: hidden;

     }
     html {
    -webkit-text-size-adjust: none
}
      #map {
     background-repeat: repeat-x;
    height: 100% !important;
    width: 100% !important;
    min-width: 320px;
    min-height: 264px;
    position: fixed;
    overflow: hidden;
    margin: 0px;
    padding: 0px;
    font: normal 14px Helvetica Neue, Arial, sans-serif;
   
    -webkit-font-smoothing: antialiased;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .dropbtn {
    background-color: #424242;
    color: #BDBDBD;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    width:100%;
    border-style: solid;
    border-color: #212121;
}

/* Dropdown button on hover & focus */
.dropbtn:hover, .dropbtn:focus {
    background-color: #2980B9;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd}

/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}
        #flight-image{
                min-height:20% ;
    max-height: 20%;
   
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
  width: 100% ;

        }
    .bootstrap #nav{
    background: black;
    border: 0;
    position: relative;
    height: 52px;
  margin-top: -670px;
    font-family: "Open Sans";
}
#search{
    font-color:#fffff;
  width: 830%;
    height: 105%;
    z-index: 1000;
    margin-top: -45px;
    background: rgba(0,0,0,0);
    position: absolute;
    right: 2px;
}
#search-button {
  width: 100px;
  height: 50px;
}
    
 #search-container {
      width: 25px;
  height: 25px;
    font-size: 10px;
    z-index: 1000;
    margin-top: 2px;
    position: absolute;
    right: 2px;
    
}

.navbar-inverse {
    background-color: #222;
    border-color: #080808;
    margin-top: -50%;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    height: 2%;
}

.navbar-inverse1 {
      float: left;
    background-color: #222;
    border-color: #080808;
    margin-top: -21px;
    min-height: 690px;
    max-height: 690px;
     margin-left: -20%;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    width: 23.5%;
    font-color:white;
}

.navbar-inverse2 {
      float: left;
    background-color: #222;
    border-color: #080808;
    margin-top: -21px;
    min-height: 710px;
    max-height: 710px;  
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    width: 20%;
    font-color:white;
}
}
#toleft #toright{
  margin-top: 370px;
}
#titlemain{
    height: 29px;
    color: #ffffff;
    z-index: 1000;
    margin-top: -45px;
    /* background: #ffffff; */
    position: absolute;
    float: left;
    font-style: inherit;
    margin-left: 50px
}
#search-icon {
    width: 25px;
      height: 25px;
    font-size: 10px;
    z-index: 1000;
    margin-top: 12px;
    background: rgba(0,0,0,0.33);
    position: absolute;
    right: 2px;
    
}
.info-box{

width: 100px;
height:250px;
background-color: #00000;

}
    </style>
    
</head>
<body onload="loadJSON()">
  
  <div id="map" style="width:500px;height:500px;"></div>
  
    <script>
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
			{ y: 0 },
			{ y: 54},
			{ y: 90 },
			{ y: 120 },
			{ y: 270 },
			{ y: 270 },
			{ y: 430 },
			{ y: 430 },
			{ y: 430 },
			{ y: 400 },
			{ y: 400 },
			{ y: 400 }
		]
	}]
});
chart.render();

}
    var nite = {
    	    map: null,
    	    date: null,
    	    sun_position: null,
    	    earth_radius_meters: 6371008,
    	    marker_twilight_civil: null,
    	    marker_twilight_nautical: null,
    	    marker_twilight_astronomical: null,
    	    marker_night: null,

    	    init: function(map) {
    	        if(typeof google === 'undefined'
    	           || typeof google.maps === 'undefined') throw "Nite Overlay: no google.maps detected";

    	        this.map = map;
    	        this.sun_position = this.calculatePositionOfSun();

    	        this.marker_twilight_civil = new google.maps.Circle({
    	            map: this.map,
    	            center: this.getShadowPosition(),
    	            radius: this.getShadowRadiusFromAngle(0.566666),
    	            fillColor: "#000",
    	            fillOpacity: 0.1,
    	            strokeOpacity: 0,
    	            clickable: false,
    	            editable: false
    	        });
    	        this.marker_twilight_nautical = new google.maps.Circle({
    	            map: this.map,
    	            center: this.getShadowPosition(),
    	            radius: this.getShadowRadiusFromAngle(6),
    	            fillColor: "#000",
    	            fillOpacity: 0.1,
    	            strokeOpacity: 0,
    	            clickable: false,
    	            editable: false
    	        });
    	        this.marker_twilight_astronomical = new google.maps.Circle({
    	            map: this.map,
    	            center: this.getShadowPosition(),
    	            radius: this.getShadowRadiusFromAngle(12),
    	            fillColor: "#000",
    	            fillOpacity: 0.1,
    	            strokeOpacity: 0,
    	            clickable: false,
    	            editable: false
    	        });
    	        this.marker_night = new google.maps.Circle({
    	            map: this.map,
    	            center: this.getShadowPosition(),
    	            radius: this.getShadowRadiusFromAngle(18),
    	            fillColor: "#000",
    	            fillOpacity: 0.1,
    	            strokeOpacity: 0,
    	            clickable: false,
    	            editable: false
    	        });
    	    },
    	    getShadowRadiusFromAngle: function(angle) {
    	        var shadow_radius =  this.earth_radius_meters * Math.PI * 0.5;
    	        var twilight_dist = ((this.earth_radius_meters * 2 * Math.PI) / 360) * angle;
    	        return shadow_radius - twilight_dist;
    	    },
    	    getSunPosition: function() {
    	        return this.sun_position;
    	    },
    	    getShadowPosition: function() {
    	        return (this.sun_position) ? new google.maps.LatLng(-this.sun_position.lat(), this.sun_position.lng() + 180) : null;
    	    },
    	    refresh: function() {
    	        if(!this.isVisible()) return;
    	        this.sun_position = this.calculatePositionOfSun(this.date);
    	        var shadow_position = this.getShadowPosition();
    	        this.marker_twilight_civil.setCenter(shadow_position);
    	        this.marker_twilight_nautical.setCenter(shadow_position);
    	        this.marker_twilight_astronomical.setCenter(shadow_position);
    	        this.marker_night.setCenter(shadow_position);
    	    },
    	    jday: function(date) {
    	        return (date.getTime() / 86400000.0) + 2440587.5;
    	    },
    	    calculatePositionOfSun: function(date) {
    	        date = (date instanceof Date) ? date : new Date();

    	        var rad = 0.017453292519943295;

    	        // based on NOAA solar calculations
    	        var ms_past_midnight = ((date.getUTCHours() * 60 + date.getUTCMinutes()) * 60 + date.getUTCSeconds()) * 1000 + date.getUTCMilliseconds();
    	        var jc = (this.jday(date) - 2451545)/36525;
    	        var mean_long_sun = (280.46646+jc*(36000.76983+jc*0.0003032)) % 360;
    	        var mean_anom_sun = 357.52911+jc*(35999.05029-0.0001537*jc);
    	        var sun_eq = Math.sin(rad*mean_anom_sun)*(1.914602-jc*(0.004817+0.000014*jc))+Math.sin(rad*2*mean_anom_sun)*(0.019993-0.000101*jc)+Math.sin(rad*3*mean_anom_sun)*0.000289;
    	        var sun_true_long = mean_long_sun + sun_eq;
    	        var sun_app_long = sun_true_long - 0.00569 - 0.00478*Math.sin(rad*125.04-1934.136*jc);
    	        var mean_obliq_ecliptic = 23+(26+((21.448-jc*(46.815+jc*(0.00059-jc*0.001813))))/60)/60;
    	        var obliq_corr = mean_obliq_ecliptic + 0.00256*Math.cos(rad*125.04-1934.136*jc);

    	        var lat = Math.asin(Math.sin(rad*obliq_corr)*Math.sin(rad*sun_app_long)) / rad;

    	        var eccent = 0.016708634-jc*(0.000042037+0.0000001267*jc);
    	        var y = Math.tan(rad*(obliq_corr/2))*Math.tan(rad*(obliq_corr/2));
    	        var rq_of_time = 4*((y*Math.sin(2*rad*mean_long_sun)-2*eccent*Math.sin(rad*mean_anom_sun)+4*eccent*y*Math.sin(rad*mean_anom_sun)*Math.cos(2*rad*mean_long_sun)-0.5*y*y*Math.sin(4*rad*mean_long_sun)-1.25*eccent*eccent*Math.sin(2*rad*mean_anom_sun))/rad);
    	        var true_solar_time_in_deg = ((ms_past_midnight+rq_of_time*60000) % 86400000) / 240000;

    	        var lng = -((true_solar_time_in_deg < 0) ? true_solar_time_in_deg + 180 : true_solar_time_in_deg - 180);

    	        return new google.maps.LatLng(lat, lng);
    	    },
    	    setDate: function(date) {
    	        this.date = date;
    	        this.refresh();
    	    },
    	    setMap: function(map) {
    	        this.map = map;
    	        this.marker_twilight_civil.setMap(this.map);
    	        this.marker_twilight_nautical.setMap(this.map);
    	        this.marker_twilight_astronomical.setMap(this.map);
    	        this.marker_night.setMap(this.map);
    	    },
    	    show: function() {
    	        this.marker_twilight_civil.setVisible(true);
    	        this.marker_twilight_nautical.setVisible(true);
    	        this.marker_twilight_astronomical.setVisible(true);
    	        this.marker_night.setVisible(true);
    	        this.refresh();
    	    },
    	    hide: function() {
    	        this.marker_twilight_civil.setVisible(false);
    	        this.marker_twilight_nautical.setVisible(false);
    	        this.marker_twilight_astronomical.setVisible(false);
    	        this.marker_night.setVisible(false);
    	    },
    	    isVisible: function() {
    	        return this.marker_night.getVisible();
    	    }
    	}
    function initMap(){
      // Map options
    
      var options = {
        zoom:6,
        center:{lat:13.367987,lng:77.835677}

      }

      // New map
      var map = new google.maps.Map(document.getElementById('map'), options);
        var opt = { minZoom: 2, maxZoom: 9 };
map.setOptions(opt);
nite.init(map);
      // Listen for click on map
     $(document).ready(function() {
    $(window).resize(function() {
        google.maps.event.trigger(map, 'resize');
    });
    google.maps.event.trigger(map, 'resize');
});		var fimg;
		var image1='./images/plane.png';
        var image2='./images/plane2.png';
        var image3='./images/AA.jpg';
        var image4='./images/planeee.png';
        var image5='./images/plane22.png';
     var url= 'https://rawgit.com/tdreyno/4278655/raw/7b0762c09b519f40397e4c3e100b097d861f5588/airports.json';
       // var url = "https://raw.githubusercontent.com/test/Utility/ScheduleTest.json";
       $("#searchBtn").click(function(){

                 $.getJSON(url,function (data) {
					var port=JSON.stringify(data);
					var ports=JSON.parse(port);
					console.log("button clicked");
   	              for(var i in ports){
  	                 // Add marker
  	                // console.log(ports[i]);
  	                 addPmarker(ports[i]);
  	               }
  	          });
     });
       var pimg="./images/aeroplane.png";
       function addPmarker(props){
    	   //console.log("add pmarker called");
    	   var pcoords={"lat":parseFloat(props.lat),"lng":parseFloat(props.lon)}
			//console.log(props.lat+" "+props.lon);
     // image1='./images/plane.png';
      
   	   var pmarker = new google.maps.Marker({
       	
         position:pcoords,
         map:map,
         icon:pimg
       // Check for customicon
     });

     //  prehex=curhex;
       if(props.iconImage){
         // Set icon image
         pmarker.setIcon(props.iconImage);
       }
       // Check content
       if(props.name){
         var infoWindow = new google.maps.InfoWindow({

           content:props.name
         });
       
      google.maps.event.addListener(pmarker, 'mouseover', function(){
             //pmarker.setIcon(image5);
          infoWindow.open(map, pmarker);
         });
       google.maps.event.addListener(pmarker, 'mouseout', function(){
           infoWindow.close(map, pmarker);
        //   pmarker.setIcon(image1);
         });
         
        
		
      }
     }

       
   

     			 $.get("AdsbServ", function(data, status){
     				var markers=eval("("+data+")");
     	              console.log(markers);
     	              console.log(markers.length);
     	              for(var i in markers){
     	                 // Add marker
     	                 console.log(markers[i]);
     	                 addMarker(markers[i]);
     	               }
     	          });
     	         
     
		var count=0;
		var prehex=" ";
		var curhex=" ";
      function addMarker(props){
   console.log("add marker called");
  	
   
         //  console.log(props.coords.length);
       // for(var j=0;j<props.coords.length;j++){
       var coords={"lat":props.lat,"lng":props.lng}
			console.log(props.lat+""+props.lng+"  ");
      // image1='./images/plane.png';
       
    	   var marker = new google.maps.Marker({
        	//ar iconImage
          position:coords,
          map:map,
          icon:image1
        // Check for customicon
      });

      //  prehex=curhex;
        if(props.iconImage){
          // Set icon image
          marker.setIcon(props.iconImage);
        }
        // Check content
        if(props.name){
          var infoWindow = new google.maps.InfoWindow({

            content:props.name
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
          var type,speed,hex,img1;
          google.maps.event.addListener(marker,'mouseover',function(){
              change=document.getElementsByClassName("navbar-inverse1")[0];
              change.ClassName="changed";
              change.style.opacity="1.0";
              speed=document.getElementById("fspeed");
              speed.innerHTML=props.speed;
              hex=document.getElementById("fhex");
              hex.innerHTML=props.hex.toUpperCase();
             var fname=props.name;
             if((fname.search(/IGO/i))==0){
            	// alert(fname.search(/IGO/i));
            	 fimg="./flights/indigo.JPG";
            	 type=document.getElementById("ftype");
            	 type.innerHTML="INDIGO AIRWAYS";
             }
             if((fname.search(/JAI/i))==0){
            	// alert(fname.search(/IGO/i));
            	 fimg="./flights/Jet_Airways.jpg";
            	 type=document.getElementById("ftype");
            	 type.innerHTML="JET AIRWAYS";
             }
             if((fname.search(/IAD/i))==0){
             	// alert(fname.search(/IGO/i));
             	 fimg="./flights/airasia.jpg";
             	 type=document.getElementById("ftype");
             	 type.innerHTML="AIR ASIA INDIA";
              }
             if((fname.search(/VTI/i))==0){
             	// alert(fname.search(/IGO/i));
             	 fimg="./flights/vistara.jpg";
             	 type=document.getElementById("ftype");
             	 type.innerHTML="VISTARA";
              }
             if((fname.search(/AIC/i))==0){
             	// alert(fname.search(/IGO/i));
             	 fimg="./flights/airindia.jpg";
             	 type=document.getElementById("ftype");
             	 type.innerHTML="AIR INDIA";
              }
             if((fname.search(/SEJ/i))==0){
             	// alert(fname.search(/IGO/i));
             	 fimg="./flights/spicejet.jpg";
             	 type=document.getElementById("ftype");
             	 type.innerHTML="SPICE JET";
              }
             if((fname.search(/GOW/i))==0){
             	// alert(fname.search(/IGO/i));
             	 fimg="./flights/goair.jpg";
             	 type=document.getElementById("ftype");
             	 type.innerHTML="GO AIR";
              }
             if((fname.search(/ETD/i)==0)|((fname.search(/EY/i))==0)){
              	// alert(fname.search(/IGO/i));
              	 fimg="./flights/AA.jpg";
              	 type=document.getElementById("ftype");
              	 type.innerHTML="ETIHAD AIRWAY";
               }
             if((fname.search(/EK/i)==0)|((fname.search(/UAE/i))==0)){
               	// alert(fname.search(/IGO/i));
               	 fimg="./flights/emirates.jpg";
               	 type=document.getElementById("ftype");
               	 type.innerHTML="EMIRATES";
                }
           //  fimg="./flights/indigo.JPG";
              img1=document.getElementById("flight-image");
              img1.src=fimg;
            //  console.log(props.content);
              var flightPath = new google.maps.Polyline({
          path: [props.lng,props.lat],
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
                information.innerHTML=props.name;
          });
          google.maps.event.addListener(marker,'mouseout',function(){
              if(change.ClassName=="changed"){
                  change.ClassName="navbar-inverse1";
                  change.style.opacity="0.0"
                }
            });
       }
      }

    }var count=0;
    $.get("AdsbServ", function(data, status){
    	count++;	
    
       // alert("Data: " + count + "\nStatus: " + status);
    });
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

</script>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">    ADS-B Radar    </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="#">Home</a></li>
        <li class="dropdown">
           <a  href="#">Add coverage</a>
        <li><a href="#">Gallery</a></li>
        <li><a href="#">About us</a></li>
      </ul>
      <div class="navbar-form navbar-right"  style="float:right">
      <div class="input-group" >
        <input type="text" class="form-control" placeholder="Search" name="flightname" id="flightname">
        <div class="input-group-btn">
          <button class="btn btn-default" id="searchBtn">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </div>  
    </div>
  </div>
</nav>
 <nav class="navbar navbar-inverse2" style="opacity:0.0">
 <div class="dropdown1">
  <button onclick="myFunction();" class="dropbtn">Live updates<span class="caret" style="float:right;"></span></button>
  <div id="myDropdown" class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
<!---second-->
<div class="dropdown2">
  <button onclick="myFunction();" class="dropbtn">Social<span class="caret"style="float:right;"></span></button>
  <div id="myDropdown" class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
<!--third-->
<div class="dropdown3">
  <button onclick="myFunction();" class="dropbtn">New Flights<span class="caret"style="float:right;"></span></button>
  <div id="myDropdown" class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
  </nav>
<!-- side div part -->
  <nav class="navbar navbar-inverse1" style="opacity:0.0" >
    <div id="toleft" style="float:left; ">
        <h1 style="color:white"> </h1>
      </div>
    <img id="flight-image" src="" alt="flight image"/>
    <br>
    <div>
      <table id="details" style="color:red;width:100%;height:40%" border="1">
        <tr style="background-color:#D3D3D3">
       <td align="middle" colspan=2 > <span style="font-size:50px" id="fsource">KUL </span> <br> <span style="font-size:15px" id="fdest">Kuala lampur  </span>  </td>
	    <!--  <img  src="airplane-flight.png" alt="flight image"/> -->
        <td align="middle" colspan=2> <span style="font-size:50px">  AE </span> <br> <span style="font-size:15px"> ABU DHABI </span> </td>
		
        </tr>
        <tr style="background-color:#A9A9A9">
          <th align="middle" colspan=2 > DEPARTURE </th>
          <th align="middle" colspan=2> ARRIVAL </th>
		  
        </tr>
        <tr style="background-color:#A9A9A9">
          <th > SCHEDULED </th>
		  <td align="middle" id="s"> 19:43 </td>
          <th > SCHEDULED</th>
		  <td align="middle"> 22:57 </td>
        </tr>
        <tr style="background-color:#A9A9A9">
          <th> ACTUAL </th>
		  <td align="middle"> 19:30 </td>
          <th> ACTUAL </th>
		  <td align="middle"> 22:30 </td>
        </tr>
      </table>
	  <div style="background-color:#00688B;font-color:white"> DETAILS </div>
	  <table style="color:red;width:100%;height:40%" border="1">
	     <tr style="background-color:#A9A9A9" >
		 
		 <th colspan=3  align="middle" style="background-color:#AEEE3">REGISTRATION TYPE :</th><td style="background-color:#D7CCC8"id="ftype"> </td>
		 </tr>
		 
		 <tr style="background-color:#78909C">
		 <th rowspan=1 > SPEED :</th><td style="background-color:#CFD8DC" id="fspeed">400</td>
		 <th rowspan=1 > MODE-S code : </th><td style="background-color:#CFD8DC" id="fhex"></td>
		 </tr>
		
	  </table>
	  <div id="chartContainer" style="height: 175px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

</nav>
 <nav>
      <div style="height:30%;width:80%;background-color:black">  </div>
 </nav>
 
  </body>
  </html>
  