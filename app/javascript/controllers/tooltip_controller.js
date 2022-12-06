import { Controller } from "@hotwired/stimulus"
//import { Tooltip } from "bootstrap/dist/js/bootstrap.bundle.js"; //removed import. Was causing error.

// Connects to data-controller="tooltip"
export default class extends Controller {
  connect() {
    new Tooltip(this.element)
  }
}
