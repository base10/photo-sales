class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image_file

  validates :file_name, presence: true
  validates :geoprivacy, presence: true
  validates :slug, presence: true, uniqueness: { scope: :user_id }
end
