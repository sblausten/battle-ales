feature 'Hit points' do
  scenario 'view hit points of Player 2' do
    sign_in_and_play
      expect(page).to have_content 'Mittens is at 60 HP'
  end
end
