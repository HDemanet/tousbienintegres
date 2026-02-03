class Candidate < ApplicationRecord
  has_one_attached :photo

  enum country: {
    belgique: 0,
    pays_bas: 1,
    luxembourg: 2
  }

  validates :name, presence: true
  validates :country, presence: true

  scope :ordered, -> { order(position: :asc, created_at: :asc) }
  scope :featured_first, -> { order(featured: :desc, position: :asc) }

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
end
