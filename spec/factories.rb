FactoryBot.define do
  sequence(:unique_email) { |n| "user#{n}@example.com" }
  sequence :unique_file_name do |num|
    "IMG_#{num}.jpg"
  end
  sequence(:unique_name) { |n| "user #{n}" }

  factory :photo do
    slug { "great_photo" }
    title { "A Great Photo" }
    description { "This is a description." }
    copyright_year { "2019-01-01" }
    file_name { generate(:unique_file_name) }
    geoprivacy { true }
    latitude { "35.787743" }
    longitude { "-78.644257" }
    shutter_speed { "1/250" }
    aperture { "f/2.8" }

    user

    after(:build) do |photo|
      photo.image_file.attach(
        io: File.open(
          Rails.root.join(
            "spec",
            "support",
            "images",
            "test.jpg"
          )
        ),
        content_type: "image/jpeg",
        filename: photo.file_name
      )
    end
  end

  factory :user, class: User do
    email { generate(:unique_email) }
    name { generate(:unique_name) }
    password_digest { "password" }
  end

  factory :admin_user, parent: :user do
    admin { true }
  end
end
