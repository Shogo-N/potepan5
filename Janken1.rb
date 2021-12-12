def janken
	puts "じゃんけん..."
	puts "0(グー)1(チョキ)2(パー)3(戦わない)"
	
	player_hand1 = gets.to_i
	
	program_hand1 = rand(3)
	
	if player_hand1 == 3
		puts "また遊ぼう!"
		return false
	
	elsif player_hand1 >= 4
		puts "入力値が不正です。入力をし直してください。"
        return true
	end
	
	jankens = ["グー","チョキ","パー"]
	
	puts "ホイ!\n ------------------"
	puts "あなた:#{jankens[player_hand1]}を出しました\n 相手:#{jankens[program_hand1]}を出しました"
	puts "------------------"
	
	
	if player_hand1 == program_hand1 #あいこ
		puts "あいこで..."
		return true
		
	elsif (player_hand1 == 0 && program_hand1 ==1) ||(player_hand1 == 1 && program_hand1 ==2) || (player_hand1 == 2 && program_hand1 ==0)
		#ユーザー勝利
		puts "あっち向いて〜\n 0(上)1(下)2(左)3(右)"
	 	player_hand2 = gets.to_i
	 	program_hand2 = rand(4)
	 	
	    hois=["上","下","左","右"]
	 	puts "ホイ!\n -------------------"
	 	puts "あなた:#{hois[player_hand2]} \n相手:#{hois[program_hand2]}"
	   return true
	   
    else  #ユーザー敗北
	    puts "あっち向いて〜\n 0(上)1(下)2(左)3(右)"
	 	player_hand2 = gets.to_i
	 	program_hand2 = rand(4)
	 	
	    hois=["上","下","左","右"]
	 	puts "ホイ!\n -------------------"
	 	puts "あなた:#{hois[player_hand2]} \n相手:#{hois[program_hand2]}"
		return true
    	
	end

end

next_game = true

while next_game
  next_game = janken
end