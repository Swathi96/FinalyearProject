<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="user-scalable=no"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
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
    margin-top: -675px;
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
    min-height: 625px;
    max-height: 630px;
       margin-left: -273px;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    width: 20%;
    font-color:white;
}
.navbar-inverse2 {
      float: left;
    background-color: #222;
    border-color: #080808;
    margin-top: -21px;
    min-height: 625px;
    max-height: 630px;
   
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    width: 20%;
    font-color:white;
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
     <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHjgFXZPw-mYg9LTqKz51NK1ADWU9aQsc&callback=initMap">
    </script>
    <script>
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

     

        var image1='plane.png';
        var image2='plane2.png';
          var image3='AA.jpg';
          var image4='planeee.png';
          var image5='plane22.png';
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

  </script>
</head>
<body>
  
  <div id="map" style="width:500px;height:500px;"></div>
  
 
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
      <form class="navbar-form navbar-right" action="/action_page.php" style="float:right">
      <div class="input-group" >
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
      
    </div>
  </div>
</nav>
 <nav class="navbar navbar-inverse2" style="opacity:1.0">
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
        <h1 style="color:white"> hi</h1>
      </div>
    <img id="flight-image" src="AA.jpg" alt="flight image"/>
    <br>
    <div>
      <table id="details" style="color:red;width:100%;height:40%" border="1">
        <tr style="background-color:#D3D3D3">
       <td align="middle" colspan=2 > <span style="font-size:50px">KUL </span> <br> <span style="font-size:15px">Kuala lampur  </span>  </td>
	    <!--  <img  src="airplane-flight.png" alt="flight image"/> -->
        <td align="middle" colspan=2> <span style="font-size:50px">  AE </span> <br> <span style="font-size:15px"> ABU DHABI </span> </td>
		
        </tr>
        <tr style="background-color:#A9A9A9">
          <td align="middle" colspan=2> DEPARTURE </td>
          <td align="middle" colspan=2> ARRIVAL </td>
		  
        </tr>
        <tr style="background-color:#A9A9A9">
          <td > SCHEDULED </td>
		  <td align="middle"> 19:43 </td>
          <td > SCHEDULED</td>
		  <td align="middle"> 22:57 </td>
        </tr>
        <tr style="background-color:#A9A9A9">
          <td> ACTUAL </td>
		  <td align="middle"> 19:30 </td>
          <td> ACTUAL </td>
		  <td align="middle"> 22:30 </td>
        </tr>
      </table>
	  <div style="background-color:#00688B;font-color:white"> DETAILS </div>
	  <table style="color:red;width:100%;height:40%" border="1">
	     <tr style="background-color:#A9A9A9" >
		   <!--  <td rowspan=2  align="middle" > <img  src="airplane-flight.png" alt="flight image"/> </td>
		 -->
		 
		 <td colspan=2   align="middle" style="background-color:#D3D3D3"> TYPE <br> Etihad Airways</td>
		 </tr>
		 <tr style="background-color:#D3D3D3">
		 <td rowspan=1 > REGISTRATION <br> VT-IEU </td>
		 <td rowspan=1 > MODE-s "HEX-CODE" <br>8961e6 </td>
		 </tr>
	  </table>
	   <div style="background-color:#00688B;font-color:white"> SPEED AND ALTITUDE GRAPH</div>
	  
    </div>
</nav>
 <nav>
      <div style="height:30%;width:80%;background-color:black">  </div>
 </nav>
  

 
 
  </body>
  </html>
  