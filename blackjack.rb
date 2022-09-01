require_relative 'deck'

class BlackJack
  def initialize(player)
    @player = player
    @deck = Deck.new
    play
  end

  def play
    puts "How much would you like to bet?"
    wager = gets.strip.to_i
    if wager > 0
      first_card = @deck.pull_card
      second_card = @deck.pull_card
      puts "Your card is #{first_card}"
    else
      puts "Please place valid bet."
      return
    end
  end
end