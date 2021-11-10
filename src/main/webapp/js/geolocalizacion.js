function initMap(){
    var latlng = {lat: 9.998141, lng: -84.119764};

    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: latlng
    });

    var marker = new google.maps.Marker({
        position: latlng,
        map: map,
        title: "Nos encontramos aquí"
    });

    var infoWindow = new google.maps.InfoWindow;
    infoWindow.setPosition(latlng);
    infoWindow.setContent('Direccion de la empresa');
    infoWindow.open(map);
    map.setCenter(latlng);

    if(navigator.geolocation){
        navigator.geolocation.getCurrentPosition(function(position){
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude,
            };

            var infoWindow2 = new google.maps.InfoWindow;
            infoWindow2.setPosition(pos);
            infoWindow2.setContent('Localizacion de cliente encontrada');
            infoWindow2.open(map);
            map.setCenter(pos);
        }, function(){
            handleLocationError(true, infoWindow2, map.getCenter());
        });
    }else{
        handleLocationError(false, infoWindow, map.getCenter());
    }

}

function handleLocationError(navegadorTieneGeolocalizacion, infoWindow, pos){
    infoWindow.setPosition(pos);
    infoWindow.setContent(navegadorTieneGeolocalizacion ? 'Error el usuario no permitio la geolocalizacion':
        'El navegador no soporta geolocalizacion' )
    infoWindow.open(map);
}