require 'test_helper'

class ExamsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get exams_show_url
    assert_response :success
  end

end
