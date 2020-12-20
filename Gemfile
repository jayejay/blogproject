# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt-ruby'
gem 'bootsnap', require: false
gem 'brakeman', require: false
gem 'cancancan'
gem 'carrierwave'
gem 'coffee-rails'
gem 'config'
gem 'devise'
gem 'figaro'
gem 'fog'
gem 'fog-aws'
gem 'jbuilder'
gem 'jquery-rails'
gem 'puma'
gem 'rails', '~> 6.0'
gem 'rails-controller-testing'
# gem 'recaptcha', require: 'recaptcha/rails'
gem 'sass-rails'
gem 'sqlite3'
gem 'tinymce-rails'
gem 'truncate_html'
gem 'turbolinks'
gem 'uglifier'
gem 'will_paginate'
gem 'will_paginate-bootstrap'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop', '~> 1.6', require: false
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :production do
  # gem 'pg' #postgreSQL
end
