source 'https://rubygems.org'

gem 'rake',         '~> 12.3.3'
gem 'hanami',       '~> 1.3.1'
gem 'mongoid',      '~> 7.0'

gem 'httparty',     '~> 0.16.4'

gem 'interactor',   '~> 3.0'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun', platforms: :ruby
  gem 'hanami-webconsole'
  gem 'pry',              '~> 0.12.2'
end

group :test, :development do
  gem 'dotenv',     '~> 2.7.1'
  gem 'rspec',      '~> 3.8.0'
  # gem 'capybara'
end

group :production do
  # gem 'puma'
end
