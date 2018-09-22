require './app'
require_relative 'web_helpers'

describe 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Frank's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_link('Attack')
      click_link('OK')
      expect(page).not_to have_content "Frank's turn"
      expect(page).to have_content "Phillis's turn"
    end
  end
end
