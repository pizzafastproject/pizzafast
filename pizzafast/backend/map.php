<?php
require_once 'coordinatesToBrowser.php';
?>
<!DOCTYPE html> 
<html> 
<head>  
<meta charset="utf-8">  
<meta name="viewport" content="width=device-width, initial-scale=1" > 
<link   rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
        integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
        crossorigin=""/> 
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
            integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
            crossorigin=""></script>  
<link rel="stylesheet" type="text/css" href="style.css"> 

</head>
<body> 
    <div id="mapid" style="height: 300px; width: 400px; "></div>   
    <script>
        var myMap = L.map('mapid',{center:[ 59.9386, 30.3141 ], zoom: 12});
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(myMap);
        var toIcon = L.icon({
            iconUrl: '/images/to.png',
            iconSize:     [38, 38], // size of the icon
        });
        var courierIcon = L.icon({
            iconUrl: '/images/courier.png',
            iconSize:     [38, 38], // size of the icon
        });
        var to = L.marker([59.9386, 30.3141],{icon: toIcon}).addTo(myMap);
        var courier = L.marker([60, 30.29],{icon: courierIcon}).addTo(myMap);
    </script>
</body> 
</html>
