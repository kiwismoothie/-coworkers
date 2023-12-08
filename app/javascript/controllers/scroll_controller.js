import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    this.element.scrollTop = this.element.scrollHeight
  }

  reset() {
    this.element.scrollTop = this.element.scrollHeight
  }
}
