describe '/' do
  it 'returns a message' do
    visit "/"
    expect(page).to have_content("Hello Battle!")
  end


end
