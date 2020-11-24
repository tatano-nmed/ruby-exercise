#!/usr/bin/env ruby

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#ブロックを並べ替える
#文字列を長さの順に並び替える
def bsyori1
 ary = %w(
  Ruby is a open source programming
  )

  call_num = 0
  sorted1 = ary.sort do |a, b|
   call_num += 1
   a.length <=> b.length
  end
#  puts "ソートの結果 #{sorted}"
#  puts "配列の要素数 #{ary.length}"
#  puts "呼び出し回数 #{call_num}"
  sorted1
end

#sort_by でsort呼び出し回数を減らす
def bsyori2
 ary = %w(
  Ruby is a open source programming
  )

 sorted2 = ary.sort_by {|item| item.length}
end


class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義


 def test_block1
  aa1 = ["a", "is", "Ruby", "open", "source", "programming"]
   assert_equal aa1,bsyori1
 end
 def test_block2
  aa2 =["a", "is", "Ruby", "open", "source", "programming"]
   assert_equal aa2,bsyori2
 end
end
