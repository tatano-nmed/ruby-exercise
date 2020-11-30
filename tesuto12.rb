#!/usr/bin/env ruby

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#数値クラス　数値演算

class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義

#Integer（整数）とFloat（浮動小数点）の計算結果
 def test_num1
   assert_equal 2,1 + 1
   assert_equal 2.0,1 + 1.0
   assert_equal 1,2 - 1
   assert_equal 1.0,2 - 1.0
   assert_equal 6,2 * 3
   assert_equal 6.0,2 * 3.0
   assert_equal 2,5 / 2         #2で割ると商は2
   assert_equal 2.5,5 / 2.0     #2.0で割ると商が2.5
   assert_equal 1,5 % 2         #5/2の余り
   assert_equal 1.0,5 % 2.0      #5/2の余り
 end

#割り算
# x.div(y) xをyで割った商を整数で返す
 def test_num2
   assert_equal 2,5.div(2)
   assert_equal 2,5.div(2.2)
   assert_equal -3,-5.div(2)
   assert_equal -3,-5.div(2.2)
 end
# x.div(y) xをyで割った商を返す。整数同士はRationalオブジェクトで返却
# 5.quo(2) => (5/2)
 def test_num3
   assert_equal 2.5,5.quo(2.0)
 end
# x.div(y) xをyで割った商とあまりを配列で返す
 def test_num4
   assert_equal [2, 3.0],10.divmod(3.5)
 end
#数値型の変換
#Integer（整数）とFloat（浮動小数点）の変換は、to_i,to_fを使用
#to_iは小数以下を切り捨てる
 def test_num5
   assert_equal 10.0,10.to_f     #整数を小数
   assert_equal 10,10.9.to_i     #小数を整数
   assert_equal -10,-10.8.to_i
   assert_equal 123,"123".to_i
   assert_equal 12.3,"12.3".to_f
 end
#roundメソッドで四捨五入を行う
 def test_num6
   assert_equal 0.1,0.12888.round(1)
   assert_equal 0.13,0.12888.round(2) #（2)小数点以下２桁
   assert_equal 1,1.2888.round
   assert_equal 2,1.888.round
   assert_equal 100,120.round(-2)     #小数より上位（整数部）をまとめる
   assert_equal 200,180.round(-2)     #小数より上位（整数部）をまとめる
 end
#roundメソッドで四捨五入を行う
 def test_num7
   assert_equal 2,1.5.ceil     #1.5より大きくて最も小さい整数2
   assert_equal -1,-1.5.ceil     #-1.5より大きくて最も小さい整数
   assert_equal 1,1.5.floor     #1.5より小さくて最も大きい整数
   assert_equal -2,-1.5.floor     #1.5より大きくて最も小さい整数2
 end

end
