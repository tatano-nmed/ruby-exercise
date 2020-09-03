#!/usr/bin/ruby

#ブロック　繰り返し処理
sum = 0
outcome = {"参加費"=>1000,"ストラップ"=>500,"食費"=>2000}
outcome.each do |pair|
 sum += pair[1]      #値を設定
end
puts "合計： #{sum}"

sum = 0     #sumをクリア
outcome.each do |item, pair|
 sum += pair
 puts "#{item} ：#{pair}"
end
puts "合計２： #{sum}"


#並べ替え
#%w( )は各単語を要素とする配列を生成するリテラル

ary = %w(
  Ruby is a open source programming language to write
)

call_num = 0
sorted = ary.sort do |a, b|
 call_num += 1
 a.length <=> b.length
end
puts "ソート結果 #{sorted}"
puts "配列の要素数 #{ary.length}"
puts "呼び出し回数 #{call_num}"

#sort_by　を使用
sorted = ary.sort_by {|item| item.length}
p sorted

