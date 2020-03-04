# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

gem "rails", "~> 5.2.3"

gem "decidim"
gem "bootsnap", "~> 1.4"
gem "puma", "~> 3.12.4"
gem "uglifier", "~> 4.1"
gem "faker", "~> 1.9"

gem "figaro"
gem "decidim-consultations"
gem "decidim-initiatives"
gem "decidim-api"
gem "decidim-conferences"
gem "delayed_job_active_record"
gem "whenever", require: false
gem "wicked_pdf"
gem "wkhtmltopdf-binary"
gem "charlock_holmes"

group :development, :test do
  gem "byebug", "~> 10.0", platform: :mri

  gem "decidim-dev"
end

group :development do
  gem "letter_opener_web"
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen"
  gem "web-console"
end

group :production do
  gem "passenger"
  gem "daemons"
end
