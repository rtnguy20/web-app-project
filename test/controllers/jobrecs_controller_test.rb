require 'test_helper'

class JobrecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobrec = jobrecs(:one)
  end

  test "should get index" do
    get jobrecs_url
    assert_response :success
  end

  test "should get new" do
    get new_jobrec_url
    assert_response :success
  end

  test "should create jobrec" do
    assert_difference('Jobrec.count') do
      post jobrecs_url, params: { jobrec: { email_address: @jobrec.email_address, first_name: @jobrec.first_name, last_name: @jobrec.last_name } }
    end

    assert_redirected_to jobrec_url(Jobrec.last)
  end

  test "should show jobrec" do
    get jobrec_url(@jobrec)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobrec_url(@jobrec)
    assert_response :success
  end

  test "should update jobrec" do
    patch jobrec_url(@jobrec), params: { jobrec: { email_address: @jobrec.email_address, first_name: @jobrec.first_name, last_name: @jobrec.last_name } }
    assert_redirected_to jobrec_url(@jobrec)
  end

  test "should destroy jobrec" do
    assert_difference('Jobrec.count', -1) do
      delete jobrec_url(@jobrec)
    end

    assert_redirected_to jobrecs_url
  end
end
