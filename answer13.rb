#!/usr/bin/ruby
#��P
# ��̔z�������āA1����100�܂ł̒l���i�[����
a = []
100.times{|i| a[i]= i + 1}
p a

a = (1..10).to_a
p a

#��Q

a = (1..10).to_a

# �z��̑S�Ă̗v�f��100�{�����l���܂ސV�����z������
a2 = a.collect {|i| i * 100}
p a2

# �z��̑S�Ă̗v�f��100�{����
a.collect! {|i| i * 100}

p a

#��R
ary = (1..10).to_a

# ary����3�̔{�����������o��
ary3 = ary.delete_if {|i| i % 3 != 0}
p ary3

#��S�i�z����t���j

p ary.sort_by {|i| -i}


#��5�@�i�z��̘a�j
ary = (1..100).to_a
reault = 0
ary.each{|i| reault += i}
p reault


#��U�i10�̔z���v�f���܂ޔz���10���o���j

ary = (1..100).to_a

reault2 = Array.new
10.times do |i|
 reault2 << ary[i * 10, 10]
end

p reault2

#��7�i�X�̔z��𑫂����킹���z����쐬����j

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

#Arryzip ���g�p
def sum_arry2(ary12, ary22)
 rest = Array.new
 ary12.zip(ary22){|a, b| rest << a + b}
 return rest
end

p sum_arry2([1, 2, 3],[4, 5, 6])  #==>[5, 7, 9]  

