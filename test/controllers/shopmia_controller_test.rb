require 'test_helper'

class ShopmiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopmium = shopmia(:one)
  end

  test "should get index" do
    get shopmia_url
    assert_response :success
  end

  test "should get new" do
    get new_shopmium_url
    assert_response :success
  end

  test "should create shopmium" do
    assert_difference('Shopmium.count') do
      post shopmia_url, params: { shopmium: { address: @shopmium.address, chain: @shopmium.chain, city: @shopmium.city, country_code: @shopmium.country_code, department: @shopmium.department, hours: @shopmium.hours, ignore_reason: @shopmium.ignore_reason, ignored: @shopmium.ignored, is_address_computed: @shopmium.is_address_computed, is_location_computed: @shopmium.is_location_computed, key: @shopmium.key, latitude: @shopmium.latitude, longitude: @shopmium.longitude, mandatory_coords: @shopmium.mandatory_coords, name: @shopmium.name, overload_chain_name: @shopmium.overload_chain_name, phone: @shopmium.phone, store_id: @shopmium.store_id, zip: @shopmium.zip } }
    end

    assert_redirected_to shopmium_url(Shopmium.last)
  end

  test "should show shopmium" do
    get shopmium_url(@shopmium)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopmium_url(@shopmium)
    assert_response :success
  end

  test "should update shopmium" do
    patch shopmium_url(@shopmium), params: { shopmium: { address: @shopmium.address, chain: @shopmium.chain, city: @shopmium.city, country_code: @shopmium.country_code, department: @shopmium.department, hours: @shopmium.hours, ignore_reason: @shopmium.ignore_reason, ignored: @shopmium.ignored, is_address_computed: @shopmium.is_address_computed, is_location_computed: @shopmium.is_location_computed, key: @shopmium.key, latitude: @shopmium.latitude, longitude: @shopmium.longitude, mandatory_coords: @shopmium.mandatory_coords, name: @shopmium.name, overload_chain_name: @shopmium.overload_chain_name, phone: @shopmium.phone, store_id: @shopmium.store_id, zip: @shopmium.zip } }
    assert_redirected_to shopmium_url(@shopmium)
  end

  test "should destroy shopmium" do
    assert_difference('Shopmium.count', -1) do
      delete shopmium_url(@shopmium)
    end

    assert_redirected_to shopmia_url
  end
end
