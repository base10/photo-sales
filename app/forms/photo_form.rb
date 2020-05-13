class PhotoForm
  ValidationError = Class.new(RuntimeError)

  include ActiveModel::Model
  include ActiveModel::Validations::Callbacks

  ATTRIBUTES = [
    :slug,
    :title,
    :description,
    :file_name,
    :image_file,
    :copyright_year,
    :shutter_speed,
    :aperture,
    :geoprivacy,
    :latitude,
    :longitude,
    :user_id
  ]

  attr_accessor(*ATTRIBUTES)

  validates :slug, presence: true
  validates :title, presence: true
  validates :user_id, presence: true
end