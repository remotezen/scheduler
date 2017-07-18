require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title ="Employee Web Portal"
  end
  test "should get root" do
    get root_url
    assert_response :success
  end


  test "should get help" do
    get help_path 
    assert_response :success
    #assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do

    get static_pages_about_url
    assert_response :success
    #assert_select "title", "About | #{@base_tile}"
  end


end
