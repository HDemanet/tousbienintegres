# config/routes.rb
Rails.application.routes.draw do
  # Admin
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :admin do
    root to: 'dashboard#index'
  end

  # Front-office
  root to: 'pages#home'

  # Pages statiques
  get 'qui-sommes-nous', to: 'pages#about', as: :about
  get 'nos-propositions', to: 'pages#proposals', as: :proposals

  # Enquête
  resources :survey_responses, only: [:new, :create] do
    collection do
      get :thank_you
    end
  end

  # Articles (publications de Pierre-Luc)
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

  # Révèle les routes en dev
  # Uncomment to see all routes: rails routes
end
