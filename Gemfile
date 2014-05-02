source 'https://rubygems.org'
ruby '2.1.1'

gem 'rails', '4.1.0'

gem "slim-rails"
gem 'sass-rails', '~> 4.0.3'
gem "compass-rails"
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.0.0'
gem "bootstrap-sass"
gem "font-awesome-rails"
gem 'uglifier', '>= 1.3.0'

gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

gem 'bcrypt', '~> 3.1.7'

# decorator
gem "draper"

# image uploader
gem 'carrierwave'
gem 'mini_magick'

gem "simple_form"
gem "kaminari", github: "amatsuda/kaminari"

# app server
gem "puma"

gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'spring',        group: :development
group :development, :test do
  gem "timecop"
  gem "factory_girl_rails"
  gem "ffaker"
  gem "spring-commands-rspec"
  gem "rspec-rails"
  gem "guard-rspec"
  gem 'sqlite3'
end

group :development do
  gem "hirb"
  gem "hirb-unicode"
  gem "pry-rails"
  gem "pry-doc"
  gem "pry-byebug"
  gem "pry-stack_explorer"
  gem "better_errors"
  gem "quiet_assets"
  gem "rack-mini-profiler"
  gem "foreman"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "launchy"
  gem "database_rewinder"
  gem "fuubar"
  gem "simplecov", require: false
  gem "simplecov-rcov", require: false
end

group :production do
  gem "pg"
  gem "rails_12factor"
end
