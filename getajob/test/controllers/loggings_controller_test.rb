require 'test_helper'

class LoggingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logging = loggings(:one)
  end

  test "should get index" do
    get loggings_url
    assert_response :success
  end

  test "should get new" do
    get new_logging_url
    assert_response :success
  end

  test "should create logging" do
    assert_difference('Logging.count') do
      post loggings_url, params: { logging: { email: @logging.email, password: @logging.password } }
    end

    assert_redirected_to logging_url(Logging.last)
  end

  test "should show logging" do
    get logging_url(@logging)
    assert_response :success
  end

  test "should get edit" do
    get edit_logging_url(@logging)
    assert_response :success
  end

  test "should update logging" do
    patch logging_url(@logging), params: { logging: { email: @logging.email, password: @logging.password } }
    assert_redirected_to logging_url(@logging)
  end

  test "should destroy logging" do
    assert_difference('Logging.count', -1) do
      delete logging_url(@logging)
    end

    assert_redirected_to loggings_url
  end
end
