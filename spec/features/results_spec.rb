require 'spec_helper'
require_relative '../../lib/computer'

computer = Computer.new

feature "Results" do
  scenario "confirm player's choice of move" do
    sign_in_and_submit_name
    click_button "Play!"
    click_button "Rock"
    expect(page).to have_content "You have selected Rock."
  end
  scenario "displays the computer's move" do
    sign_in_choose_move
    expect(page).to have_content "Computer move: #{ @computer_move }"
  end
  scenario "declares winner" do
    allow_any_instance_of(Computer).to receive(:move).and_return("Paper")
    sign_in_choose_move
    expect(page).to have_content "And the winner is: Computer!"
  end
  scenario "declares draw" do
    allow_any_instance_of(Computer).to receive(:move).and_return("Rock")
    sign_in_choose_move
    p computer.move
    expect(page).to have_content "It's a draw!"
  end
end
