require File.dirname(__FILE__) + '/spec_helper.rb'

require "lib/mean/sum"
require "lib/mean/mean"

describe "Sum and Array" do
  
  it "should find the sum of a given array" do
    array_sum = [1, 2, 3].sum
    array_sum.should == 6
  end
  
  it "should be able to sum big numbers" do
    bignum_one = 1337 ** 1337
    bignum_two = 1337 * 1337
    bignum_three = 1337
    bignum_sum = [(1337 ** 1337), (1337 * 1337), 1337].sum
    bignum_sum.should == bignum_one + bignum_two + bignum_three
  end
  
  it "should be able to sum fractions" do
    fraction_one = 22/7
    fraction_two = 1/3
    fraction_three = 81/9
    fraction_sum = [fraction_one, fraction_two, fraction_three].sum
    fraction_sum.should == fraction_one + fraction_two + fraction_three
  end
  
  it "should be able to sum decimals" do
    decimal_one = 0.001
    decimal_two = 62.32424
    decimal_three = 0.75
    decimal_sum = [decimal_one, decimal_two, decimal_three].sum
    decimal_sum.should == decimal_one + decimal_two + decimal_three
  end
  
  it "should be able to add negative numbers" do
    negative_number_one = -3
    negative_number_two = -27.3
    negative_number_three = -80
    negative_number_sum = [negative_number_one, negative_number_two, negative_number_three].sum
    negative_number_sum.should == negative_number_one + negative_number_two + negative_number_three
  end
  
  it "should find the mean of a given array" do
    array_mean = [1, 2, 3].mean
    array_mean.should == 2
  end
  
  it "should be able to find the mean of big numbers" do
    bignum_one = 1337 ** 1337
    bignum_two = 1337 * 1337
    bignum_three = 1337
    bignum_mean = [(1337 ** 1337), (1337 * 1337), 1337].mean
    bignum_sum = bignum_one + bignum_two + bignum_three
    bignum_size = [bignum_one, bignum_two, bignum_three].size
    bignum_mean.should == bignum_sum / bignum_size
  end
  
  it "should be able to find the mean of fractions" do
    fraction_one = 22/7
    fraction_two = 1/3
    fraction_three = 81/9
    fraction_mean = [22/7, 1/3, 81/9].mean
    fraction_sum = [fraction_one, fraction_two, fraction_three].sum
    fraction_size = [fraction_one, fraction_two, fraction_three].size
    fraction_mean.should == fraction_sum / fraction_size
  end
  
  it "should be able to find the mean of decimals" do
    decimal_one = 0.001
    decimal_two = 62.32424
    decimal_three = 0.75
    decimal_mean = [0.001, 62.32424, 0.75].mean
    decimal_sum = [decimal_one, decimal_two, decimal_three].sum.to_f
    decimal_size = [decimal_one, decimal_two, decimal_three].size
    decimal_mean.should == decimal_sum / decimal_size
  end
  
  it "should be able to find the mean of negative numbers" do
    negative_number_one = -3
    negative_number_two = -27.3
    negative_number_three = -80
    negative_number_mean = [-3, -27.3, -80].mean
    negative_number_sum = [negative_number_one, negative_number_two, negative_number_three].sum
    negative_number_size = [negative_number_one, negative_number_two, negative_number_three].size
    negative_number_mean.should == negative_number_sum / negative_number_size
  end
  
  it "should concatenate strings with sum" do
    non_number = ["B", "O", "N", "U", "S"]
    non_number.sum.should == "BONUS"
  end
  
  it "should not find the mean of non-numbers" do
    non_number = ["B", "O", "N", "U", "S"]
    non_number.mean.should rescue NoMethodError
  end
  
end