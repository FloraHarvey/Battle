feature 'Game Over when player reaches 0 HP' do
  scenario 'When player reaches 0 HP, redirects to game over and displays winning player' do
    sign_in_and_play
    8.times { take_turns }
    click_button "Attack!"
    expect(page).to have_content 'John wins!'
  end
end
