#第１７章　練習問題
#(3)
def tail(lines, file)
 queue = Array.new
 open(file) do |io|
  while line = io.gets
    queue.push(line)     #配列の末尾に追加
    if  queue.size > lines  #配列数が lines より大きい場合、先頭を取り出す
       queue.shift 
    end
   end
  end
  queue.each{|line| print line }  #ファイルの最後からlines行分の出力
end

puts "==="
tail(3, __FILE__)

