$LOAD_PATH << './config'  
require "selenium_shared"
require "page_object_urls"

class UserPageObjects < Test::Unit::TestCase

  def setup
    @verification_errors = []
    @page = selenium_setup
    @page.start_new_browser_session
    login $user, $password  ##login in as regular/normal registered user
  end

  def teardown
    @page.close_current_browser_session
    assert_equal [], @verification_errors
  end

  def test_blog_settings_basic_information
    @page.open $blog_settings_basic_information
    sleep 5
    user_header
    user_footer
  end

  def test_blog_settings_group_icon
    @page.open $blog_settings_group_icon
    sleep 5
    user_header
    user_footer
  end
  
  def test_blog_settings_group_type
    @page.open $blog_settings_group_type
    sleep 5
    user_header
    user_footer
  end
  
  def test_blog_settings_followers
    @page.open $blog_settings_followers
    sleep 5
    user_header
    user_footer
  end
  
  def test_post_event
    @page.open $post_event
    sleep 5
    user_header
    user_footer
  end
  
  def test_edit_event
    @page.open $edit_event
    sleep 5
    user_header
    user_footer
  end
end