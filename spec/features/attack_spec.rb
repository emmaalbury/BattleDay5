require './app'
require_relative 'web_helpers'

feature 'Attack' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Frank attacked Phillis'
  end

  scenario 'reduce player 2\'s hp' do
    sign_in_and_play
    click_link('Attack')
    click_link('OK')
    expect(page).to have_content 'Phillis: 90HP'
  end
end
