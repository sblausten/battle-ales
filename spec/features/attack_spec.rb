
feature "Attack" do

  scenario 'attack Player 2 on first turn' do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content 'Alex attacked Sam'
  end

  scenario 'attack Player 1 on second turn' do
    sign_in_and_play
    click_link("Attack")
    click_link("Attack")
    expect(page).to have_content 'Sam attacked Alex'
  end

  scenario 'attack Player 2 and reduce their HP by 10' do
    sign_in_and_play
    click_link("Attack")
    # expect(page).not_to have_content '60 HP'
    expect(page).to have_content '50 HP'
  end

end
