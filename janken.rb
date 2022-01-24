loop do
    puts "じゃんけん...\n0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    janken_type = gets.to_s.chomp
    puts "ホイ！\n_________________________"
        
    case janken_type
    when "0"
        puts "あなた:グーを出しました"
    when "1"
        puts "あなた:チョキを出しました"
    when "2"
        puts "あなた:パーを出しました"
    when "3"
        puts "あなた:戦わないを選択しました"
        break
    else
        puts "正しい数字を半角で入力してください"
    end
    
    r = Random.new()
    cpu_janken_type = r.rand(3).to_s
    case cpu_janken_type
    when "0"
        puts "相手:グーを出しました"
    when "1"
        puts "相手:チョキを出しました"
    when "2"
        puts "相手:パーを出しました"
    end
    puts "_________________________"
    #勝ちの時
    if janken_type ==="0" && cpu_janken_type ==="1" || janken_type ==="1" && cpu_janken_type ==="2" || janken_type ==="2" && cpu_janken_type ==="0"
        puts "あなたはじゃんけんに勝ちました"
        puts "あっち向いて"
        puts "(上)0 (下)1 (左)2 (右)3"
        finger_direction_type = gets.to_s.chomp
        puts "ホイ！\n_________________________"
        
        case finger_direction_type
        when "0"
            puts "上を指差しました"
        when "1"
            puts "下を指差しました"
        when "2"
            puts "左を指差しました"
        when "3"
            puts "右を指差しました"
        end
        r2 = Random.new()
        cpu_face_direction_type = r2.rand(4).to_s
        
        case cpu_face_direction_type
        when "0"
            puts "相手は上を向きました"
        when "1"
            puts "相手は下を向きました"
        when "2"
            puts "相手は左を向きました"
        when "3"
            puts "相手は右を向きました"
        end
        puts "_________________________"
        
        if finger_direction_type === cpu_face_direction_type
            puts "あなたは勝ちました"
        else
        end
    #負けの時
    elsif janken_type ==="0" && cpu_janken_type ==="2" || janken_type ==="1" && cpu_janken_type ==="0" || janken_type ==="2" && cpu_janken_type ==="1"
        puts "あなたはじゃんけんに負けました"
        puts "あっち向いて"
        puts "(上)0 (下)1 (左)2 (右)3"
        face_direction_type = gets.to_s.chomp
        puts "ホイ！"
        puts "_________________________"
        case face_direction_type
        when "0"
            puts "あなたは上を向きましました"
        when "1"
            puts "あなたは下を向きましました"
        when "2"
            puts "あなたは左を向きましました"
        when "3"
            puts "あなたは右を向きましました"
        end
        
        r3 = Random.new()
        cpu_finger_direction_type = r3.rand(4).to_s
        
        case cpu_finger_direction_type
        when "0"
            puts "相手は上を指差しました"
        when "1"
            puts "相手は下を指差しました"
        when "2"
            puts "相手は左を指差しました"
        when "3"
            puts "相手は右を指差しました"
        end
        puts "_________________________"
        
        if face_direction_type === cpu_finger_direction_type
            puts "あなたは負けました"
        else
        end
    else
    end
            
end