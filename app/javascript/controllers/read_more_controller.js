import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "fullText", "truncate" ]

  connect() {
   console.log("Hello, Stimulus!")
  }

  toggle() {
    this.fullTextTarget.classList.toggle("d-none");
    this.truncateTarget.classList.toggle("d-none");
  }
}
