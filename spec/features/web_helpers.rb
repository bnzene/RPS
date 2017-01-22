def sign_in_and_submit_name
  visit ('/')
  fill_in :player, :with => "Ada"
  click_button "Submit"
end

def sign_in_choose_move
  sign_in_and_submit_name
  click_button "Play!"
  click_button "Rock"
end
