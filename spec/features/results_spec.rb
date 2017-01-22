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

  scenario "displays winner when computer wins" do
    sign_in_choose_move
    allow(computer).to receive(:move).and_return(@computer_move)
    expect(page).to have_content "And the winner is: Player!"
  end
  #
  # scenario "displays winner when player wins" do
  #   sign_in_choose_move
  #   allow(computer).to receive(:move).and_return("Scissors")
  #   expect(page).to have_content "And the winner is: Player!"
  # end
end
