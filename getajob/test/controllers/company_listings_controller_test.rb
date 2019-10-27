require 'test_helper'

class CompanyListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_listing = company_listings(:one)
  end

  test "should get index" do
    get company_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_company_listing_url
    assert_response :success
  end

  test "should create company_listing" do
    assert_difference('CompanyListing.count') do
      post company_listings_url, params: { company_listing: { description: @company_listing.description, name: @company_listing.name, website: @company_listing.website } }
    end

    assert_redirected_to company_listing_url(CompanyListing.last)
  end

  test "should show company_listing" do
    get company_listing_url(@company_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_listing_url(@company_listing)
    assert_response :success
  end

  test "should update company_listing" do
    patch company_listing_url(@company_listing), params: { company_listing: { description: @company_listing.description, name: @company_listing.name, website: @company_listing.website } }
    assert_redirected_to company_listing_url(@company_listing)
  end

  test "should destroy company_listing" do
    assert_difference('CompanyListing.count', -1) do
      delete company_listing_url(@company_listing)
    end

    assert_redirected_to company_listings_url
  end
end
