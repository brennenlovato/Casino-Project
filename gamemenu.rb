require_relative "player"

class Casino
  def initialize
    @player == Player.new
    show_menu
  end

  def show_menu
    begin
      puts "What do you want to play?"
      puts "1) Rock, Paper, Scissors"
      puts "2) Black Jack"
      puts "3) Slots"
      puts "4) Check Wallet"
      puts "5) Exit"
      response = gets.strip.to_i
      raise "Bad Input" unless response > 0 && response < 6
      case response
      when 1
        RPS.new(@player)
      when 2
        BlackJack.new(@player)
      when 3
        Slots.new(@player)
      when 4
        puts "You have $#{Player.money}"
      when 5
        puts "Thanks for giving us your money!"
        exit
      else
        raise
      end
      show_menu
    rescue StandardError => e
        puts e
        retry
    end
  end
end

Casino.new
