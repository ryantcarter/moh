class Hike < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :time,  presence: true
  validates :distance, presence: true
  validates :climb, presence: true
  validates :descent, presence: true
  validates :difficulty, presence: true
  validates :danger, presence: true
  validates :region, presence: true

  validates :slug, uniqueness: true, presence: true

  before_save do
  	self.slug = self.slug.parameterize
  end

  def to_param
  	slug
  end

  def self.find(input)
  	find_by_slug(input)
  end
end
