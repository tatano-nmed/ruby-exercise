#!/usr/bin/ruby
#問１
# 空の配列を作って、1から100までの値を格納する
a = []
100.times{|i| a[i]= i + 1}
p a

a = (1..10).to_a
p a

#問２

a = (1..10).to_a

# 配列の全ての要素を100倍した値を含む新しい配列を作る
a2 = a.collect {|i| i * 100}
p a2

# 配列の全ての要素を100倍する
a.collect! {|i| i * 100}

p a

#問３
ary = (1..10).to_a

# aryから3の倍数だけを取り出す
ary3 = ary.delete_if {|i| i % 3 != 0}
p ary3

#問４（配列を逆順）

p ary.sort_by {|i| -i}


#問5　（配列の和）
ary = (1..100).to_a
reault = 0
ary.each{|i| reault += i}
p reault


#問６（10個の配列を要素を含む配列を10個取り出す）

ary = (1..100).to_a

reault2 = Array.new
10.times do |i|
 reault2 << ary[i * 10, 10]
end

p reault2

#問7（個々の配列を足し合わせた配列を作成する）

def sum_arry(ary1, ary2)
 result = Array.new
 i = 0
 ary1.each do |elem1|
  result << elem1 + ary2[i]
  i += 1
 end
 return result
end 
p sum_arry([1, 2, 3],[4, 6, 8])  #==>[5, 8, 11]

#Arryzip を使用
def sum_arry2(ary12, ary22)
 rest = Array.new
 ary12.zip(ary22){|a, b| rest << a + b}
 return rest
end

p sum_arry2([1, 2, 3],[4, 5, 6])  #==>[5, 7, 9]  

