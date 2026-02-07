# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [
    :home,
    :about,
    :proposals,
    :how_to_vote,
    :legal,
    :privacy,
    :cookies,
    :accessibility
  ]

  def home
    # Page d'accueil
    @latest_articles = Article.published.limit(3)
  end

  def about
    # Qui sommes-nous
    @candidates = Candidate.ordered.includes(photo_attachment: :blob)
  end

  def proposals
    # Nos propositions
  end

  def how_to_vote
    # Comment voter
  end

  def legal
    # Mentions légales
  end

  def privacy
    # Politique de confidentialité
  end

  def cookies
    # Politique de cookies
  end

  def accessibility
    # Déclaration d'accessibilité
  end
end