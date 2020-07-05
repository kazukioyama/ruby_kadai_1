class Player
    attr_accessor :name
    attr_accessor :hand
    
    def initialize(name:, hand:)
        self.name = name
        self.hand = hand
    end
    
end