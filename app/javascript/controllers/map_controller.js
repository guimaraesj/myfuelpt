import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = { apiKey: String, markers: Array, marker: Object }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/mapbox/streets-v10',
      //center: [-24, 42], // starting center in [lng, lat]
      //zoom: 1 // starting zoom
    });

    if (this.markersValue.length) { //length estava escrito como lenght.
      this.#addMarkersToMap()
      this.#fitMapToMarkers()
      this.#getUserLocation() //added to get user location

    } else {
      this.#addMarkerToMap()
      this.#fitMapToMarker()
    }
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach((marker) => {
      bounds.extend([ marker.lng, marker.lat ])
    })
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #addMarkerToMap() {
    new mapboxgl.Marker()
      .setLngLat([ this.markerValue.lng, this.markerValue.lat ])
      .addTo(this.map)
  }

  #fitMapToMarker() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ this.markerValue.lng, this.markerValue.lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  //new function to get user location:
  //link: https://docs.mapbox.com/mapbox-gl-js/api/markers/#geolocatecontrol
  #getUserLocation() {
    map.addControl(
      new mapboxgl.GeolocateControl({
        positionOptions: {
        enableHighAccuracy: true
        },
        // When active the map will receive updates to the device's location as it changes.
        trackUserLocation: true,
        // Draw an arrow next to the location dot to indicate which direction the device is heading.
        showUserHeading: true
      })
    );
    navigator.geolocation.getCurrentPosition((position) => {
      this.start = [position.coords.lng, position.coords.LngLatBounds]
      // this.start = [10,10]
      this.connectRoute() //falta definir esta função.
    })
  }
}

//this goes where??
//https://docs.mapbox.com/mapbox-gl-js/api/markers/#popup#getlnglat
// Store the marker's longitude and latitude coordinates in a variable
// const lngLat = marker.getLngLat();
// Print the marker's longitude and latitude values in the console
// console.log(`Longitude: ${lngLat.lng}, Latitude: ${lngLat.lat}`);
