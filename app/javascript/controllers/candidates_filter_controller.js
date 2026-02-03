// app/javascript/controllers/candidates_filter_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["card", "filterBtn", "grid", "noResults"]

  connect() {
    console.log("Candidates filter controller connected")
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

  toggleBio(event) {
    event.preventDefault()
    event.stopPropagation() // Empêche la propagation

    const bio = event.target.closest('.candidate-bio')
    if (!bio) return

    const short = bio.querySelector('.bio-short')
    const full = bio.querySelector('.bio-full')

    if (short && full) {
      short.classList.toggle('d-none')
      full.classList.toggle('d-none')
    }
  }
}
