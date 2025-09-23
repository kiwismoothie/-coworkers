source "https://rubygems.org"

ruby "3.1.2"

gem "rails", "~> 7.1.2"
gem "sprockets-rails"
gem "puma", ">= 5.0"
gem "cloudinary"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "pg_search"
gem "redis", ">= 5.1.0"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "bootsnap", require: false
gem "bootstrap", "~> 5.2"
gem "devise"
gem "autoprefixer-rails"
gem "font-awesome-sass", "~> 6.1"
gem "simple_form", github: "heartcombo/simple_form"
gem "sassc-rails"
gem "geocoder"
gem "rest-client"
gem "money-rails"
gem "stripe"
gem "stripe_event"

group :production do
  gem "pg", "~> 1.1" # PostgreSQL pour Heroku
end

group :development, :test do
  gem "sqlite3", "~> 1.4" # SQLite pour local
  gem "dotenv-rails"
  gem "debug", platforms: %i[mri windows]
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.6.0", platforms: [:ruby]
  gem "derailed_benchmarks"
  gem "stackprof"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
