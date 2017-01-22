User stories I'm working to:
--------------------------
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

# Here this looks like I want to create a landing page where the player can input their name, possibly the home page/the '/' route
#It'll probably need to contain an HTML form input for the player's name and a submit button so they can submit their name
#test that using Capybara click_button
# probably makes a GET request to the server
# first test - that user's name after input equals user name?
# - that submit_name receives an argument or something?
# - look at how we did name input in battleships

# Fulfilled! App takes user to landing page ('/') which from erb file requests user input name, setting that to params[:player_name]
# Submits form taking user to '/play' which sets #@player_name equal to params[:player_name] and displays the player name
--------------------------
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

# User should be able to choose one of three moves - Rock, Paper or Scissors

# name submit redirects to '/name' page, where they select a 'play!' button which when clicked redirects to a '/play' page where move options appear
# first test by using web_helpers to sign in and submit name, and expecting resultant page to have specified content # passed
# then test by doing the same, then click_button 'Play!' and expect page to have buttons for each move option #passed

# provide three buttons so user can click one; posts that as variable player_choice to the server in erb file and redirects to new page (so they can't select more than one move) #done
# test output in results_spec with sign_in_and_submit_name, click_button "Rock" and expect page to have_content "You have selected Rock"
# then create necessary buttons so test passes #done

# next, test for computer selecting its own move in computer_move_spec.rb - should be a random selection from Rock, Paper and Scissors to introduce element of chance

# unit test this in computer_spec.rb outside features folder, select a move, expect page to display user's chosen move and the computer's chosen move (e.g. "You have selected Rock."; "Computer has chosen Paper.") - stubbed so that computer.move returns 'Paper'
#done

# next - need to evaluate the result and declare a winner
# currently declares the name of the winning move, not the winner
# first test for a results announcement message using expect page to have_content - will be a vacuous test until it displays the name of the player, not just the text I've hard-coded

# created a result class inside which the comparison takes place

## The options need to be set in some sort of hierarchy or order so that a winner can be declared
## The computer then randomly and automatically chooses a response from the same options
## The player's choice is compared to the computer's choice against the hierarchy above and a winner declared

# create an array of subarrays containing each combination of winning and losing moves
# winner is set equal to "Draw" if both moves are the same, and I use an if statement inside the result.erb file to return a different string
# moves passed into winner method as parameters, and winner is whichever move followed by its counterpart is included in the array of arrays
# create a test which expects page to have content "And the winner is: Computer!", stubbing Rock and Paper as user and computer's moves respectively #done

# now the problem is displaying the name of the winner alongside the winning move - currently the name of the player isn't saved beyond the /name page

# could pass the result method the name of each player and then their move as arguments for the winner method?
