#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

system('gem install mvn2')

system('mvn2 --set-global-defaults --live-print --skip-tests --timer --write-log')