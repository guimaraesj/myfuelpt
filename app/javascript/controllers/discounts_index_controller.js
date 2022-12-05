import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="discounts-index"
export default class extends Controller {
  static targets = ["discounts-index", "form"]

  displayForm() {
    // this.infosTarget.classList.add("d-none")
    this.formTarget.classList.toggle("d-none")
    console.log('works')
  }
}
