source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.1'

  gem 'dotenv-rails', groups: [:development, :test]
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use boostrap
gem 'bootstrap-sass', '~> 3.3.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Embed the V8 Javascript Interpreter into Ruby - See https://github.com/rails/execjs#readme for more
gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'webpacker', git: 'https://github.com/rails/webpacker.git'
# Use JS-routes to defines all Rails named routes as javascript helpers
gem 'js-routes', '~> 1.3'
# Use React-Rails to integrate React views, controllers and the asset pipeline, or webpacker
gem 'react-rails', '~> 1.8'
# Use Rails Assets Classnames for conditionally joining classNames together
source 'https://rails-assets.org' do
  gem 'rails-assets-classnames'
end
# Use Font-Awesome for Icon-Fonts
gem 'font-awesome-rails'
# Use simple forms for simpler forms
gem 'simple_form'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use GravTastic to add Gravatars to your Rubies or Javascripts
gem 'gravtastic'
# API Calls
gem 'httparty', '0.13.5'
gem 'rest-client'
# API wrappers - Use Octokit for Github API - Use RubyHackernews for HN - Use Github for Github
gem "octokit", "~> 4.0"
gem "github_api"
# Use Multi-XML for XML parsing

gem 'multi_xml', '~> 0.5.5'
# Secure environment through application.yml added to git ignore
gem 'figaro'
# Use JBuilder to build JSON APIs
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use Devise
gem 'devise'
gem 'rails_admin'
# Facebook Authentication using OminAuth-fb
gem 'omniauth-facebook'
# Use Capistrano for deployment
gem 'capistrano-rails', group: :development
# Use Faker to generate fake data
gem 'faker'
# Use Kaminari for pagination
gem 'kaminari'
# Use CarrierWave, to deal with file uploads
gem 'carrierwave', '~> 1.0'
# Use Cloudinary as image back-end
gem 'cloudinary'
# Use Attachinary to handle Attachments stored by Cloudinary
gem 'attachinary'
# Use Act-As-Votable to allow any model to vote, be voted-on
gem 'acts_as_votable'
# Use Annotate to show db schema on in models
gem 'annotate', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'letter_opener'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
