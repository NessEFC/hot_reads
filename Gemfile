source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'autoprefixer-rails'
gem 'awesome_print'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rack-cors', :require => 'rack/cors'
gem 'rails', '~> 5.1.2'
gem 'rails_12factor', group: :production
gem 'sass-rails', '~> 5.0'
gem 'sprockets-es6'
gem 'therubyracer', platforms: :ruby
gem 'uglifier', '>= 1.3.0'

# gem 'redis', '~> 3.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'launchy'
  gem 'pry'
  gem 'rspec-rails'
  gem 'selenium-webdriver', '~> 2.53.4'
  gem 'shoulda-matchers'
  gem 'shoulda-callback-matchers', '~> 1.1.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
