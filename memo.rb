require "csv"
 
while true do
puts "1(新規でメモを作成) 2(既存のメモ編集する) 3(終了する)"
memo_type = gets.to_i
if memo_type == 1 then
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets
    puts "メモしたい内容を記入してください"
    CSV.open("#{file_name}.csv","w")do |csv|
      write_text = gets.chomp
      csv << [write_text]
    end
    
elsif memo_type == 2
  puts "上書きしたいファイル名を入力"
  file_name = gets
  puts "上書きの内容を入力"
    CSV.open("#{file_name}.csv","a")do |csv|
      write_text = gets.chomp
      csv << [write_text]
    end

end #if

if memo_type == 3 #終わり
  break
end

end #while
