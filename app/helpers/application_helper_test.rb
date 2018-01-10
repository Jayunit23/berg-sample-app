#require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         FILL_IN
    assert_equal full_title("Help"), FILL_IN
  end

    # Returns true if a test user is logged in.
  def is_logged_in?
    !session[:user_id].nil?
  end
end