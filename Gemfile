source "https://rubygems.org"

ruby file: ".ruby-version"

### Application
gem "rails", "~> 7.1.2"
gem "puma", ">= 5.0"

### DB
gem "sqlite3", "~> 1.4"
gem "redis", ">= 4.0.1"

### Frontend
gem "sprockets-rails"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "bootstrap_form"

### Authentication
gem "devise"
gem "devise-i18n"

### I18n
gem "i18n-tasks"
gem "rails-i18n"

### Tools
gem "jbuilder"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"
gem "rails_semantic_logger"

group :development, :test do
  gem "debug", platforms: %i[mri windows]

  gem "standard"
  gem "bullet"

  gem "database_cleaner"
  gem "database_cleaner-active_record"
  gem "factory_bot_rails"
  gem "ffaker"
  gem "rspec-rails"
  gem "shoulda-matchers"
end

group :development do
  gem "web-console"

  gem "hotwire-livereload", "~> 1.2.3"
  gem "lefthook"
  gem "erb_lint", require: false
  gem "amazing_print"
  gem "brakeman", require: false
  gem "bundler-audit"
  gem "letter_opener_web", "~> 2.0"
end
