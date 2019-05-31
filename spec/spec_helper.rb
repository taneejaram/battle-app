ENV['RACK_ENV'] = 'test'
#require Sinatra app file
require './app.rb'


require 'capybara'
require 'capybara/rspec'
require 'rspec'

#tell capybara about our app class
Capybara.app = Battle
