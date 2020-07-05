require "./game.rb"
require "./player.rb"

puts "1人目: 名前を入力してください"
p1_name = gets.to_s.chomp
puts "2人目: 名前を入力してください"
p2_name = gets.to_s.chomp

hands = ["グー", "チョキ", "パー"]
index = 1
hands.each do |hand|
    puts "#{index}. #{hand}"
    index += 1
end

puts "#{p1_name}さん: 出す手を選択してください"
p1_hand = gets.chomp.to_i
puts "#{p2_name}さん: 出す手を選択してください"
p2_hand = gets.chomp.to_i

p1 = Player.new(name: p1_name, hand: p1_hand)
p2 = Player.new(name: p2_name, hand: p2_hand)

game_start = Game.new(player1:p1, player2:p2)
puts game_start.get_janken()
