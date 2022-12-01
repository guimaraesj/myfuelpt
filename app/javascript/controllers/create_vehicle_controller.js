import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "vehicleForm" ]

  connect() {
  }

  createVehicle(event) {
    event.preventDefault()
    fetch(this.vehicleFormTarget.action,
      {
        method: "POST",
        headers: { "Accept": "application/json"},
        body: new FormData(this.vehicleFormTarget)
      }
    )
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        if (data.hasOwnProperty('form')) {
          console.log(1)
          this.vehicleFormTarget.outerHTML = data["form"]
        }

      })
  }
}
