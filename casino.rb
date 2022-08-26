class RockPaperScissors 
    attr_accessor :person 
  
    def initialize(person)
      @person = person
      game
    end
  
    def game 
      puts "if you pick rock you get rock, paper, scissors"
      puts "if you pick paper you get rock, paper, scissors"
      puts "if you pick scissors you get rock, paper, scissors"
      game_logic
    end
  
    def game_logic
      guess_arr = [rock, paper, scissors]
      # guess_arr = (1, 2 ,3)
      puts "Rock, Paper, Scissors?"
      user_choice = gets.strip.to_i
      
      if user_choice > 0 && user_guess < 4
        computer_choice = choice_arr.sample
        if user_choice == computer_choice
          @person.increase_money(+1)
          puts "You Win!"
        else 
          @person.increase_money(-1)
          puts "#{computer_choice}"
          puts "You Lose!"
        end
        puts "Now your balance is" #{@person.money}"
      else
        puts "Invalid answer please select rock, paper, scissors"
        game_logic
      end
    end
  end
