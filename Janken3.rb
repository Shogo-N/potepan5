#　じゃんけん
def janken
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    	
player_hand = gets.to_i
program_hand = rand(3)
    
jankens = ["グー","チョキ","パー"]
puts "ホイ!\n ------------------"
    
win = (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
lose = (player_hand == 0 && program_hand ==2) ||(player_hand == 1 && program_hand ==0) || (player_hand == 2 && program_hand ==1)
    
if player_hand == program_hand
  puts "あなた:#{jankens[player_hand]}を出しました\n 相手:#{jankens[program_hand]}を出しました\n------------------"
  puts "あいこで..."
  return true
    	
elsif win
  puts "あなた:#{jankens[player_hand]}を出しました\n 相手:#{jankens[program_hand]}を出しました\n------------------"
  puts "あなた：勝ち"
  @result = "win"
  return false
elsif lose
  puts "あなた:#{jankens[player_hand]}を出しました\n 相手:#{jankens[program_hand]}を出しました\n------------------"
  puts "あなた：負け"
  @result = "lose"
  return false
elsif player_hand == 3
  puts "また遊ぼう!"
  exit
elsif player_hand >= 4
  puts "入力値が不正です。入力をし直してください。"
  return true
end
end
    
# あっち向いてホイ
def hoi
if @result == "win"
puts "あっち向いて〜\n0(上)1(下)2(左)3(右)"
  
player_direction = gets.to_i
program_direction = rand(4)
      
hois = ["上","下","左","右"]
puts "ホイ！\n------------------"
puts "あなた:#{hois[player_direction]}\n相手:#{hois[program_direction]}"
if player_direction == program_direction
   puts "あなたの勝ち!"
   exit
elsif player_direction != program_direction
   puts "じゃんけんからやり直し"
   return true
end
end
    
if @result == "lose"
puts "あっち向いて〜\n0(上)1(下)2(左)3(右)"
      
player_direction = gets.to_i
program_direction = rand(4)
      
hois = ["上","下","左","右"]
puts "ホイ！\n------------------"
puts "あなた:#{hois[player_direction]}\n相手:#{hois[program_direction]}"
if player_direction == program_direction
   puts "あなたの負け!"
   exit
elsif player_direction != program_direction
   puts "じゃんけんからやり直し"
   return true
end
end
end

next_game2 = true

while next_game2
    next_game = true
    
    while next_game
     next_game = janken
    end
  next_game = hoi
end