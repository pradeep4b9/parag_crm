source 'https://rubygems.org'
gem 'rails', '4.1.5'

gem 'mongoid', '~> 4.0.0'
gem 'bson_ext'
gem 'mongoid_token', github: 'apai4/mongoid_token'

gem 'puma'
gem 'sqlite3'
gem 'sprockets-rails', :require => 'sprockets/rails/version'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

gem 'prawn'
gem 'prawn-table'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'bootstrap-sass'
gem 'autoprefixer-rails' # i'm not sure whether this is relevant
gem 'bootstrap-table-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'capistrano', require: false
  # cap tasks to manage puma application server
  gem 'capistrano3-puma', '~> 1.1.0', require: false
  gem 'capistrano-rails',   '~> 1.1', require: false
  gem 'capistrano-bundler', '~> 1.1', require: false
  gem 'capistrano-rvm',   '~> 0.1', require: false


  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'spring'

end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'selenium-webdriver'
end

group :production do
  # gem 'unicorn'
  # gem 'unicorn-rails'
  # gem 'puma'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
