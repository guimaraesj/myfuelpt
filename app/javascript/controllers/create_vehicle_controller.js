import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "vehicleForm", "vehicleFuelTypeForm" ]

  connect() {
  }

  createVehicle(event) {
    const forms = this.vehicleFuelTypeFormTargets
    forms.forEach((form) => {
      fetch(`${form.action}/?new_vehicle=${data.vehicleId}`,
        {
          method: "POST",
          headers: { "Accept": "application/json"},
          body: new FormData(form)
        }
        )
    })
  }


  displayFuelTypeForm(event) {
    event.preventDefault()
    fetch("/vehicles/1/vehicle_fuel_types/new",
      {
        headers: { "Accept": "application/json"},
      }
      )
      .then(response => response.json())
      .then((data) => {
        event.target.insertAdjacentHTML("beforebegin", data.form)
      })
  }
}
