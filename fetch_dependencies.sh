#!/bin/bash

[ -e Podfile.lock ] && pod install || echo "No Podfile.lock, skipping..."
[ -d Dependencies ] && cd Dependencies
[ -e Gemfile.lock ] && bundle install --binstubs || echo "No Gemfile.lock, skipping..."
[ -e Cartfile.resolved ] && carthage bootstrap --platform 'ios,watchos' --cache-builds || echo "No Cartfile.resolved, skipping..."
