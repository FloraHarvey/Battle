feature 'when attacked, hitpoints are reduced' do
  scenario 'Player 1 attacks Player 2, Player 2 hitpoints are reduced' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content 'Flora: 40 HP'
  end
end
