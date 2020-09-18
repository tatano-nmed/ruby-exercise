#問１　文字列の配列を作成
str = "Ruby is an object oriented programming language"
colm = str.split
p colm

#問２　問1をアルファベット順にソート

p colm.sort    #=> 大文字、小文字の順にソート

#問３　問２を大文字小文字の関係なくソート

str = "Ruby is an object oriented programming language"
colm = str.split
p colm.sort_by{|s| s.downcase}    #=> 大文字を小文字に変換してsort

#問４　文字列に含まれる文字とその数を表示
str = "Ruby is an object oriented programming language"
count = Hash.new(0)
str.each_char do |c|
 count[c] += 1
end
count.keys.sort.each do |c|
 printf("'%s': %s\n", c, "*" * count[c])
end

 p count.to_a


