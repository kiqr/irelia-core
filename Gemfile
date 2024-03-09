# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in irelia.gemspec.
gemspec

gem "puma"
gem "sqlite3"
gem "sprockets-rails"

gem "debug", platforms: %i[ mri windows ]

gem "rails", ">= 7.1"
gem "devise", "~> 4.9"
gem "teamable", git: "git@github.com:kiqr/teamable.git", branch: "main"

gem "rubocop"
gem "rubocop-rails"
gem "rubocop-performance"
gem "rubocop-packaging"

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "simplecov", require: false
  gem "capybara"
  gem "selenium-webdriver"
end
