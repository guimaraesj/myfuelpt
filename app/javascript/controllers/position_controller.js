import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="position"
export default class extends Controller {
  static values = {
    fuelTypeId: Number,
    coords: Boolean
  }

  connect() {
    if (!this.coordsValue) {
      navigator.geolocation.getCurrentPosition((position) => {
        this.#sendCurrentPosition(position)
      })
    }
  }

  #sendCurrentPosition(position) {
    fetch(`/stations_fuel_types?fuel_type_id=${this.fuelTypeIdValue}&user_lat=${position.coords.latitude}&user_lng=${position.coords.longitude}`, {
      headers: { 'Accept': 'application/json' }
    })
    .then(response => response.json())
    .then((data) => {
      this.element.outerHTML = data.cards
    })
  }


}
