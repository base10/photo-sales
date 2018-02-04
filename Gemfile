source "https://rubygems.org"

ruby "2.5.0"

gem "autoprefixer-rails"
gem "bcrypt"
gem "flutie"
gem "jquery-rails"
gem "monban"
gem "monban-generators"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "puma"
gem "rack-attack"
gem "rack-canonical-host"
gem "rails", "~> 5.1.1"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "sprockets", "4.0.0.beta4"
gem "sprockets-es6"
gem "suspenders"
gem "title"
gem "uglifier"

gem "redis"
gem "sidekiq"

gem 'bourbon', '5.0.0.beta.7'
gem 'high_voltage'
gem 'neat', '~> 1.8.0'
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
  gem "factory_girl_rails"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.6.0"
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
