#　じゃんけん
def janken
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_hand = gets.to_i
    program_hand = rand(3)
    
    jankens = ["グー","チョキ","パー"]
    puts "ホイ!\n ------------------"
    puts "あなた:#{jankens[player_hand]}を出しました\n 相手:#{jankens[program_hand]}を出しました\n------------------"
        
    win = (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
    lose = !(win)
    
        
    if player_hand == program_hand
      puts "あいこで..."
      return true
        	
    elsif win
      puts "あなた：勝ち"
      @result = "win"
      return false
          
    elsif lose
      puts "あなた：負け"
      @result = "lose"
      return false
        
    elsif player_hand == 3
      put "また遊ぼう!"
      return false

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
     return false
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
      return false
    elsif player_direction != program_direction
      puts "じゃんけんからやり直し"
      return true
    end
　end
end

# じゃんけん（勝ちor負け) → あっち向いてホイ(決着つかない場合はじゃんけんからはじめてループ)
    
  
next_game1 = true
while next_game1
　next_game1 = janken
end

next_game2 = true
while next_game2 
  next_game2 = hoi
end

  