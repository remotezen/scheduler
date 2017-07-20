require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.new(name: "Fred Hudson",
                     email: "remote@remote.com",
                     title: "supervisor",
                     password: "foobar",
                     password_confirmation: "foobar",
                    )
  end

  test "should get index" do
    get users_path
    assert_response :success
  end

  test "should get new" do
    get new_user_path
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_path, params: { user: { name: @user.name, title: @user.title } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_path(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_path(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_path(@user), params: { user: { name: @user.name, title: @user.title } }
    assert_redirected_to user_path(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_path(@user)
    end

    assert_redirected_to users_path
  end
end
