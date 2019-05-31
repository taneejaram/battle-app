feature 'Enter player names' do
  scenario 'Players can submit their names using a form' do
    sign_in_and_play
    expect(page).to have_content 'Tan vs. Ollie'
  end
end

feature 'See points' do
  scenario 'See Player 2s hit points' do
    sign_in_and_play
    expect(page). to have_content 'Ollie: 10 POINTS'
  end
end

feature 'Attack' do
  scenario 'Player 1 clicks a button to attack Player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Tan has successfully attacked Ollie'
  end
end
