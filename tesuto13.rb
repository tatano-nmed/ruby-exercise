#!/usr/bin/env ruby

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#配列（Array）クラス

class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義

#配列から要素を取り除く
#compact,compact! nilを取り除く
 def test_ary1
   a = [1, nil, 3, nil, nil]
   assert_equal [1, 3],a.compact!
 end
#delete(n) 要素（n)を取り除く
 def test_ary2
   a = [1, 2, 3, 2, 1]
   a.delete(2)
   assert_equal [1, 3, 1],a
 end
#delete_at(n)　配列[n]の要素を取り除く
 def test_ary3
   a = [1, 2, 3, 4, 5]
   a.delete_at(2)
   assert_equal [1, 2, 4, 5],a
 end
#delete_if 配列nの要素がブロック実行した結果が真の時に取り除く
 def test_ary4
   a = [1, 2, 3, 4, 5]
   assert_equal [1, 2, 3],a.delete_if{|i| i > 3}
 end

#slice!(n) 配列から指定された部分を取り除き返却
#slice!(n..m),slice!(n, len)
 def test_ary5
   a = [1, 2, 3, 4, 5]
   assert_equal [2, 3],a.slice!(1, 2) #[1]から２つを取り除く
   a = [1, 2, 3, 4, 5]
   a.slice!(1, 2)
   assert_equal [1, 4, 5],a    #取り除いた配列
 end

#uniq,uniq!　重複する要素を取り除く
 def test_ary6
   a = [1, 2, 3, 4, 4, 2]
   assert_equal [1, 2, 3, 4],a.uniq!  
 end


#shift　配列の先頭の要素を取り除く
 def test_ary7
   a = [1, 2, 3, 4, 5]
   assert_equal 1,a.shift
   a = [1, 2, 3, 4, 5]
   a.shift
   assert_equal [2, 3, 4, 5],a
 end
#pop　配列の末尾の要素を取り除く
 def test_ary8
   a = [1, 2, 3, 4, 5]
   assert_equal 5,a.pop
   a = [1, 2, 3, 4, 5]
   a.pop
   assert_equal [1, 2, 3, 4],a
 end


#配列の要素を置き換える
#a.collect{|item| },collect!,map,map!
 def test_colary1
   a = [1, 2, 3, 4, 5]
   assert_equal [2, 4, 6, 8, 10],a.collect!{|item| item * 2}
 end

#fill(value),fill(value, begin) 配列の要素をvaleuに置き換える
 def test_colary2
   a = [1, 2, 3, 4]
   assert_equal [1, 2, 0, 0],a.fill(0, 2)
 end

#reverse 配列の要素を逆順にsort
 def test_colary3
   a = [1, 2, 3, 4, 5]
   assert_equal [5, 4, 3, 2, 1],a.reverse!
 end

#sort 配列の要素を逆順にsort
 def test_colary4
   a = [2, 4, 3, 1, 5]
   assert_equal [1, 2, 3, 4, 5],a.sort!
 end
 def test_colary5
   a = [2, 4, 3, 1, 5]
   ab = a.sort_by{|i| -i}
   assert_equal [5, 4, 3, 2, 1],ab
 end


end
