# app/models/candidate.rb
class Candidate < ApplicationRecord

  enum country: {
    belgique: 0,
    pays_bas: 1,
    luxembourg: 2
  }

  validates :name, presence: true
  validates :country, presence: true
  validates :photo_path, presence: true

  scope :ordered, -> { order(position: :asc, created_at: :asc) }
  scope :featured_first, -> { order(featured: :desc, position: :asc) }

  def photo_url
    photo_path.present? ? photo_path : "team/placeholder.jpg"
  end

  def country_flag
    case country
    when 'belgique' then '🇧🇪'
    when 'pays_bas' then '🇳🇱'
    when 'luxembourg' then '🇱🇺'
    end
  end

  def country_label
    case country
    when 'belgique' then 'Belgique'
    when 'pays_bas' then 'Pays-Bas'
    when 'luxembourg' then 'Luxembourg'
    end
  end

  def short_bio(length = 200)
    return bio if bio.blank? || bio.length <= length
    "#{bio[0..length]}..."
  end

  def has_linkedin?
    linkedin_url.present?
  end
end
