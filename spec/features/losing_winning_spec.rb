feature 'shows Lose message when player reaches 0HP' do
  scenario 'When player reaches 0HP, Lose message is displayed' do
    sign_in_and_play
    9.times { take_turns }
    expect(page).to have_content 'John wins!'
  end
end
