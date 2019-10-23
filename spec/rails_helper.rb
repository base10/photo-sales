ENV["RACK_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)
abort("DATABASE_URL environment variable is set") if ENV["DATABASE_URL"]

require "factory_bot_rails"
require "rspec/rails"

Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |file| require file }

module SystemHelper
  # Extend this module in spec/support/system/*.rb
  include Formulaic::Dsl
end

Oath.test_mode!

RSpec.configure do |config|
  config.include SystemHelper, type: :system
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true

  config.include Oath::Test::Helpers, type: :system
  config.after :each do
    Oath.test_reset!
  end

  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :webkit
  end
end

ActiveRecord::Migration.maintain_test_schema!

Capybara.default_driver = :selenium_headless
Capybara.javascript_driver = :selenium_headless
Capybara.server = :puma, { Silent: true }
