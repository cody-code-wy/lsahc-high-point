require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_registration_url
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post registrations_url, params: { registration: { horse: @registration.horse, rider: @registration.rider } }
    end

    assert_redirected_to registration_url(Registration.last)
  end

  test "should not create registration with invalid params" do
    assert_no_difference('Registration.count') do
      post registrations_url, params: { registration: { horse: nil, rider: nil } }
    end
  end

  test "should show registration" do
    get registration_url(@registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_registration_url(@registration)
    assert_response :success
  end

  test "should update registration" do
    patch registration_url(@registration), params: { registration: { horse: @registration.horse, rider: @registration.rider } }
    assert_redirected_to registration_url(@registration)
  end

  test "should not update registration with invalid params" do
    patch registration_url(@registration), params: { registration: { rider: nil } }
    assert_equal @registration.rider, Registration.find(@registration.id).rider
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete registration_url(@registration)
    end

    assert_redirected_to registrations_url
  end
end
