feature 'Hit points' do
  scenario 'view hit points of P2' do
    visit '/play'
    expect(page).to have_content("P2 - 30HP")
  end
end
