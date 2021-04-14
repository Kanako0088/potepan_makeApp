@zyanken_num = 0
while @zyanken_num < 3 do

puts "じゃんけん・・・"

def matome(kakegoe)
puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

@g = "グー"
@c = "チョキ"
@pa = "パー"

@zyanken_num = gets.to_i

#私のターン
if @zyanken_num < 3 then
  puts kakegoe
  puts "--------------------"
  if @zyanken_num == 0 then
    puts "あなた:#{@g}をだしました"
  elsif @zyanken_num == 1
    puts "あなた:#{@c}をだしました"
  elsif @zyanken_num == 2
    puts "あなた:#{@pa}をだしました"
  end
end

#敵のターン
@teki_num = rand(2).to_i
if @teki_num == 0 then
  puts "相手:#{@g}をだしました"
elsif @teki_num == 1
  puts "相手:#{@c}をだしました"
elsif @teki_num == 2
  puts "相手:#{@pa}をだしました"
end #if
puts "--------------------"
end #def matome

matome("ホイッ！！！")

#「あいこ」と「じゃんけんの勝敗」
if @zyanken_num == @teki_num then
  puts "あいこで〜〜"
  matome("ショ！！！")
elsif @zyanken_num + 1 == @teki_num || @zyanken_num + 2 == @teki_num
  puts "じゃんけんでは私が勝った"
  case_pattern = "私が勝った"
elsif @zyanken_num == @teki_num + 1 || @zyanken_num == @teki_num + 2
  puts "じゃんけんでは敵が勝った"
  case_pattern = "敵が勝った"
end

puts "あっちむいて〜〜"
puts "0(上) 1(下) 2(左) 3(右)"

top = "上"
bottom = "下"
left = "左"
right = "右"

atti = gets.to_i

puts "ホイッ！！！"
puts "--------------------"

# 私のターン
if atti == 0 then
  puts "あなた:#{top}"
elsif atti == 1
  puts "あなた:#{bottom}"
elsif atti == 2
  puts "あなた:#{left}"
elsif atti == 3
  puts "あなた:#{right}"
end

#敵のターン
teki = rand(3)
if teki == 0 then
  puts "相手:#{top}"
elsif teki == 1
  puts "相手:#{bottom}"
elsif teki == 2
  puts "相手:#{left}"
elsif teki == 3
  puts "相手:#{right}"
end #if

puts "--------------------"

#勝敗
case case_pattern
when "私が勝った"
  if atti == teki
    puts "勝った！おめでとう！！"
  else
    puts "負けた！orz"
  end
when "敵が勝った"
  if atti == teki
    puts "負けた！orz"
  else
    puts "勝った！おめでとう！！"
  end
else
  "こりゃだめだ"
end

end #全体のループ