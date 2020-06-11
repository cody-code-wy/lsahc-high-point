require 'test_helper'

class RegistrationTest < ActiveSupport::TestCase
  test "should create with valid params" do
    assert Registration.new({rider: "Rider", horse: "Horse"}).save
  end

  test "should not create without horse" do
    refute Registration.new({rider: "Rider", horse: nil}).save
  end

  test "should not create wihout rider" do
    refute Registration.new({rider: nil, horse: "Horse"}).save
  end

  test "should not create with same horse and rider" do
    assert Registration.new({rider: "Rider", horse: "Horse"}).save
    refute Registration.new({rider: "Rider", horse: "Horse"}).save
  end

  test "should allow same horse with different riders" do
    assert Registration.new({rider: "Rider1", horse: "Horse"}).save
    assert Registration.new({rider: "Rider2", horse: "Horse"}).save
  end

  test "should allow same rider with different horses" do
    assert Registration.new({rider: "Rider", horse: "Horse1"}).save
    assert Registration.new({rider: "Rider", horse: "Horse2"}).save
  end
end
