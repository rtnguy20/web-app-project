require 'test_helper'

class SchooladminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schooladmin = schooladmins(:one)
  end

  test "should get index" do
    get schooladmins_url
    assert_response :success
  end

  test "should get new" do
    get new_schooladmin_url
    assert_response :success
  end

  test "should create schooladmin" do
    assert_difference('Schooladmin.count') do
      post schooladmins_url, params: { schooladmin: { address: @schooladmin.address, boss: @schooladmin.boss, city: @schooladmin.city, name: @schooladmin.name, state: @schooladmin.state, zip: @schooladmin.zip } }
    end

    assert_redirected_to schooladmin_url(Schooladmin.last)
  end

  test "should show schooladmin" do
    get schooladmin_url(@schooladmin)
    assert_response :success
  end

  test "should get edit" do
    get edit_schooladmin_url(@schooladmin)
    assert_response :success
  end

  test "should update schooladmin" do
    patch schooladmin_url(@schooladmin), params: { schooladmin: { address: @schooladmin.address, boss: @schooladmin.boss, city: @schooladmin.city, name: @schooladmin.name, state: @schooladmin.state, zip: @schooladmin.zip } }
    assert_redirected_to schooladmin_url(@schooladmin)
  end

  test "should destroy schooladmin" do
    assert_difference('Schooladmin.count', -1) do
      delete schooladmin_url(@schooladmin)
    end

    assert_redirected_to schooladmins_url
  end
end
