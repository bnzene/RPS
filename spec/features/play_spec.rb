require 'spec_helper'

feature "Play" do
  scenario "start game" do
    sign_in_and_submit_name
    click_button "Play!"
    expect(page).to have_content "Choose your move:"
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end
