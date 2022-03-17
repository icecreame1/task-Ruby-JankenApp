
def buttle()
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない) ※番号を選択して下さい"
  
  choice = gets.chomp
  janken = ["グー","チョキ","パー"]

  case choice
    when '0','1','2'
    user_hand = janken[choice.to_i]
    pc_hand = janken[rand(3).to_i]

    if user_hand == pc_hand #あいこ→じゃんけん(buttle)
      puts "ホイ!"
      puts "----------------------------------------"
      puts "あなたは【#{user_hand}】を出しました"
      puts "相手は【#{pc_hand}】を出しました"
      puts "----------------------------------------"
      puts "あいこで..."
      buttle()
    elsif (user_hand == "グー" && pc_hand == "チョキ") || (user_hand == "チョキ" && pc_hand == "パー") || (user_hand == "パー" && pc_hand == "グー") #勝ち→ホイ(hoi_hand)
      puts "ホイ!"
      puts "----------------------------------------"
      puts "あなたは【#{user_hand}】を出しました  ◀ win"
      puts "相手は【#{pc_hand}】を出しました"
      puts "----------------------------------------"
      hoi_hand()
    else #負け→ホイ(hoi_faice)
      puts "ホイ!"
      puts "----------------------------------------"
      puts "あなたは【#{user_hand}】を出しました"
      puts "相手は【#{pc_hand}】を出しました      ◀ win"
      puts "----------------------------------------"
      hoi_faice()
    end

    when '3' #戦わない
      puts "ゲームを終了します"

    else #選択肢以外
      puts "選択番号を確認して下さい"
      buttle()
  end
end

def hoi_hand #ホイ（手）
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右) ※番号を選択して下さい"

  hoi = ["上","下","左","右"]
  user_num = gets.chomp.to_i
  user = hoi[user_num]
  pc = hoi[rand(4).to_i]

  if user == pc
    puts "ホイ!"
    puts "----------------------------------------"
    puts "あなた【#{user}】"
    puts "相手【#{pc}】"
    puts "----------------------------------------"
    puts "おめでとうございます！あなたの勝ちです！！"
    puts "0(もう一度遊ぶ) 1(ゲームを終了する) ※番号を選択して下さい"
    choice = gets.chomp.to_i
    if choice == 0
      buttle()
    elsif choice == 1
      puts "ゲームを終了します"
    else
      puts "選択番号を確認して下さい"
      buttle()
    end
  elsif user_num > 3
    puts "選択番号を確認して下さい"
    hoi_hand()
  else
    puts "ホイ!"
    puts "----------------------------------------"
    puts "あなた【#{user}】"
    puts "相手【#{pc}】"
    puts "----------------------------------------"
    buttle()
  end
end

def hoi_faice #ホイ（顔）
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右) ※番号を選択して下さい"

  hoi = ["上","下","左","右"]
  user_num = gets.chomp.to_i
  user = hoi[user_num]
  pc = hoi[rand(4).to_i]

  if user == pc
    puts "ホイ!"
    puts "----------------------------------------"
    puts "あなた【#{user}】"
    puts "相手【#{pc}】"
    puts "----------------------------------------"
    puts "残念...あなたの負けです。"
    puts "0(もう一度遊ぶ) 1(ゲームを終了する) ※番号を選択して下さい"
    choice = gets.chomp.to_i
    if choice == 0
      buttle()
    elsif choice == 1
      puts "ゲームを終了します"
    else
      puts "選択番号を確認して下さい"
      buttle()
    end
  elsif user_num > 3
    puts "選択番号を確認して下さい"
    hoi_faice()
  else
    puts "ホイ!"
    puts "----------------------------------------"
    puts "あなた【#{user}】"
    puts "相手【#{pc}】"
    puts "----------------------------------------"
    buttle()
  end
end

buttle()