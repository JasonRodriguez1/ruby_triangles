require 'rspec'
require 'triangle.rb' 

describe Triangle do 
  it 'is initialized with 3 sides' do
    test_triangle = Triangle.new(4,5,6)
    test_triangle.should be_an_instance_of Triangle
  end
  it 'checks if it is a valid triangle' do
    test_triangle = Triangle.new(8,4,4)
    test_triangle.valid_triangle?.should eq true
  end
  it 'checks for an equilateral triangle' do
    test_triangle = Triangle.new(5,5,5)
    test_triangle.equilateral?.should eq true
  end
  it 'checks for an isosceles triangle' do
    test_triangle = Triangle.new(5,5,10)
    test_triangle.isosceles?.should eq true
  end
  it 'checks for a scalene triangle' do
    test_triangle = Triangle.new(5,6,9)
    test_triangle.scalene?.should eq true
  end   
end