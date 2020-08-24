print("Hello, Ruby.\n")

puts "aaaa,Ruby."
puts "aaaa", "Ruby."

puts Math.sin(4)  #関数

x = 40
y = 20
z = 30
area = (x*y + y*z + z*x) * 2
puts "表面積=#{area}"

#配列

names = ["aa","bb","cccccc"]
puts names.size

names.each do |n|
 puts n
end

#Hash

address = {name:"高橋" , kananame:"タカハシ" , tel:"010-1113-4444"}
address.each do |key,value|
  puts "#{key}: #{value}"
end


#代入 *項目は１つのみ配列となる

first, second,*rast = 1,2,3,4,5
p [first , second,rast]
first, *second,rast = 1,2,3,4,5
p [first , second , rast]
first, second,rast = 1,2,3,4,5
p [first , second , rast]
first, second,*rast = 1,2,3
p [first , second , rast]

#
ary1 = []
ary2 = []
p ary1.object_id
p ary2.object_id

#

str11 = "foo"
str12 = str11
str13 = "f" + "o" + "o"
p str11 == str12
p str11 == str13

