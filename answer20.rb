#20章練習問題
#（１）
def jparsedate(str)
 now = Time.now
 year = now.year
 month = now.month
 day = now.day
 hour = now.hour
 min = now.min
 sec = now.sec
 str.scan(/(午前|午後)?(\d+)(年|月|日|時|分|秒)/) do
#scan（)で指定した文字とマッチした部分を取り出す
#正規表現で()()の指定があるので()を配列で返却
  case $3                #(年|月|日|時|分|秒)のいずれかに一致
   when "年"
     year = $2.to_i
   when "月"
     month = $2.to_i
   when "日"
     day = $2.to_i
   when "時"
     hour = $2.to_i
     hour += 12 if $1 == "午後"   #$1が午後なら12時間加算
   when "分"
     min = $2.to_i
   when  "秒"
    sec = $2.to_i
   end
 end
  return Time.mktime(year, month, day, hour, min, sec)
end

p jparsedate("2020年12月1日午後8時17分50秒")
p jparsedate("8時17分50秒")

puts "==="

#(2)
def ls_t(path)
 entries = Dir.entries(path)           #エントリを取得(すべてのディレクトリ名を配列で返す）
 entries.reject!{|name| /^\./ =~ name }   #"."で始まるファイルを削除
 mtimes = Hash.new                     #mtimes（ファイルを最後に更新した時間)を収集しながらsort
 entries = entries.sort_by do |name|
   mtimes[name] = File.mtime(File.join(path, name))
 end

 entries.each do |name|
  printf("%-30s %s\n", name, mtimes[name])   #ファイル名とmtimeを表示
 end
 rescue => ex      #例外処理
  puts ex.message
end

ls_t(ARGV[0] || ".")
