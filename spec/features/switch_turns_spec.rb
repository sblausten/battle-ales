

feature "Switch turns" do

  scenario 'to player 2 after player 1 attack' do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content "Sam is now at #{Game.game.player_2.hp} HP"
  end

  scenario 'to player 1 after player 2 attack' do
    sign_in_and_play
    click_link("Attack")
    click_link("Attack")
    expect(page).to have_content "Alex is now at #{Game.game.player_1.hp} HP"
  end

end
