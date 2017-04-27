
feature "Attack" do

  scenario 'attack Player 2' do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'attack Player 2 and reduce their HP by 10' do
    sign_in_and_play
    click_link("Attack")
    # expect(page).not_to have_content '60 HP'
    expect(page).to have_content '50 HP'
  end

end
