require_relative './game.rb'
require_relative './player.rb'

puts "1人目: 名前を入力してください"
p1_name = gets.to_s.chomp
puts "2人目: 名前を入力してください"
p2_name = gets.to_s.chomp

hands = ["グー", "チョキ", "パー"]

HAND = {
  rock: 0,  #グーの手
  scissors: 1,  #チョキの手
  paper: 2  #パーの手
}.freeze

def error_hand(hand)  
  return if [hand] & HAND.values == [hand]  #0,1,2のいずれかが正しく入力されなかった場合のみ処理
  puts "正しい値を入力してください"
end

hands.each_with_index do |hand, i|
  puts "#{i}. #{hand}"
end

puts "#{p1_name}さん: 出す手を選択してください"
p1_hand = gets.chomp.to_i
error_hand(p1_hand)

puts "#{p2_name}さん: 出す手を選択してください"
p2_hand = gets.chomp.to_i
error_hand(p2_hand)

p1 = Player.new(name: p1_name, hand: p1_hand)
p2 = Player.new(name: p2_name, hand: p2_hand)

game_start = Game.new(player1: p1, player2: p2)

puts game_start.start()
