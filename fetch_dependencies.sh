#!/bin/bash

[ -e Podfile.lock ] && pod install
[ -d Dependencies ] && cd Dependencies
[ -e Gemfile.lock ] && bundle install --binstubs
[ -e Cartfile.resolved ] && carthage bootstrap --platform 'ios,watchos' --cache-builds