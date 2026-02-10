// app/javascript/controllers/articles_filter_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["card", "filterBtn", "grid", "noResults"]

  connect() {
    console.log("Articles filter controller connected")
  }

  filterAll(event) {
    event.preventDefault()

    // Reset tous les boutons
    this.filterBtnTargets.forEach(btn => btn.classList.remove("active"))
    event.currentTarget.classList.add("active")

    // Afficher toutes les cards
    this.cardTargets.forEach(card => {
      card.classList.remove("d-none")
    })

    this.checkResults()
  }

  filter(event) {
    event.preventDefault()
    const country = event.currentTarget.dataset.country

    // Reset tous les boutons
    this.filterBtnTargets.forEach(btn => btn.classList.remove("active"))
    event.currentTarget.classList.add("active")

    // Filtrer les cards
    this.cardTargets.forEach(card => {
      if (card.dataset.country === country) {
        card.classList.remove("d-none")
      } else {
        card.classList.add("d-none")
      }
    })

    this.checkResults()
  }

  checkResults() {
    const visibleCards = this.cardTargets.filter(card => !card.classList.contains("d-none"))

    if (visibleCards.length === 0) {
      this.noResultsTarget.classList.remove("d-none")
    } else {
      this.noResultsTarget.classList.add("d-none")
    }
  }
}
