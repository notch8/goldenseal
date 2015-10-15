source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

group :production do
# Use postgresql as the database for Active Record
  gem 'pg'
end

gem 'therubyracer', platforms: :ruby

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# https://github.com/projecthydra-labs/curation_concerns/pull/404
gem 'curation_concerns', github: 'projecthydra-labs/curation_concerns', branch: 'link_to_facet'

# because the most recent release of resque-web is long out-of-date.
# We need a newer version to get bootstrap 3 support:
# https://github.com/resque/resque-web/issues/62
gem 'resque-web', require: 'resque_web', github: 'resque/resque-web'
gem 'resque'

gem 'hydra-pcdm', github: 'projecthydra-labs/hydra-pcdm', ref: '463d73a'
gem 'hydra-works', github: 'projecthydra-labs/hydra-works', ref: 'e28c49c'
gem 'hydra-file_characterization', '0.3.3'
gem 'hydra-collections', '~> 6.0.0.rc1'
gem 'hydra-head', '~> 9.3.0'
gem 'activefedora-aggregation', github: 'projecthydra-labs/activefedora-aggregation', ref: '24a2d14'
gem 'active-fedora', '~> 9.4.3'
gem 'riiif', '0.1.0'
gem 'openseadragon', github: 'iiif/openseadragon-rails', branch: 'path_to_image'
gem 'angularjs-rails', '~> 1.4.4'
gem 'ldp', '~> 0.4.1'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
group :development do
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
  gem 'capistrano-bundler'
  gem 'rubocop'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'sqlite3'
  gem 'byebug'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'rspec-rails'
  gem 'jettywrapper'
  gem 'factory_girl_rails'
  gem 'capybara'
end

gem 'rsolr', '~> 1.0.6'
gem 'devise'
gem 'devise_ldap_authenticatable'
gem 'devise-guests', '~> 0.3'
