require 'test_helper'

class TempResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp_resource = temp_resources(:one)
  end

  test "should get index" do
    get temp_resources_url
    assert_response :success
  end

  test "should get new" do
    get new_temp_resource_url
    assert_response :success
  end

  test "should create temp_resource" do
    assert_difference('TempResource.count') do
      post temp_resources_url, params: { temp_resource: {  } }
    end

    assert_redirected_to temp_resource_url(TempResource.last)
  end

  test "should show temp_resource" do
    get temp_resource_url(@temp_resource)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp_resource_url(@temp_resource)
    assert_response :success
  end

  test "should update temp_resource" do
    patch temp_resource_url(@temp_resource), params: { temp_resource: {  } }
    assert_redirected_to temp_resource_url(@temp_resource)
  end

  test "should destroy temp_resource" do
    assert_difference('TempResource.count', -1) do
      delete temp_resource_url(@temp_resource)
    end

    assert_redirected_to temp_resources_url
  end
end
