// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

// Rails Admin (seulement pour les pages admin)
if (window.location.pathname.startsWith('/admin')) {
  import("rails_admin")
}
