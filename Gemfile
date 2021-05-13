source 'https://rubygems.org'
ruby '2.6.3'


git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.6'
gem 'redis'
gem 'autoprefixer-rails'
gem 'bootstrap-sass'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'webpacker'
gem 'jquery-rails'


gem 'simple_form'
gem 'flatpickr'
gem 'will_paginate-bootstrap'
gem 'active_link_to'


# Attachments management
gem 'cloudinary'
gem 'carrierwave', '~> 1.2'

# Protect Private Key
gem 'dotenv-rails', groups: [:development, :test]

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
