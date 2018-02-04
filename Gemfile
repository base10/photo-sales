source "https://rubygems.org"

ruby "2.5.0"

gem "autoprefixer-rails"
gem "bcrypt"
gem "flutie"
gem "jquery-rails"
gem "oath"
gem "oath-generators"
gem "normalize-rails"
gem "pg", "~> 0.21"
gem "puma"
gem "rack-attack"
gem "rack-canonical-host"
gem "rails", "~> 5.2.0rc1"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "sprockets", "4.0.0.beta6"
gem "sprockets-es6"
gem "suspenders"
gem "title"
gem "uglifier"

gem "redis"
gem "sidekiq"

gem 'bourbon', '5.0.0'
gem 'high_voltage'
gem 'neat', '~> 2.1.0'
gem 'bitters'
gem 'refills', group: [:development, :test]

## Defaults not in use
#gem "delayed_job_active_record" # Expect to be using sidekiq and redis
#gem "honeybadger"
#gem "skylight"

group :development do
  gem "listen"
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bullet"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.7.0"
end

group :development, :staging do
  gem "rack-mini-profiler", require: false
end

group :test do
  gem "capybara-webkit"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "rack-timeout"
  gem "rails_stdout_logging"
end
