#第１７章　練習問題
#(2)
def reverse(input)
 open(input, "r+") do |f|     #inputを読み込み・書き込み用で開く
  lines = f.readlines     #全体を読み込む
  f.rewind                #ファイルのポインタを先頭に戻す
  f.truncate(0)           #ファイルの長さを０にする
#  f.write lines.reverse.join()  #降順に出力する
#  f.write lines[0]   #先頭の１件を出力する
  f.write lines.reverse[0]   #最後の１件を出力する
 end
end

reverse(ARGV[0])



