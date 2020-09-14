#問題１ 摂氏を華氏に変換
#華氏＝摂氏　X　9　÷ 5 + 32
puts "摂氏を華氏に変換"

def celstofahr(cels)
  return cels * 9.0 / 5.0 + 32
end
p celstofahr(40)

#問題２
puts "華氏を摂氏に変換"

def celstofahr2(fahr)
  return (fahr.to_f - 32 ) * 5.0 / 9.0
end
p celstofahr2(104)

#摂氏１度から摂氏１００度まで華氏と対応

1.upto(100) do |i|
 print "華氏 ",i, " 摂氏 ", celstofahr2(i),"\n"
end

puts

#問題３
#さいころを振って出た目（１から６のランダムな整数）
def dice
 Random.rand(6) + 1
end

p dice 

#問題４
#１０個のサイコロを振って出た目の合計
def dice10
 ret = 0
 10.times do
  ret += dice
 end
 ret
end

p dice10

#問題５
#整数が素数かのチェック
puts "整数が素数かのチェック"

def prime?(num)
 return false if num < 2
 2.upto(Math.sqrt(num)) do |i|
  if num % i == 0
    return false
  end
 end
  return true
end

1.upto(10) do |n|
 puts n if prime?(n)
end

