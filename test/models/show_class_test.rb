require 'test_helper'

class ShowClassTest < ActiveSupport::TestCase
  test "should create with valid params" do
    assert ShowClass.new({name: "Test1"}).save
  end
  test "should not create without name" do
    refute ShowClass.new({name: nil}).save
  end
  test "should not create without unique name" do
    assert ShowClass.new({name: "Test1"}).save
    refute ShowClass.new({name: "Test1"}).save
  end
end
