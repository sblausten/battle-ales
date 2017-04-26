feature 'Hit points' do
  scenario 'view hit points of P2' do
    visit('/')
      fill_in :player_1_name, with: 'Dave'
      fill_in :player_2_name, with: 'Mittens'
      click_button 'Submit'
      expect(page).to have_content 'Mittens: 30HP'
  end
end
