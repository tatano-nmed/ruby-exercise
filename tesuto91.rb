#!/usr/bin/env ruby

require "test/unit"    #���̋L�q�����邱�Ƃ�Test::Unit::TestCase�����s�����

#�Y�����\�b�h obj[i]��obj[i]=x ��[]��[]= �Œ�`����
class Point
 attr_accessor :x, :y
 def initialize(x=0, y=0)   #x,y������������
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

class TestSample < Test::Unit::TestCase  #Test::Unit::TestCase���p������TestSample�N���X���`

#�͈͉��Z�q�iRange�I�u�W�F�N�g�j�̏ȗ��n
 def test_rang1
#�u..�v�͈͂̊J�n����I���܂ł̒l���܂ޔz����쐬
    assert_equal [5, 6, 7, 8],(5..8).to_a
#�u...�v�͈͂̊J�n����I���̂P��O�܂Ŕz����쐬
    assert_equal [5, 6, 7],(5...8).to_a
 end

#
#�Y�����\�b�h obj[i]��obj[i]=x ��[]��[]= �Œ�`����
 def test_point
  point1 = Point.new(3,6)
  assert_equal 3,point1[0]
  assert_equal 6,point1[1]
  assert_equal 2,point1[1]=2   #�z���[1]�̒l��2 �Ƃ���
  assert_equal "out of range '2'" ,point1[2]
end

end
