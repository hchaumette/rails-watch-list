import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['form']

  new(event) {
    event.preventDefault();
    this.formTarget.classList.toggle('d-none')
  }
}
