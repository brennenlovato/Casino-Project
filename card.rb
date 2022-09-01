class Card
  # Getter and Setter methods for rank, suit and color
  attr_accessor :rank, :suit, :color
  # Gets called when you call the new method to create an instance
  # card = Card.new('10', 'Spades', 'Black')
  def initialize(rank, suit, color)
    @rank = rank
    @suit = suit
    @color = color
  end

  def to_i
    case @rank
    when 'A'
      return to 1
    when 'J'
      return to 11
    when 'Q'
      return to 12
    when 'K'
      return to 13
    else
      @rank.to_i
    end
 end

 def to_s
  return "#{@rank} #{@suit} (#{@color})"
 end
end

