feature 'losing' do
  scenario 'displays lose message when a player reaches 0HP' do
    sign_in_and_play
    while Game.game.player_1.hp > 0 && Game.game.player_2.hp > 0 do
      click_link("Attack")
    end
    expect(page).to have_content "lost!"
  end
end
