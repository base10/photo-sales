source "https://rubygems.org"

ruby "2.6.6"

gem "administrate"
gem "autoprefixer-rails"
gem "bcrypt"
gem "flutie"
gem "jquery-rails"
gem "normalize-rails"
gem "oath"
gem "oath-generators"
gem "pg"
gem "puma"
gem "rack-attack"
gem "rack-canonical-host"
gem "rails", "~> 6.1.0"
gem "recipient_interceptor"
gem "sassc-rails"
gem "simple_form"
gem "sprockets", "~> 4.0"
gem "sprockets-es6"
gem "suspenders"
gem "title"
gem "uglifier"

gem "redis"
gem "sidekiq"

gem "bitters"
gem "bourbon"
gem "high_voltage"
gem "neat"
gem "refills", group: [:development, :test]

## Defaults not in use
# gem "honeybadger"
# gem "skylight"

group :development do
  gem "foreman", require: false
  gem "listen"
  gem "rubocop", require: false
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bullet"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "capybara"
  gem "capybara-screenshot"
  gem "dotenv-rails"
  gem "factory_bot_rails", "~> 6.1"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 4.0"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "webdrivers"
end

group :development, :staging do
  gem "rack-mini-profiler", require: false
end

group :test do
  gem "formulaic"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "rack-timeout"
  gem "rails_stdout_logging"
end
