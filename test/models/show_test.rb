require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  test "should create with valid params" do
    assert Show.new({year: "2020", name: "Test1"}).save
  end
  test "should not create without year" do
    refute Show.new({year: nil, name: "Test1"}).save
  end
  test "should not create without name" do
    refute Show.new({year: "2020", name: nil}).save
  end
  test "should not create with same year and name" do
    assert Show.new({year: "2020", name: "Test1"}).save
    refute Show.new({year: "2020", name: "Test1"}).save
  end
  test "should allow same year with different names" do
    assert Show.new({year: "2020", name: "Test1"}).save
    assert Show.new({year: "2020", name: "Test2"}).save
  end
  test "should allow same name with different years" do
    assert Show.new({year: "2020", name: "Test1"}).save
    assert Show.new({year: "2021", name: "Test1"}).save
  end
end
