feature 'Hit points' do
  scenario 'view hit points of P2' do
    sign_in_and_play
      expect(page).to have_content 'Mittens: 30HP'
  end
end
