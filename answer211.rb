#!/usr/bin/ruby

require "test/unit"

#第２１章練習問題（１）
#配列の中の要素を別の要素に置き換える

class Mycoll

 def my_collect(obj, &block)
   buf = []               #配列の作成
   obj.each do |elem|    
    buf << block.call(elem)   #blockの処理をして配列に追加する
   end
   buf
 end

#ary = my_collect([1,2,3,4,5]) do |i|
#  i * 2
#end
end


class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def setup
    @obj = Mycoll.new
  end

  def test_name
    assert_equal [2, 4, 6, 8, 10],@obj.my_collect([1,2,3,4,5]){|i| i * 2}  #配列の値を２倍
  end
end

#
#実行後の内容
#Loaded suite answer211
#Started
#.
#
#Finished in 0.000417029 seconds.
#--------------------------------------------------------------------------------
#1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
#100% passed
#--------------------------------------------------------------------------------
#2397.91 tests/s, 2397.91 assertions/s

