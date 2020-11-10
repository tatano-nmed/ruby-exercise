#!/usr/bin/env ruby

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#４．６　多重代入
def tmp
  a, b = 0, 1
  a, b = b, a     #aの値をbに代入する
  [a, b]
end

def tmp1
 ary = [1, 2]
  a, b = ary     #配列の要素を取り出す
  [a, b]
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_tmp
    assert_equal [1, 0],tmp
  end
  def test_tmp2
    assert_equal [1,2],tmp1
  end

#第五章条件と真偽
#文字列クラスの長さがゼロ
  def test_chk
    aa = "".empty?
    assert_equal true,aa
  end
#文字列クラスの長さがゼロ以上
  def test_chk2
    aa = "AAA".empty?
    assert_equal false,aa
  end

end
