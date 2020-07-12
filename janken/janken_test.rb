require 'minitest/autorun'
require_relative './main.rb'

class JankenTest < Minitest::Test
  def test_janken
    assert_equal "引き分けです", game_start.battle() == BATTLE_RESULT[:draw]
    assert_equal "#{@player2.name}の勝ちです", battle() == BATTLE_RESULT[:loss]
    assert_equal "#{@player1.name}の勝ちです", battle() == BATTLE_RESULT[:win]
  end
end