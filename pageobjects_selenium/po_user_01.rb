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

  def test_user_profile
    @page.open $user_profile
    sleep 5
    user_header
    user_footer
  end

  def test_edit_profile
    @page.open $edit_profile
    sleep 5
    user_header
    user_footer
  end
  
  def test_email_settings
    @page.open $email_settings
    sleep 5
    user_header
    user_footer
  end
  
  def test_updates
    @page.open $updates
    sleep 5
    user_header
    user_footer
  end
  
  def test_change_password
    @page.open $change_password
    sleep 5
    user_header
    user_footer
  end
  
  def test_personal_info
    @page.open $personal_info
    sleep 5
    user_header
    user_footer
  end
  
  def test_your_posts
    @page.open $your_posts
    sleep 5
    user_header
    user_footer
  end
  
  def test_create_a_blog
    @page.open $create_a_blog
    sleep 5
    user_header
    user_footer
  end
  
  def test_post_to_blog
    @page.open $post_to_blog
    sleep 5
    user_header
    user_footer
  end
  
  def test_edit_blog_post
    @page.open $edit_blog_post
    sleep 5
    user_header
    user_footer
  end
end