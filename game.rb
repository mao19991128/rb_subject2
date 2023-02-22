puts "じゃんけん..."

def janken 
    puts "0(グー)1(チョキ)2(パー)"
    
    player_hand = gets.to_i
    program_hand = rand(3)
    
    puts "ホイ！"
    puts "----------"

    jankens = ["グー","チョキ","パー"]
    puts "あなた:#{jankens[player_hand]},相手:#{jankens[program_hand]}"

    puts "------------"

    if player_hand == program_hand
        puts "あいこで"
        return true
    elsif (player_hand == 0 && program_hand ==1)||(player_hand ==1 && program_hand ==2)||(player_hand == 2 && program_hand == 0)
        puts "じゃんけんに勝ちました"
        $pass = "win"
        return false
    else
        puts "じゃんけんに負けました"
        $pass = "lose"
        return false
    end
end

def acchimuite_hoi
    puts "あっちむいて..."
    puts "0(上)1(下)2(左)3(右)"

    player_direction =gets.to_i
    program_direction = rand(3)
    directions = ["上","下","左","右"]
    puts "ホイ"
    puts "----------"
    puts "あなた:#{directions[player_direction]} 相手:#{directions[program_direction]}"
    puts "----------"

    if $pass =="win" && player_direction == program_direction
        puts "あなたの勝ちです"
    elsif $pass =="lose" && player_direction == program_direction
        puts "あなたの負けです"
    else
        puts "もう一度勝負"
        next_game = true
        
        while 
            next_game = janken
        end
        if next_game == false
            nextgame =acchimuite_hoi
        end
    end
        
end

next_game = true

while next_game
    next_game = janken
end 

if next_game == false
    next_game =acchimuite_hoi
end