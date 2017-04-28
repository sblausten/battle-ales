feature 'losing' do
  scenario 'displays lose message when a player reaches 0HP' do
    sign_in_and_play
    11.times { click_link("Attack") }
    expect(page).to have_content "Sam lost!"
  end
end
