require 'test_helper'

class OffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @off = offs(:one)
  end

  test "should get index" do
    get offs_url
    assert_response :success
  end

  test "should get new" do
    get new_off_url
    assert_response :success
  end

  test "should create off" do
    assert_difference('Off.count') do
      post offs_url, params: { off: { end: @off.end, start: @off.start, user_id: @off.user_id } }
    end

    assert_redirected_to off_url(Off.last)
  end

  test "should show off" do
    get off_url(@off)
    assert_response :success
  end

  test "should get edit" do
    get edit_off_url(@off)
    assert_response :success
  end

  test "should update off" do
    patch off_url(@off), params: { off: { end: @off.end, start: @off.start, user_id: @off.user_id } }
    assert_redirected_to off_url(@off)
  end

  test "should destroy off" do
    assert_difference('Off.count', -1) do
      delete off_url(@off)
    end

    assert_redirected_to offs_url
  end
end
