def sign_in_and_play
  visit('/')
  fill_in(:player_1, with: 'Frank')
  fill_in(:player_2, with: 'Phillis')
  click_button('Submit')
end
