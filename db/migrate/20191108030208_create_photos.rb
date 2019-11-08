class CreatePhotos < ActiveRecord::Migration[6.0]
  # rubocop:disable Metrics/MethodLength
  def change
    create_table :photos do |t|
      t.string :slug, null: false
      t.string :title
      t.text :description
      t.string :file_name, null: false
      t.date :copyright_year
      t.boolean :geoprivacy, null: false, default: true
      t.decimal :latitude, precision: 9, scale: 6
      t.decimal :longitude, precision: 9, scale: 6
      t.string :shutter_speed
      t.string :aperture

      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :photos, :slug
    add_index :photos, [:user_id, :slug], unique: true
  end
  # rubocop:enable Metrics/MethodLength
end
