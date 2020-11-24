#!/usr/bin/env ruby

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#添字メソッド obj[i]とobj[i]=x を[]と[]= で定義する
class Point
 attr_accessor :x, :y
 def initialize(x=0, y=0)   #x,yを初期化する
   @x, @y = x, y
 end

 def [](idx)
  case idx
  when 0
    x
  when  1
    y
  else
   "out of range '#{idx}'"
  end
 end

 def []=(idx, val)
 case idx
  when  0
   self.x = val
  when  1
   self.y = val
  else
    "out of range '#{idx}'"
  end
 end
end

class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義

#範囲演算子（Rangeオブジェクト）の省略系
 def test_rang1
#「..」範囲の開始から終了までの値を含む配列を作成
    assert_equal [5, 6, 7, 8],(5..8).to_a
#「...」範囲の開始から終了の１つ手前まで配列を作成
    assert_equal [5, 6, 7],(5...8).to_a
 end

#
#添字メソッド obj[i]とobj[i]=x を[]と[]= で定義する
 def test_point
  point1 = Point.new(3,6)
  assert_equal 3,point1[0]
  assert_equal 6,point1[1]
  assert_equal 2,point1[1]=2   #配列の[1]の値＝2 とする
  assert_equal "out of range '2'" ,point1[2]
end

end
