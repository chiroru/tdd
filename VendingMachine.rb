# -*- coding: utf-8 -*-

require './money.rb'

class VendingMachine
  include Money

  def initialize
    @@counter = {YEN_10=>0, YEN_50=>0, YEN_100=>0, YEN_1000=>0}
  end

  def input(money)
    case money
    when YEN_10
      @@counter[YEN_10] += 1
    when YEN_50
      @@counter[YEN_50] += 1
    when YEN_100
      @@counter[YEN_100] += 1
    when YEN_1000
      @@counter[YEN_1000] += 1
    else
      raise "invalid argument."
    end
  end

  def sum()
    sum = 0
    @@counter.each_pair {|key, value|
      sum += key*value
    } 
    #puts "SUM: [" + sum.to_s + "]"
    return sum
  end
end

obj = VendingMachine.new
obj.input(Money::YEN_10)
obj.input(Money::YEN_10)
obj.sum()
