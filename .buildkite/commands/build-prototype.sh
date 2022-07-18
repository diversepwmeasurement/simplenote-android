#! /bin/bash

set -eu

echo "--- :rubygems: Setting up Gems"
install_gems

echo "--- Installing Secrets"
bundle exec fastlane run configure_apply

echo "--- :hammer_and_wrench: Build and Test"
bundle exec fastlane build_and_upload_installable_build
