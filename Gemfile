source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# This gem provides jQuery and the jQuery-ujs driver
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Provides both resource oriented interfaces and API clients for AWS services.
gem 'aws-sdk', '~> 3.0', '>= 3.0.1'
# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.6', '>= 4.6.2'
# A modern responsive front-end framework based on Material Design
gem 'materialize-sass', '~> 1.0'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # console
  gem 'awesome_print', '~> 1.8'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.0', '>= 11.0.1'
  # configuration of local environment variables
  gem 'dotenv-rails', '~> 2.7', '>= 2.7.2'
  # provides factory methods to create test fixtures for automated software testing
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.2'
  #  is used to easily generate fake data
  gem 'faker', '~> 1.9', '>= 1.9.3'
  # pronto-
  gem 'pronto-brakeman', '~> 0.10.0', require: false
  gem 'pronto-fasterer', '~> 0.10.0', require: false
  gem 'pronto-rails_best_practices', '~> 0.10.0', require: false
  gem 'pronto-reek', '~> 0.10.0', require: false
  gem 'pronto-rubocop', '~> 0.10.0', require: false
  gem 'pry-byebug', '~> 3.7'
  # Use Pry as your rails console
  gem 'pry-rails', '~> 0.3.9'
  # rspec-rails is a testing framework for Rails
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  # check for performance optimizations in Ruby code
  gem 'rubocop-performance', '~> 1.3'
  # matchers
  gem 'shoulda-matchers', '~> 4.0', '>= 4.0.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Pronto is an automatic code review ruby gem
  gem 'pronto', '~> 0.10.0'
  #  Rubocop as reference to styling rules.
  gem 'rubocop', '~> 0.69.0', require: false
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Run Selenium tests more easily
  gem 'webdrivers', '~> 3.9', '>= 3.9.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
