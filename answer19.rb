# encoding: utf-8

#１９章
#(1) EUC-JP の文字とShift_JIS 文字を連結して utf-8 文字列で返す

def to_utf8(str_euc, str_sjis)
 str_euc.encode("UTF-8") + str_sjis.encode("UTF-8")
end

str_euc = "こんにちは".encode("EUC-JP")
str_sjis = "さようなら".encode("Shift_JIS")

puts to_utf8(str_euc, str_sjis)

#(2) Shift_JIS文字のファイルを読み、UTF-8文字で出力する
#Shft_jis文字でjis.txt に出力する

File.open("jis.txt","w:Shift_JIS") do |f|
 f.write("こんにちは")
end

#jis.txtを開いて、UTF-8で出力する
File.open("jis.txt", "r:Shift_JIS") do |f|
 str = f.read
 puts str.encode("UTF-8")
end

#(3)
#
str1 = '①'
str2 = 'Ⅰ'

#Windows_31J と　Shift_JISで違う文字

str01 = str1.encode(Encoding::Windows_31J)

p str01.force_encoding("Windows-31J").valid_encoding?

#force_encoding("Windows-31J") str01をWindows-31Jの文字列として使用する
#vaid.encoding?で適切なエンコーディングかのチェックを行う。true となる

str02 = str1.encode(Encoding::Windows_31J)
p str02.force_encoding("Shift_JIS").valid_encoding?
p str02.force_encoding("EUC-JP").valid_encoding?

#問題はShift_JIS との判定でしたが,falseの文字が入力できないので、EUC-JP としました 
