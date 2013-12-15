commit: bundle-install exec-rspec-features

bundle-install:
	bundle install --path ./

exec-rspec-features:
	bundle exec rspec --format CI::Reporter::RSpec spec/features/
