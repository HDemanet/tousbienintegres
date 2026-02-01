# app/models/survey_response.rb
class SurveyResponse < ApplicationRecord
  # Validations
  validates :first_name, :last_name, :email, :postal_code, :city, :country,
            :age_range, :years_in_belgium, :french_admin_rating,
            :belgian_admin_rating, :electoral_registration, presence: true

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :postal_code, length: { is: 4 }, numericality: { only_integer: true }
  validates :consent, acceptance: true

  # Sérialization pour les arrays (choix multiples)
  serialize :administrative_difficulties, coder: JSON
  serialize :interests, coder: JSON

  # Scopes pour statistiques
  scope :recent, -> { order(created_at: :desc) }
  scope :by_city, ->(city) { where(city: city) }
  scope :by_age_range, ->(range) { where(age_range: range) }

  # Constantes pour les choix (à utiliser dans le formulaire)
  AGE_RANGES = ['18-25', '26-35', '36-45', '46-55', '56-65', '66+'].freeze

  YEARS_IN_BELGIUM = [
    'Moins d\'1 an',
    '1-3 ans',
    '3-5 ans',
    '5-10 ans',
    'Plus de 10 ans'
  ].freeze

  PROFESSIONAL_STATUS = [
    'Actif',
    'Étudiant',
    'Retraité',
    'Sans emploi',
    'Autre'
  ].freeze

  EMPLOYER_TYPES = [
    'Employeur français',
    'Employeur belge',
    'Employeur d\'un autre pays',
    'Indépendant',
    'Autre'
  ].freeze

  CHILDREN_SCHOOLING = [
    'Non',
    'Oui, en École européenne',
    'Oui, au Lycée français',
    'Oui, en école belge',
    'Oui, autre'
  ].freeze

  ADMIN_RATINGS = [
    'Très difficile',
    'Difficile',
    'Neutre',
    'Facile',
    'Très facile',
    'Pas de contact'
  ].freeze

  ADMINISTRATIVE_DIFFICULTIES_OPTIONS = [
    'Fiscalité',
    'Social / Santé',
    'Retraite',
    'État civil (passeport, carte d\'identité, etc.)',
    'Scolarité des enfants',
    'Autre'
  ].freeze

  ELECTORAL_REGISTRATION_OPTIONS = [
    'Oui',
    'Non',
    'Ne sais pas'
  ].freeze

  INTERESTS_OPTIONS = [
    'Mieux connaître le rôle des élus consulaires',
    'Participer à des événements/réunions d\'information',
    'Recevoir notre newsletter',
    'Autre'
  ].freeze

  COUNTRIES = [
    'Belgique',
    'Pays-Bas',
    'Luxembourg'
  ].freeze

  # Méthodes statistiques
  def self.stats_by_age
    group(:age_range).count
  end

  def self.stats_by_city
    group(:city).count.sort_by { |_k, v| -v }.first(10).to_h
  end

  def self.stats_by_years_in_belgium
    group(:years_in_belgium).count
  end
end
