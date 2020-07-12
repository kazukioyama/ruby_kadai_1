class Game
  attr_reader :player1
  attr_reader :player2
  HAND = {
    rock: 0,  #グーの手
    scissors: 1,  #チョキの手
    paper: 2  #パーの手
  }.freeze

  BATTLE_RESULT = {
    draw: 0,  #引き分け
    loss: 1,  #1人目の負け
    win: 2  #1人目の勝ち
  }.freeze
    
  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
  end

  def correct_hand?(hand1:, hand2:)
    return  HAND.values.include?(hand1) && HAND.values.include?(hand2) #0,1,2のいずれかが正しく入力されたか
  end

  def battle
    if correct_hand?(hand1: @player1.hand, hand2: @player2.hand)  #0,1,2のいずれかが正しく入力された場合
      return (@player1.hand - @player2.hand + 3) % 3
    else
      puts "正しい値を入力してください"
    end
  end

  def start
    case battle()
    when BATTLE_RESULT[:draw]
      return "引き分けです"
    when BATTLE_RESULT[:loss]
      return "#{@player2.name}の勝ちです"
    when BATTLE_RESULT[:win]
      return "#{@player1.name}の勝ちです"
    else
      return "エラーがおきました"
    end
  end
end