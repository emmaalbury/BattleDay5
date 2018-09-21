require './app'

feature 'Attack' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Jon attacked Daniel'
  end

  scenario "reduce player 2's hp" do
    sign_in_and_play
    click_link("Attack")
    click_link("OK")
    expect(page).to have_content 'Daniel: 90HP'
  end
end
