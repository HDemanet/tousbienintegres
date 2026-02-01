// app/javascript/rails_admin.js
import jquery from "jquery"
import Rails from "@rails/ujs"

// Make jQuery available globally
window.jQuery = jquery
window.$ = jquery

Rails.start()
