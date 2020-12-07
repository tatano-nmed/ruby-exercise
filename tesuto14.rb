#!/usr/bin/env ruby

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#文字列（String）クラス


class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義


#文字列の長さを調べる(length or size)
 def test_length1
   assert_equal 19,"just anonther ruby,".length
   assert_equal 19,"just anonther ruby,".size
 end

 def test_length2
   assert_equal 5,"あいうえお".length
   assert_equal 15,"あいうえお".bytesize   #バイトの長さ
 end

#empty? 文字列の長さが０であるかの判定
 def test_length3
   assert_equal true,"".empty?
   assert_equal false,"foo".empty?
 end

#文字列のインデックスから文字を取り出す
 def test_length4
   str = "新しいstringクラス"
   assert_equal "新",str[0]
   assert_equal "いstringク",str[2, 8]
 end

#新しい文字列を作る
 def test_cat
   hello = "Hello,"
   world = "World!"
   str = hello + world
   assert_equal "Hello,World!",str
 end

#文字列をつなげる << .concat
 def test_cat2
   hello = "Hello,"
   world = "World!"
   hello << world      #文字列に文字列をつなげる
   hello.concat(world)      #"Hello,World!" に "World!"をつなげる
   assert_equal "Hello,World!World!",hello
 end

#split 文字列を分割する
 def test_split1
   str = "Hello,World,aaaa"
   colum = str.split(",")    # , で分割して文字列を要素とした配列を作成する
   assert_equal ["Hello", "World","aaaa"],colum
 end


#chop ,chop! 末尾を取り除く
#chomp ,chomp! 改行を取り除く
 def test_chop1
   str = "abcde"
   assert_equal "abcd",str.chop
   assert_equal "abcde",str.chomp   #改行を取り除く
 end
 def test_chop2
   str2 = "abcde\n"
   assert_equal "abcde",str2.chop
   assert_equal "abcde",str2.chomp   #改行を取り除く
 end

#delete文字列を取り除く
 def test_del1
   str = "abacadae"
   assert_equal "bcde",str.delete("a")
 end
#revers文字列を逆順に並び替える
 def test_rev1
   str = "abcde"
   assert_equal "edcba",str.reverse
 end

#strip 文字列の先頭と末尾の空白を取り除く
 def test_str1
   str = " abc de "
   assert_equal "abc de",str.strip
 end

#upcase アルファベットの小文字を大文字に置き換える
 def test_upc1
   str = "abcde"
   assert_equal "ABCDE",str.upcase
 end
#downcase アルファベットの小文字を大文字に置き換える
 def test_upc2
   str = "ABCDE"
   assert_equal "abcde",str.downcase
 end

#swapcase アルファベットの小文字を大文字に小文字を大文字に置き換える
 def test_upc3
   str = "AbCdE"
   assert_equal "aBcDe",str.swapcase
 end

#capitalize 最初の文字を大文字に以降を小文字に置き換える
 def test_upc4
   str = "abCdE"
   assert_equal "Abcde",str.capitalize
 end

#s.tr 複数の文字をどう置き換えるか指定できる。正規表現などを使って置き換える文字の指定はできない。
 def test_st1
   str = "あいうえお"
   assert_equal "あイうえお",str.tr("い", "イ")
 end

end
