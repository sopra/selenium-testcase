#!env ruby

require 'capybara/rspec'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.yahoo.co.jp/'

