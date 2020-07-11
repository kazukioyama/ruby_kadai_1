class Player
  attr_accessor :name
  attr_accessor :hand
    
  def initialize(name:, hand:)
    @name = name
    @hand = hand
  end    
end