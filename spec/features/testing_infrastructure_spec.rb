feature 'Testing infrastructure' do
  scenario 'runs app and check page content' do
    visit("/")
    expect(page).to have_content("Battle!")
  end
end
