# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

# specifying versions to avoid vulnerabilities
gem "actionview", ">= 5.2.2.1"
gem "railties", ">= 5.2.2.1"

gem "decidim", "0.17.2"

gem "bootsnap", "~> 1.3"

gem "puma", "~> 3.0"
gem "uglifier", "~> 4.1"

gem "faker", "~> 1.9"
gem 'rake','12.3.1'


gem "figaro"
gem 'decidim-consultations', "0.17.2"
gem 'decidim-initiatives', "0.17.2"
gem 'decidim-api', "0.17.2"
gem 'delayed_job_active_record'
gem 'whenever', require: false
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'charlock_holmes', '0.7.6'

group :development, :test do
  gem "byebug", "~> 10.0", platform: :mri

  gem "decidim-dev", "0.17.2"
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end

group :production do
  gem "passenger"
  gem "daemons"
end
