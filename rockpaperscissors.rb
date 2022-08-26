class rockpaperscissor
  attr_accessor :person

  def initialize(person)
    @person = person
    game
  end

  def game
    puts "Choose between 1, 2, or 3!"
    game_logic
  end

  def game_logic
    