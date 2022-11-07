source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'rails', '~> 7.0.3', '>= 7.0.3.1'
gem 'sprockets-rails'
gem 'pg', '~> 1.4', '>= 1.4.4'
gem 'bullet'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'cancancan'
gem 'bootstrap', '~> 5.0'
gem 'bootstrap_form', '~> 5.1'
gem 'puma', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'web-console'
  gem 'capybara'
end

group :test do
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end