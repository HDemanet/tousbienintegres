// app/javascript/controllers/postal_code_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["postalCode", "city"]

  // Mapping codes postaux → villes (synchronisé avec le helper Ruby)
  static cities = {
    '1000': 'Bruxelles',
    '1020': 'Laeken',
    '1030': 'Schaerbeek',
    '1040': 'Etterbeek',
    '1050': 'Ixelles',
    '1060': 'Saint-Gilles',
    '1070': 'Anderlecht',
    '1080': 'Molenbeek-Saint-Jean',
    '1082': 'Berchem-Sainte-Agathe',
    '1083': 'Ganshoren',
    '1090': 'Jette',
    '1140': 'Evere',
    '1150': 'Woluwe-Saint-Pierre',
    '1160': 'Auderghem',
    '1170': 'Watermael-Boitsfort',
    '1180': 'Uccle',
    '1190': 'Forest',
    '1200': 'Woluwe-Saint-Lambert',
    '1210': 'Saint-Josse-ten-Noode',
    '1300': 'Wavre',
    '1310': 'La Hulpe',
    '1330': 'Rixensart',
    '1340': 'Ottignies-Louvain-la-Neuve',
    '1348': 'Louvain-la-Neuve',
    '1410': 'Waterloo',
    '1420': 'Braine-l\'Alleud',
    '2000': 'Anvers',
    '3000': 'Louvain',
    '4000': 'Liège',
    '5000': 'Namur',
    '6000': 'Charleroi',
    '7000': 'Mons',
    '8000': 'Bruges',
    '9000': 'Gand'
    // Ajoutez les mêmes que dans le helper Ruby
  }

  connect() {
    console.log("Postal code controller connected")
  }

  updateCity() {
    const postalCode = this.postalCodeTarget.value
    const city = this.constructor.cities[postalCode]

    if (city) {
      this.cityTarget.value = city
      this.cityTarget.readOnly = true
    } else {
      this.cityTarget.readOnly = false
    }
  }
}
