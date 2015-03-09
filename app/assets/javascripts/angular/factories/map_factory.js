demandsApp.factory('mapFactory', ['$resource', function($resource){
  
  return { 
    buildMap: function(map_name) {
      
      var map_id = (map_name == '') ? 'map' : map_name;

      var map = L.map(map_id, { 
        fullScreen: true, 
        scrollWheelZoom: false 
      }).setView([-22.9083, -43.2108], 13);

      //http://{s}.tiles.mapbox.com/v4/luizfonseca.7532f8a3/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibHVpemZvbnNlY2EiLCJhIjoiMTFNcXRXdyJ9.5PRw57nx5srpwP838-KjVQ
      var layer = L.tileLayer('http://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}.png', {
        attribution: '&copy; LAB.Rio'
      });


      map.addLayer(layer);

      return map;
    },

    
  }

}]);
