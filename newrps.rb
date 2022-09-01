# conditions = {
#   "rock": "scissors",
#   "paper": "rock",
#   "scissors": "paper"
# }

#     puts "rock, paper or scissors"
#     user_choice = gets.chomp.downcase
#     computer_choice = conditions.keys.sample
#     puts "Griff chose #{ computer_choice}"



#         if conditions[user_choice] == computer_choice
#         puts "You won!"
#         elsif user_choice == computer_choice
#         puts "Its a draw."
#         elsif conditions[computer_choice] == user_choice
#         puts "You lost."
#      end
def griff_menu
    puts "Hello, welcome to Griff's RPS"
    puts "Would you like to play?"
    puts "(1) yes"
    puts "(2) no"
    player_choice = gets.strip.to_i

        if player_choice == 1
            puts "Griff accepts the challenge"
            game
        elsif player_choice == 2
            puts "Thank you"
            exit
        else
            puts "please type 1 or 2"
            griff_menu
 end
end
    def game
        print "Please choose one - rock, paper or scissors: "
        $input = gets.chomp
    
        $user_input = $input.downcase
    
        puts "You chose #{$user_input}."
    
        #defining which choice computer makes
        def computer_choice
        cc = (1 + rand(3))
    
        case cc
        when 1
            $choice = "rock"
        when 2
            $choice = "paper"
        when 3
            $choice = "scissors"
        end
    end
  
    computer_choice
  
    #comparing computer choice against user choice
    if $user_input == $choice
      puts "I chose #{$choice} too. It's a tie. Let's try again."
      game
    else
      if $user_input == "rock" && $choice == "paper"
        puts "I chose paper. Paper wraps rock. I win."
      elsif $user_input == "rock" && $choice == "scissors"
        puts "I chose scissors. Rock destroys scissors. You win."
      elsif $user_input == "paper" && $choice == "rock"
        puts "I chose rock. Paper wraps rock. You win."
      elsif $user_input == "paper" && $choice == "scissors"
        puts "I chose scissors. Scissors cut paper. I win."
      elsif $user_input == "scissors" && $choice == "rock"
        puts "I chose rock. Rock destroys scissors. I win."
      elsif $user_input == "scissors" && $choice == "paper"
        puts "I chose paper. Scissors cut paper. You win."
      else
        puts "I didn't understand you. Please try again."
        game
      end #end nested if statement
    end #end if statement
  end #end game def
game