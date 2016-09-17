﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageNoCss.master" AutoEventWireup="true" CodeFile="MapTesting.aspx.cs" Inherits="MapTesting" EnableEventValidation="False" %>
<%@ OutputCache Duration="600" VaryByParam="*" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" Runat="Server">
    <style type="text/css">
        #map-canvas {
            height: 690px;
            width:900px;
        }
    </style>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false">
    </script>

    <script type="text/javascript">

        function initialize(markers) {

            
            //var markers = [
            //{
            //    "title": "Panipat",
            //    "lat": 29.3928,
            //    "lng": 76.9695,
            //    "description": "Panipat"
            //},
            //{
            //    "title": "Gurgaon",
            //    "lat": 28.4601,
            //    "lng": 77.0193,
            //    "description": "Gurgaon"
            //}];
            var bounds = new google.maps.LatLngBounds();
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 11,
                styles: [{ "featureType": "landscape", "stylers": [{ "hue": "#F1FF00" }, { "saturation": -27.4 }, { "lightness": 9.4 }, { "gamma": 1 }] }, { "featureType": "road.highway", "stylers": [{ "hue": "#0099FF" }, { "saturation": -20 }, { "lightness": 36.4 }, { "gamma": 1 }] }, { "featureType": "road.arterial", "stylers": [{ "hue": "#00FF4F" }, { "saturation": 0 }, { "lightness": 0 }, { "gamma": 1 }] }, { "featureType": "road.local", "stylers": [{ "hue": "#FFB300" }, { "saturation": -38 }, { "lightness": 11.2 }, { "gamma": 1 }] }, { "featureType": "water", "stylers": [{ "hue": "#00B6FF" }, { "saturation": 4.2 }, { "lightness": -63.4 }, { "gamma": 1 }] }, { "featureType": "poi", "stylers": [{ "hue": "#9FFF00" }, { "saturation": 0 }, { "lightness": 0 }, { "gamma": 1 }] }],
                mapTypeId: google.maps.MapTypeId.ROADMAP
                //  marker:true
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                bounds.extend(marker.position);
                (function (marker, data) {

                    // Attaching a click event to the current marker
                    google.maps.event.addListener(marker, "click", function (e) {
                        window.open(data.URL);
                        // infoWindow.setContent(data.description);
                        //infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
            map.fitBounds(bounds);
        }
    </script>
    
    
    <div>
        <h1 style="width:100%;font-family:Verdana;font-size:36px;color:#3c3c3c;" align="center">  Vacation Rentals, B&Bs, Resorts & Hotels </h1>
    </div>
    
    <div id="map_canvas" style="width: 933px; height: 485px;"></div>

     <script type="text/javascript">
         document.getElementById("ctl00_dvLft").style.paddingTop = "60px";
    </script>

   
</asp:Content>

