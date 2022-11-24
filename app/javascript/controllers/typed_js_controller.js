import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Share!"],
      typeSpeed: 250,
      loop: true
    })
  }
}
