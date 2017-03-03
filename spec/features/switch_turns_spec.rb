feature "Switching turns" do
  scenario "After player 1 has attacked, it is player 2's turn" do
    sign_in_and_play
    click_button("Attack!")
    click_button("OkieDokie")
    click_button("Attack!")
    expect(page).to have_content "John: 90 HP | Flora: 90 HP"
  end
end
