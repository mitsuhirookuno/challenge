#!/bin/bash
bundle install --path vendor/bundler/
bundle exec rake db:migrate RAILS_ENV=test
bundle exec rspec -f h -o doc/rspec.html
if [ $? -ne 0 ]; then
  exit 1
fi
