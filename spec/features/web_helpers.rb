def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: 'Alex'
  fill_in :player_2_name, with: 'Sam'
  click_button('Submit')
end
