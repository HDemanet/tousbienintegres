// app/javascript/controllers/navbar_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.handleScroll()
    window.addEventListener('scroll', this.handleScroll.bind(this))
  }

  disconnect() {
    window.removeEventListener('scroll', this.handleScroll.bind(this))
  }

  handleScroll() {
    const navbar = this.element

    if (window.scrollY > 50) {
      navbar.classList.add('navbar-scrolled')
    } else {
      navbar.classList.remove('navbar-scrolled')
    }
  }
}
