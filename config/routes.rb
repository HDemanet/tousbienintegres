# config/routes.rb
Rails.application.routes.draw do
  # Admin
  devise_for :users

  # Dashboard admin personnalisé
  namespace :admin do
    root to: 'dashboard#index'

    # Export CSV
    resources :survey_responses, only: [:destroy] do
      collection do
        get :export
      end
    end

    # Gestion articles
    resources :articles, only: [:new, :create, :edit, :update, :destroy]
  end

  # Rails Admin (interface de gestion avancée - optionnel)
  mount RailsAdmin::Engine => '/admin/rails', as: 'rails_admin'

  # Front-office
  root to: 'pages#home'

  # Pages statiques
  get 'qui-sommes-nous', to: 'pages#about', as: :about
  get 'nos-propositions', to: 'pages#proposals', as: :proposals
  get 'comment-voter', to: 'pages#how_to_vote', as: :how_to_vote

  # Enquête
  resources :survey_responses, only: [:new, :create] do
    collection do
      get :thank_you
    end
  end

  # Articles (page publique "Actualités")
  resources :articles, only: [:index, :show]

  # Contact
  resources :contacts, only: [:new, :create] do
    collection do
      get :thank_you
    end
  end

  # Pages légales
  get 'mentions-legales', to: 'pages#legal', as: :legal
  get 'politique-de-confidentialite', to: 'pages#privacy', as: :privacy
  get 'politique-de-cookies', to: 'pages#cookies', as: :cookies
  get 'declaration-accessibilite', to: 'pages#accessibility', as: :accessibility
end
