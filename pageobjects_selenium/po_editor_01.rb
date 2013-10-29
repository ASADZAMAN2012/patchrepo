$LOAD_PATH << './config'
require "selenium_shared"
require "page_object_urls"

class UserPageObjects < Test::Unit::TestCase

  def setup
    @verification_errors = []
    @page = selenium_setup
    @page.start_new_browser_session
    login $editor, $editor_password  ##login in as editor
  end

  def teardown
    @page.close_current_browser_session
    assert_equal [], @verification_errors
  end

  def test_tools_menu
    @page.open $tools_menu
    sleep 5
    editor_header
    editor_footer
    
  end

  def test_post_article
    @page.open $post_article
    sleep 5
    editor_header
    editor_footer
  end
  
  def test_edit_article
    @page.open $edit_article
    sleep 5
    editor_header
    editor_footer
  end
  
  def test_create_news_section
    @page.open $create_news_section
    sleep 5
    editor_header
    editor_footer
  end
  
  def test_section_settings_basic_info
    @page.open $section_settings_basic_info
    sleep 5
    editor_header
    editor_footer
  end
  
  def test_section_settings_group_icon
    @page.open $section_settings_group_icon
    sleep 5
    editor_header
    editor_footer
  end
  
  def test_section_settings_group_type
    @page.open $section_settings_group_type
    sleep 5
    editor_header
    editor_footer
  end
  
  def test_section_settings_followers
    @page.open $section_settings_followers
    sleep 5
    editor_header
    editor_footer
  end
  
  def test_create_a_board
    @page.open $create_a_board
    sleep 5
    editor_header
    editor_footer
  end
  
  def test_edit_board_post
    @page.open $edit_board_post
    sleep 5
    editor_header
    editor_footer
  end
  
   def test_edit_board_post_edit
    @page.open $edit_board_post_edit
    sleep 5
    editor_header
    editor_footer
  end
end