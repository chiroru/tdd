# -*- coding: utf-8 -*-

describe Array, "が空の場合: " do
  before do
    @empty_array = []
  end

  it "#empty? はtrueであること " do
    @empty_array.should be_empty
  end

  it "#size は 0 であること" do
    @empty_array.size.should == 0
  end

  after do
    @empty_array = nil
  end
end

