source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'jbuilder'
gem 'jsbundling-rails'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.6'
gem 'sprockets-rails'
gem 'sqlite3', '~> 1.4'
gem 'stimulus-rails'
gem 'turbo-rails'
# gem "redis", "~> 4.0"
gem 'bootsnap', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
# gem "sassc-rails"
gem 'image_processing', '~> 1.2'

# Added using kickoff_tailwind https://github.com/justalever/kickoff_tailwind
gem 'cssbundling-rails'
gem 'devise', '~> 4.9', '>= 4.9.2'
gem 'friendly_id', '~> 5.5'
gem 'name_of_person'
gem 'sidekiq', '~> 7.1', '>= 7.1.4'
gem 'stripe'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'web-console'
  # gem "rack-mini-profiler"
  gem 'annotate'
  gem 'chusaku', require: false
  gem 'rails-erd'
end

group :test do
  gem 'capybara'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
