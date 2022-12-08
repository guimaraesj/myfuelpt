import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="stations-order"
export default class extends Controller {
  static targets = ["sortbyprice", "sortbydistance", "pricebutton", "distancebutton"]

  connect() {
    //confirmar se a informação do click chega ao console log
    // console.log("stations order controller connected")
    // console.log(this.sortbypriceTarget)
    // console.log(this.sortbydistanceTarget)
  }

  orderByPrice() {
    this.sortbydistanceTarget.classList.add("d-none")
    this.sortbypriceTarget.classList.remove("d-none")
    this.pricebuttonTarget.classList.add("active")
    this.distancebuttonTarget.classList.remove("active")
  }

  orderByDistance() {
    this.sortbydistanceTarget.classList.remove("d-none")
    this.sortbypriceTarget.classList.add("d-none")
    this.pricebuttonTarget.classList.remove("active")
    this.distancebuttonTarget.classList.add("active")

  }
}
