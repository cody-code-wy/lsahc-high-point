require 'test_helper'

class ShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @show = shows(:one)
  end

  test "should get index" do
    get shows_url
    assert_response :success
  end

  test "should get new" do
    get new_show_url
    assert_response :success
  end

  test "should create show" do
    assert_difference('Show.count') do
      post shows_url, params: { show: { name: "Test1", year: "2020" } }
    end

    assert_redirected_to show_url(Show.last)
  end

  test "should not create show with invalid params" do
    assert_no_difference('Show.count') do
      post shows_url, params: { show: { name: nil, year:  nil} }
    end
  end

  test "should show show" do
    get show_url(@show)
    assert_response :success
  end

  test "should get edit" do
    get edit_show_url(@show)
    assert_response :success
  end

  test "should update show" do
    patch show_url(@show), params: { show: { name: @show.name, year: @show.year } }
    assert_redirected_to show_url(@show)
  end

  test "should not update show with invalid params" do
    patch show_url(@show), params: { show: { year: nil } }
    assert_equal @show.year, Show.find(@show.id).year
  end

  test "should destroy show" do
    assert_difference('Show.count', -1) do
      delete show_url(@show)
    end

    assert_redirected_to shows_url
  end
end
