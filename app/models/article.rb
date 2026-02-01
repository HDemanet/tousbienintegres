# app/models/article.rb
class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :slug, uniqueness: true, allow_nil: true

  before_validation :generate_slug, on: :create
  before_save :set_published_at, if: :published_changed?

  scope :published, -> { where(published: true).order(published_at: :desc) }
  scope :drafts, -> { where(published: false).order(updated_at: :desc) }

  private

  def generate_slug
    self.slug = title.parameterize if title.present?
  end

  def set_published_at
    self.published_at = published ? Time.current : nil
  end
end
