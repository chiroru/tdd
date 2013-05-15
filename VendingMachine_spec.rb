# -*- coding: utf-8 -*-

require './VendingMachine.rb'

describe VendingMachine, "にお金を入れる場合：" do
  before do
  end

  it "10円を入れると合計は10円であること" do
    vm = VendingMachine.new
    vm.input(Money::YEN_10)
    vm.sum().should == 10
    vm = nil
  end

  it "50円を入れると合計は50円であること" do
    vm = VendingMachine.new
    vm.input(Money::YEN_50)
    vm.sum().should == 50
    vm = nil
  end

  it "100円を入れると合計は50円であること" do
    vm = VendingMachine.new
    vm.input(Money::YEN_100)
    vm.sum().should == 100
    vm = nil
  end

  it "1000円を入れると合計は1000円であること" do
    vm = VendingMachine.new
    vm.input(Money::YEN_1000)
    vm.sum().should == 1000
    vm = nil
  end

  it "10円を2回入れると合計は20円であること" do
    vm = VendingMachine.new
    vm.input(Money::YEN_10)
    vm.input(Money::YEN_10)
    vm.sum().should == 20
    vm = nil
  end

  it "10円, 50円, 100円, 1000円を入れると合計は1160円であること" do
    vm = VendingMachine.new
    vm.input(Money::YEN_10)
    vm.input(Money::YEN_50)
    vm.input(Money::YEN_100)
    vm.input(Money::YEN_1000)
    vm.sum().should == 1160
    vm = nil
  end

  it "不正な金額を入れると例外が発生すること" do
    proc {
      vm = VendingMachine.new
      vm.input(500)
    }.should raise_error(RuntimeError, "invalid argument.");
  end

  after do
  end

end
