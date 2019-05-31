ENV['RACK_ENV'] = 'test'
#require Sinatra app file
require './app.rb'


require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers'

#tell capybara about our app class
Capybara.app = Battle
