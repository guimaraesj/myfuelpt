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
        headers: { "Accept": "application/json", "X-CSRF-Token": this.csrfToken },
        body: new FormData(this.formTarget)
      }
    )
      .then(response => response.json)
      .then((data) => {
        console.log(data)
      })
  }
}
