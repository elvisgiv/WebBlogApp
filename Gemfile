source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.1.8'
gem 'will_paginate', '~> 3.0.5'
gem 'mysql2', '0.3.17'

# Use Devise for user authentication
gem 'devise', :git => 'git://github.com/plataformatec/devise.git', :ref => '49aebde'
gem 'ancestry'
#
gem 'haml-rails', '~>0.6.0'

gem 'sass', '~> 3.2.19'
gem 'sass-rails', '4.0.3'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'font-awesome-rails'
gem 'bootstrap-sass'

gem 'compass', '~> 0.12.7'
gem 'compass-rails', '~> 2.0.0'


 
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'


gem 'paperclip', '~> 4.2'
gem 'rails4-autocomplete', '1.1.1'

#
gem 'kaminari'
gem 'kaminari-bootstrap', '~> 3.0.1'

gem 'simple_form'
gem 'bootstrap3_autocomplete_input'



group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'


# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]


group :development, :test do
  gem 'rspec-rails', '3.1.0'
  #gem 'factory_girl'
  gem 'factory_girl_rails'
  #gem "capybara-webkit"
  #gem 'selenium-webdriver'

end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'database_cleaner'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end