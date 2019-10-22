source "https://rubygems.org"

ruby "2.6.5"

gem "administrate"
gem "autoprefixer-rails"
gem "bcrypt"
gem "flutie"
gem "jquery-rails"
gem "oath"
gem "oath-generators"
gem "normalize-rails"
gem "pg"
gem "puma"
gem "rack-attack"
gem "rack-canonical-host"
gem "rails", "~> 6.0.0"
gem "recipient_interceptor"
gem "sassc-rails"
gem "simple_form"
gem "sprockets", "~> 4.0.0.beta8"
gem "sprockets-es6"
gem "suspenders"
gem "title"
gem "uglifier"

gem "redis"
gem "sidekiq"

gem 'bourbon'
gem 'high_voltage'
gem 'neat'
gem 'bitters'
gem 'refills', group: [:development, :test]

## Defaults not in use
#gem "honeybadger"
#gem "skylight"

group :development do
  gem "listen"
  gem 'foreman', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec'
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  #gem "bullet"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "capybara"
  gem "capybara-webkit"
  gem "dotenv-rails"
  gem "factory_bot_rails", "~> 5.0"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.9"
end

group :development, :staging do
  gem "rack-mini-profiler", require: false
end

group :test do
  gem "formulaic"
  # FIXME: Until shoulda-matchers are fixed for Rails 6.0
  #gem "shoulda-matchers", git: 'https://github.com/morsedigital/shoulda-matchers'
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "rack-timeout"
  gem "rails_stdout_logging"
end
