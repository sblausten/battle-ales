
feature "Attack" do

  scenario 'confirms Player 1 has attacked Player 2 on first turn' do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content 'Alex attacked Sam'
  end

  scenario 'confirms Player 2 has attacked Player 1 on second turn' do
    sign_in_and_play
    click_link("Attack")
    click_link("Attack")
    expect(page).to have_content 'Sam attacked Alex'
  end

end
