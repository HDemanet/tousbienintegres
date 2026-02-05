// app/javascript/controllers/index.js
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"

// Charge automatiquement TOUS les controllers du dossier
eagerLoadControllersFrom("controllers", application)
