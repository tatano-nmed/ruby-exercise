#��P�@������̔z����쐬
str = "Ruby is an object oriented programming language"
colm = str.split
p colm

#��Q�@��1���A���t�@�x�b�g���Ƀ\�[�g

p colm.sort    #=> �啶���A�������̏��Ƀ\�[�g

#��R�@��Q��啶���������̊֌W�Ȃ��\�[�g

str = "Ruby is an object oriented programming language"
colm = str.split
p colm.sort_by{|s| s.downcase}    #=> �啶�����������ɕϊ�����sort

#��S�@������Ɋ܂܂�镶���Ƃ��̐���\��
str = "Ruby is an object oriented programming language"
count = Hash.new(0)
str.each_char do |c|
 count[c] += 1
end
count.keys.sort.each do |c|
 printf("'%s': %s\n", c, "*" * count[c])
end

 p count.to_a


