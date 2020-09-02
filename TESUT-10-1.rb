#!/usr/bin/ruby

#エラー処理と例外
ltotal = 0
wtotal = 0
ctotal = 0

ARGV.each do |file|
 begin
  input = File.open (file)   #ファイルを開く
  l = 0                      #file内の行数
  w = 0                      #file内の単語数
  c = 0                      #file内の文字数
  input.each_line do |line|
   l += 1
   c += line.size
   line.sub!(/^\s+/,"")      #先頭の空白を削除
   ary = line.split(/\s+/)   #空白文字で分解
   w += ary.size
 end
 input.close
 printf("%8d %8d %8d %s\n",l, w, c, file)
 ltotal += 1
 wtotal += w
 ctotal += c

 rescue => ex
  puts ex.message      #例外のメッセージ出力
 end
end

printf("%8d %8d %8d %s\n",ltotal, wtotal, ctotal,"total")

