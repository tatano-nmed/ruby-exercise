#!/usr/bin/ruby

#（１）ハッシュを作成
wday = {"sunday"=>"日曜日", "monday"=>"月曜日", "tuesday" => "火曜日"}

p wday["sunday"]

#（２）（１）のハッシュのベアの数

p wday.size

#（３）

wday = {"sunday"=>"日曜日", "monday"=>"月曜日", "tuesday" => "火曜日"}
%w(sunday monday tuesday).each do |day|
  puts "「#{day}」は#{wday[day]}のことです。"
end
#=>「sunday」は日曜のことです。

#（４)

def str2hash(str)
  hash = Hash.new()
  array = str.split(/\s+/)
  while key = array.shift
    value = array.shift
    hash[key] = value
  end
  return hash
end

p str2hash("blue 青 white 白 \nred 赤")

#=>{"buke"=>"青", "white"=>"白", "red"=>"赤"}

