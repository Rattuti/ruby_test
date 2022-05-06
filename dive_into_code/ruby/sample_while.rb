def push_1_result
  puts "1から5で評価を入力してください"
  point = gets.to_i
  while true
    if point <= 0 || point > 5
      puts "1から5で入力してください"
      point = gets.to_i
    else
      puts "コメントを入力してください"
      comment = gets
      post = "ポイント：#{point}　コメント：#{comment}"
      file = File.open("data.txt", "a")
      file.puts(post)
      file.close
      break
    end
  end
end

def push_2_result
  puts "これまでの結果"
  read_file = File.open("data.txt", "r")
  puts read_file.read
  read_file.close
end

while true
  puts "実施したい処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:やめる"
  num = gets.to_i

  case num
  when 1
    puts push_1_result

  when 2
    puts push_2_result

  when 3
    puts "終了します"
    break
  else
    puts "1から3で入力してください"
  end

end