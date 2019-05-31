feature 'Enter player names' do
  scenario 'Players can submit their names using a form' do
    visit('/')
    fill_in 'player_1_name', with: 'Ollie'
    fill_in 'player_2_name', with: 'Tan'
    click_button 'Submit'
    expect(page).to have_content 'Ollie vs. Tan'
  end
end
