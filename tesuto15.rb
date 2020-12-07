#!/usr/bin/env ruby

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#ハッシュ（Hash）クラス

#

class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義

#ハッシュのデフォルト値

 def test_hash1
   h = Hash.new(1)
   h["a"] = 10      #["a" => 10]
   assert_equal 10,h["a"]
   assert_equal 1,h["b"]     #存在しないキーの値は(1)
 end

 def test_hash2
   h = Hash.new do |hash, key|
    hash[key] = key.upcase
   end
   h["a"] = "b"     #["a" => "b"]
   assert_equal "b",h["a"]   #キー["a"]の値
   assert_equal "X",h["x"]   #存在しないキーの値はキーの大文字とする
 end

#fetchメソッドはキーが指定されてない時は例外処理を発生するが、第２引数の指定があれば引数を返却値とする
 def test_hash3
   h = Hash.new do |hash, key|
    hash[key] = key.upcase
   end
   h["a"] = "b"     #["a" => "b"]
   assert_equal "b",h.fetch("a", "(und)")
#存在しないキーの返却値をfetchの第2引数を優先する
   assert_equal "(und)",h.fetch("x", "(und)")
 end

#キーが存在するか調べる　存在すれば true
#key? has_key? include? member?
 def test_key1
   h = {"a" => "b", "c" => "d"}
   assert_equal true,h.key?("a")
   assert_equal true,h.has_key?("a")
   assert_equal false,h.include?("z")
   assert_equal false,h.member?("z")
 end
#オブジェクトが存在するか調べる　存在すれば true
#value?, has_value?
 def test_value1
   h = {"a" => "b", "c" => "d"}
   assert_equal true,h.value?("b")
   assert_equal false,h.has_value?("a")
 end

#ハッシュのキーの数を調べる
#size, length
 def test_size1
   h = {"a" => "b", "c" => "d"}
   assert_equal 2,h.size
   assert_equal 2,h.length
 end

#ハッシュが何も登録されていないか調べる
#empty?
 def test_empty1
   h = {"a" => "b", "c" => "d"}
   assert_equal false,h.empty?
   h2 = Hash.new
   assert_equal true,h2.empty?
 end

#ハッシュのキーと値の削除
#delete(key)
 def test_del1
   h = {"a" => "b", "c" => "d"}
   assert_equal true,h.key?("a")
   h.delete("a")      #キーを指定して削除
   assert_equal false,h.key?("a")
 end

#引数にブロックを指定すると、キーが存在しない時に実行する
 def test_del2
   h = {"a" => "b", "c" => "d"}
#指定したキーがないのでブロックを実行する
   assert_equal "no P.",h.delete("P"){|key| "no #{key}."}  
 end


#条件を与えて当てはまるものだけ削除する
#delete_if reject!
 def test_del3
   h = {"R" => "ruby", "P" => "Proc"}
   ha = {"P"=>"Proc"}
   assert_equal ha,h.delete_if {|key, value| key == "R"}
 end
#delete_if　キーが存在しない場合、元の内容を返す
 def test_del4
   h = {"R" => "ruby", "P" => "Proc"}
   ha2 = {"R"=>"ruby", "P"=>"Proc"}
   assert_equal ha2,h.delete_if {|key, value| key == "L"}
 end

#reject! はキーが存在しない場合、nilを返す
 def test_del5
   h = {"R" => "ruby", "P" => "Proc"}
   assert_equal nil,h.reject! {|key, value| key == "L"}
 end

#clear で初期化する場合、clear したハッシュを参照している別のハッシュも初期化する
#Hash.new で初期化した場合は、指定したハッシュのみ
 def test_del6
   h = {"R1"=>"ruby", "P"=>"Proc"}
   g = h
   h.clear
   assert_equal true,g.empty?
 end
 def test_del7
   h = {"R1"=>"ruby", "P"=>"Proc"}
   g = h
   h = Hash.new
   assert_equal false,g.empty?
 end

#２つのハッシュを合わせる
#Hash#merge
 def test_mag1
   h = {"a"=>"b"}
   ha = {"a"=>"b", "b"=>"c"}
   assert_equal ha,h.merge({"b"=>"c"})
 end


end
