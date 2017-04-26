feature 'Testing names' do
  scenario 'players fill in names' do
    visit '/'
    expect(page).to have_xpath("//input")
  end
end
