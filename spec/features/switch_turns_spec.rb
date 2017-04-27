

feature "Switch turns" do

  scenario 'to player 2 after player 1 attack' do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content 'Mittens is now at 50 HP'
  end

  scenario 'to player 1 after player 2 attack' do
    sign_in_and_play
    click_link("Attack")
    click_link("Attack")
    expect(page).to have_content 'Dave is now at 50 HP'
  end

end