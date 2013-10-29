$LOAD_PATH << './config'  
require "selenium_shared"

class CreateBlogs < Test::Unit::TestCase

  def setup
   @verification_errors = []
   @page = selenium_setup
   @selenium_driver.start_new_browser_session
  end
  
  def teardown
    @selenium_driver.close_current_browser_session
    assert_equal [], @verification_errors
  end
  
#    def test_board_debugging
#    	login $editor, $password
#    	@url = create_board "Board #{random}"
#    	blog_board_news_settings "post", "open"
#     post_board_article @url, "Board Article #{random}"
#    	logout
#    end
  
  def test_create_post_moderated_open_board
  	login $editor, $editor_password
  	@url = create_board "Post Moderated Open Board"
  	blog_board_news_settings "post", "open"
  	post_board_article @url, "Post Moderated Open Board Article: Do Not Delete"
  	logout
  end
  
  def test_create_post_moderated_closed_board
  	login $editor, $editor_password
  	@url = create_board "Post Moderated Closed Board"
  	blog_board_news_settings "post", "closed"
  	post_board_article @url, "Post Moderated Closed Board Article: Do Not Delete"
  	logout
  end
  
  def test_create_pre_moderated_open_board
  	login $editor, $editor_password
  	@url = create_board "Pre Moderated Open Board"
  	blog_board_news_settings "pre", "open"
  	post_board_article @url, "Pre Moderated Open Board Article: Do Not Delete"
  	logout
  end
  
  def test_create_pre_moderated_closed_board
  	login $editor, $editor_password
  	@url = create_board "Pre Moderated Closed Board"
  	blog_board_news_settings "pre", "closed"
  	post_board_article @url, "Pre Moderated Closed Board Article: Do Not Delete"
  	logout
  end
end