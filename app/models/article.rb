# app/models/article.rb
class Article < ApplicationRecord
  belongs_to :user

  # ✅ Active Storage pour upload Cloudinary
  has_one_attached :image

  # Callbacks
  before_validation :generate_slug
  before_save :set_published_at

  # Validations
  validates :title, presence: true, length: { maximum: 200 }
  validates :slug, presence: true, uniqueness: true
  validates :content, presence: true
  validates :excerpt, length: { maximum: 500 }, allow_blank: true

  # Validation image (optionnel)
  # validates :image, content_type: ['image/png', 'image/jpg', 'image/jpeg', 'image/webp'],
  #                   size: { less_than: 5.megabytes },
  #                   if: -> { image.attached? }

  # Scopes
  scope :published, -> { where(published: true).order(published_at: :desc) }
  scope :drafts, -> { where(published: false).order(updated_at: :desc) }
  scope :featured, -> { where(featured: true, published: true).order(published_at: :desc) }
  scope :by_category, ->(category) { where(category: category) if category.present? }
  scope :recent, ->(limit = 5) { published.limit(limit) }

  # Catégories disponibles
  CATEGORIES = [
    "Actualités",
    "Événements",
    "Communiqués",
    "Tribunes",
    "Interviews"
  ].freeze

  # ✅ Méthode intelligente : priorité à l'image uploadée
  def image_url
    if image.attached?
      image
    elsif image_path.present?
      image_path
    else
      "articles/placeholder.jpg"
    end
  end

  # Méthode pour l'URL canonique
  def to_param
    slug
  end

  # Extrait automatique si non fourni
  def excerpt_or_auto
    excerpt.presence || content.truncate(200, separator: ' ', omission: '...')
  end

  private

  def generate_slug
    return if slug.present?

    base_slug = title.parameterize
    self.slug = base_slug

    # Gère les doublons
    counter = 1
    while Article.exists?(slug: slug)
      self.slug = "#{base_slug}-#{counter}"
      counter += 1
    end
  end

  def set_published_at
    if published? && published_at.nil?
      self.published_at = Time.current
    elsif !published?
      self.published_at = nil
    end
  end
end