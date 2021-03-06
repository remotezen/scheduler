require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "user can login" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: {session: {email:"", password: ""}}
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
