#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

# Start Fix
def restore_env(key)
  orig = ENV["BUNDLER_ORIG_#{key}"]
  ENV[key] = orig == 'BUNDLER_ENVIRONMENT_PRESERVER_INTENTIONALLY_NIL' ? nil : orig
end
restore_env('RUBYOPT')
# End Fix

system('gem install mvn2')

system('mvn2 --show-defaults')