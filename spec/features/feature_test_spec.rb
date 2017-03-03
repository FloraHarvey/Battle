feature "Entering player names" do
  scenario "allows user to enter Player names" do
    sign_in_and_play
    expect(page).to have_content("John vs. Flora")
  end
end

feature "Viewing hit points" do
  scenario "allows player 1 to view player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Flora: 100 HP")
  end
end

feature "Attacking the other player" do
  scenario "allows player 1 to attack player 2" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("John just attacked Flora!")
  end

end
