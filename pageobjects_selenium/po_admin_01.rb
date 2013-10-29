$LOAD_PATH << './config'  
require "selenium_shared"
require "page_object_urls"

class UserPageObjects < Test::Unit::TestCase

  def setup
    @verification_errors = []
    @page = selenium_setup
    @page.start_new_browser_session
    login $admin, $password   ##login in as
  end

  def teardown
    @page.close_current_browser_session
    assert_equal [], @verification_errors
  end

  def test_edit_blog_post
    @page.open $edit_blog_post
    sleep 5
    admin_header
    admin_footer
  end

  def test_blog_settings_basic_information
    @page.open $blog_settings_basic_information
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_blog_settings_group_icon
    @page.open $blog_settings_group_icon
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_blog_settings_group_type
    @page.open $blog_settings_group_type
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_blog_settings_followers
    @page.open $blog_settings_followers
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_edit_event
    @page.open $edit_event
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_edit_article
    @page.open $edit_article
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_section_settings_basic_info
    @page.open $section_settings_basic_info
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_section_settings_group_icon
    @page.open $section_settings_group_icon
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_section_settings_group_type
    @page.open $section_settings_group_type
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_section_settings_followers
    @page.open $section_settings_followers
    sleep 5
    admin_header
    admin_footer
  end
  
  def test_edit_board_post
    @page.open $edit_board_post
    sleep 5
    admin_header
    admin_footer
  end
end