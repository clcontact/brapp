<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MyBeerApp.Models.BeerEvent>" %>

    <style type="text/css">      
        #map-canvas 
        {        height: 500px;      }    
    </style>    
    <script type="text/javascript" src="http://www.google.com/jsapi?autoload={'modules':[{name:'maps',version:3,other_params:'sensor=false'}]}"></script>

<div id="map-canvas"></div>
<script type="text/javascript">
  
//    $(document).ready(function() {
//    //alert("Fire on the map");
//        var latitude = <%: Model.Latitude%>;
//        var longitude = <%:Model.Longitude %>;
//                
//        if ((latitude == 0) || (longitude == 0))
//            NerdDinner.LoadMap();
//        else
//            NerdDinner.LoadMap(latitude, longitude, mapLoaded);
//    });
//      
//    function mapLoaded() {
//        var title = "<%: Model.Title %>";
//        var address = "<%: Model.Address %>";
//    
//        NerdDinner.LoadPin(NerdDinner._map.GetCenter(), title, address);
//        NerdDinner._map.SetZoomLevel(14);
//    }
    //https://developers.google.com/maps/articles/mvcfun
</script>
    <script type="text/javascript">
        function init() {
            var mapDiv = document.getElementById('map-canvas');
            var map = new google.maps.Map(mapDiv, {
                center: new google.maps.LatLng(<%=Model.Latitude%>, <%=Model.Longitude %>),
                zoom: 14,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
            var distanceWidget = new DistanceWidget(map);
        }
        //google.maps.event.addDomListener(window, 'load', init);    
        function DistanceWidget(map) {  
            this.set('map', map);  
            this.set('position', map.getCenter());  
            
            var marker = new google.maps.Marker({    
                draggable: false,    
                title: '<%: Model.Title %> @ <%: Model.Address %>'
                 });  
                // Bind the marker map property to the DistanceWidget map property  
                marker.bindTo('map', this);  
                // Bind the marker position property to the DistanceWidget position  
                // property  
                marker.bindTo('position', this);
                // Create a new radius widget
                var radiusWidget = new RadiusWidget();
//                // Bind the radiusWidget map to the DistanceWidget map
                radiusWidget.bindTo('map', this);
//                // Bind the radiusWidget center to the DistanceWidget position
                radiusWidget.bindTo('center', this, 'position');
        }
        

        function RadiusWidget() {  
            var circle = new google.maps.Circle({    strokeWeight: 1  });  
            // Set the distance property value, default to 50km.  
            this.set('distance', 15);  
            // Bind the RadiusWidget bounds property to the circle bounds property.  
            this.bindTo('bounds', circle);  
            // Bind the circle center to the RadiusWidget center property  
            circle.bindTo('center', this);  
            // Bind the circle map to the RadiusWidget map  
            circle.bindTo('map', this);  
            // Bind the circle radius property to the RadiusWidget radius property  
            circle.bindTo('radius', this);
        }
        DistanceWidget.prototype = new google.maps.MVCObject();
        RadiusWidget.prototype = new google.maps.MVCObject();
        /** * Update the radius when the distance has changed. */
        RadiusWidget.prototype.distance_changed = function() {  
	        this.set('radius', this.get('distance') * 100);
        };
    $(function () { 
        init(); 
    }); 
    </script>