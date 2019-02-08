FactoryBot.define do
  factory :user, class: User do
    sequence(:email) { |n| "user#{n}@example.com" }
    sequence(:name) { |n| "user #{n}" }

    password_digest { "password" }
  end

  factory :admin_user, parent: :user do
    admin { true }
  end
end
