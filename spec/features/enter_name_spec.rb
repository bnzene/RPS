require 'spec_helper'

feature "Enter Player Name" do
  scenario "register name" do
    sign_in_and_submit_name
    expect(page).to have_content "Ada"
    expect(page).to have_content "Click 'Play' to get started!"
  end
end
