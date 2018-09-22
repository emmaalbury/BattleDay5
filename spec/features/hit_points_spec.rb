feature 'View hit points' do

  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Phillis: 100HP'
  end

  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Frank: 100HP'
  end
end
