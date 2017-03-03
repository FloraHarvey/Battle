def sign_in_and_play
  visit '/'
  fill_in :player_1, with: 'John'
  fill_in :player_2, with: 'Flora'
  click_button 'Play!'
end

def take_turns
  click_button "Attack!"
  click_button "OkieDokie"
end
