#!/bin/bash
set -xe

gem update --system
gem install bundler
gem install solargraph
gem install rubocop
gem install rubocop-performance
gem install rubocop-rails
gem install ruby-debug-ide

bundle install
yarn install --check-files
