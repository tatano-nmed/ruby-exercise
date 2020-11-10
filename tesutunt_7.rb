#!/usr/bin/env ruby

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#7章 メソッドの定義
#引数のデフォルト値指定

def hello(name="Ruby")    #引数=値　値がデフォルト値
 aa = "hello,#{name}"
end

#メソッドの戻り値

def max(a, b)
 if a > b
   a
 else
   b
 end
end

#max でreturnを使用
def max2(a, b)
 if a > b
   return a
 end
 return b
end


#引数が不定
def foo(*args)    #あたえられた引数を配列とする
 args
end

def foo1(arg, *args)    #１つは引数を指定する
 [arg, args]
end

#キーワード引数　キーを指定する
#引数:値　で初期値設定

def area(x:0, y:0, z:0)
 xy = x * y
 yz = y * z
 zx = z * x
 (xy + yz + zx) * 2
end


#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
# def setup
#   @obj = Step.new
# end

  def test_hello
    assert_equal "hello,Ruby",hello()
    assert_equal "hello,New",hello("New")
  end

  def test_max
    assert_equal 10,max(10, 5)
  end

  def test_max2
    assert_equal 10,max(10, 5)
  end

  def test_foo
    assert_equal [1, 2, 3],foo(1, 2, 3)
  end

  def test_foo11
    assert_equal [1, []],foo1(1)
  end

  def test_foo12
    assert_equal [1, [2, 3]],foo1(1, 2, 3)
  end

#キーワード引数
  def test_area
    assert_equal 52,area(x:2, y:3 , z:4)
  end
  def test_area2
    assert_equal 52,area(z:4, x:2, y:3)  #順序を変える
  end
  def test_area3
    assert_equal 12,area(x:2, z:3)  #yを省略
  end

  def test_area4
    args1 = {x: 2, y: 3, z:4}    #引数をハッシュで渡す
    assert_equal 52,area(args1)
  end
end


