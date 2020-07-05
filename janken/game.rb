require "./player.rb"

class Game
    attr_accessor :player1
    attr_accessor :player2
    
    def initialize(player1:, player2:)
        self.player1 = player1
        self.player2 = player2
    end

    def get_janken
        if self.player1.hand == 1
            if self.player2.hand == 1
                return "引き分けです"
            end
            if self.player2.hand == 2
                return "#{self.player1.name}の勝ちです"
            end
            if self.player2.hand == 3
                return "#{self.player2.name}の勝ちです"
            end
        end
        if self.player1.hand == 2
            if self.player2.hand == 1
                return "#{self.player2.name}の勝ちです"
            end
            if self.player2.hand == 2
                return "引き分けです"
            end
            if self.player2.hand == 3
                return "#{self.player1.name}の勝ちです"
            end
        end
        if self.player1.hand == 3
            if self.player2.hand == 1
                return "#{self.player1.name}の勝ちです"
            end
            if self.player2.hand == 2
                return "#{self.player2.name}の勝ちです"
            end
            if self.player2.hand == 3
                return "引き分けです"
            end
        end
    end
end