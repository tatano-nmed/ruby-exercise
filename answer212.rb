#!/usr/bin/ruby

require "test/unit"

#第21章練習問題（３）
#実行するたび与えられた引数の合計を返す

class Pro213
 def accumlatr
  total = 0
  Proc.new do |x|  
    total += x 
  end
 end
end

class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def setup
    @acc = Pro213.new
  end
  def test_name2
    acc2 = @acc.accumlatr          #acc2 を作成する
    assert_equal 1,acc2.call(1)    #acc2でprocをcallして引数を加算する
    assert_equal 3,acc2.call(2)    #acc2に合計  
    assert_equal 6,acc2[3]         #[]でprocをcall
    assert_equal 10,acc2[4] 
 end
end


#
#実行後の内容
#Loaded suite answer212
#Started
#.
#
#Finished in 0.000430783 seconds.
#--------------------------------------------------------------------------------
#1 tests, 4 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
#100% passed
#--------------------------------------------------------------------------------
#2321.35 tests/s, 9285.42 assertions/s

