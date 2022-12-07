import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="stations-order"
export default class extends Controller {
  static targets = ["priceButton", "distanceButton"]

  connect() {
    //confirmar se a informação do click chega ao console log
    console.log(this.priceButtonTarget)
    console.log(this.distanceButtonTarget)
    //confirmar se está correto abaixo:
    this.priceButtonTarget.classsList.add("d-none")
    this.distanceButtonTarget.classsList.remove("d-none")
  }
}
