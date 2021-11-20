source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "bootsnap", ">= 1.4.4", require: false
gem "importmap-rails", ">= 0.3.4"
gem "jbuilder", "~> 2.7"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.0.alpha2"
gem "redis", "~> 4.0"
gem "pg", "~> 1.1"
gem "stimulus-rails", ">= 0.4.0"
gem "tailwindcss-rails", ">= 0.4.3"
gem "turbo-rails", ">= 0.7.11"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"
# Use Sass to process CSS
# gem "sassc-rails", "~> 2.1"
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # Start debugger with binding.b [https://github.com/ruby/debug]
  gem "debug", ">= 1.0.0", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "rack-mini-profiler", ">= 2.3.3"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end
