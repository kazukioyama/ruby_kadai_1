class Game
  attr_reader :player1
  attr_reader :player2

  BATTLE_RESULT = {
    draw: 0,  #引き分け
    loss: 1,  #1人目の負け
    win: 2  #1人目の勝ち
  }.freeze
    
  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
  end

  def battle
    return (@player1.hand - @player2.hand + 3) % 3
  end

  def start
    if battle() == BATTLE_RESULT[:draw]
      return "引き分けです"
    elsif battle() == BATTLE_RESULT[:loss]
      return "#{@player2.name}の勝ちです"
    elsif battle() == BATTLE_RESULT[:win]
      return "#{@player1.name}の勝ちです"
    else
      return "エラーがおきました"
    end
  end
end