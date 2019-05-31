require 'spec_helper.rb'

def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Tan'
  fill_in 'player_2_name', with: 'Ollie'
  click_button 'Submit'
end
