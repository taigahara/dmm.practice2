puts "最初はグー、じゃんけん、、、"

def janken
  puts "[0]グー\n[1]チョキ\n[2]パー"

  player_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["グー", "チョキ","パー"]
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"
  
  if player_hand >= 3
    puts "入力された値が無効です"

  elsif player_hand == program_hand
    return "あいこです"

  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    return  "あなたの勝ちです"

  else
    return "あなたの負けです"
  end

end

puts janken
