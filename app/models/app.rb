class App < ApplicationRecord

  has_attached_file :icon, dependent: :destroy,
    styles: {
      small: "64x64>",
      medium: "128x128>",
      large: "256x256>" }
  validates_attachment_content_type :icon, :content_type => /\Aimage\/.*\Z/

  validates :blueprint_url, presence: true
  validates :label, presence: true
  # validates :name, presence: true #, uniqueness: true

  default_scope { order('label ASC') }
  scope :published, -> { where(published: true) }
  scope :unpublished, -> { !published }

end
