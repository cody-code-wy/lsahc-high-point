require 'test_helper'

class ShowClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @show_class = show_classes(:one)
  end

  test "should get index" do
    get show_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_show_class_url
    assert_response :success
  end

  test "should create show_class" do
    assert_difference('ShowClass.count') do
      post show_classes_url, params: { show_class: { name: "unique" } }
    end

    assert_redirected_to show_class_url(ShowClass.last)
  end

  test "should not create show_class with invalid params" do
    assert_no_difference('ShowClass.count') do
      post show_classes_url, params: { show_class: { name: nil } }
    end
  end

  test "should show show_class" do
    get show_class_url(@show_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_show_class_url(@show_class)
    assert_response :success
  end

  test "should update show_class" do
    patch show_class_url(@show_class), params: { show_class: { name: @show_class.name } }
    assert_redirected_to show_class_url(@show_class)
  end

  test "should not update show_class with invalid params" do
    patch show_class_url(@show_class), params: { show_class: { name: nil } }
    assert_equal @show_class.name, ShowClass.find(@show_class.id).name
  end

  test "should destroy show_class" do
    assert_difference('ShowClass.count', -1) do
      delete show_class_url(@show_class)
    end

    assert_redirected_to show_classes_url
  end
end
