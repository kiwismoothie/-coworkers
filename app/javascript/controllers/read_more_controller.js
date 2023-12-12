import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
   console.log("Hello, Stimulus!")
  }

  toggle() {
    this.element.classList.toggle("hidden");
  }
}
