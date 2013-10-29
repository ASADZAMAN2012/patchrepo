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
  
#    def test_news_debugging
#    	login $editor, $editor_password
#    	@url = create_news "News #{random}"
#    	blog_board_news_settings "post", "open"
#    	post_blog_board_news_article @url, "News Article #{random}"
#    	logout
#    end
  
  def est_create_post_moderated_open_news
  	login $editor, $editor_password
  	@url = create_news "Post Moderated Open News"
  	blog_board_news_settings "post", "open"
  	post_blog_board_news_article @url, "Post Moderated Open News Article: Do Not Delete"
  	logout
  end
  
  def est_create_post_moderated_closed_news
  	login $editor, $editor_password
  	@url = create_news "Post Moderated Closed News"
  	blog_board_news_settings "post", "closed"
  	post_blog_board_news_article @url, "Post Moderated Closed News Article: Do Not Delete"
  	logout
  end
  
  def est_create_pre_moderated_open_news
  	login $editor, $editor_password
  	@url = create_news "Pre Moderated Open News"
  	blog_board_news_settings "pre", "open"
  	post_blog_board_news_article @url, "Pre Moderated Open News Article: Do Not Delete"
  	logout
  end
  
  def test_create_pre_moderated_closed_board
  	login $editor, $editor_password
  	@url = create_news "Pre Moderated Closed News"
  	blog_board_news_settings "pre", "closed"
  	post_blog_board_news_article @url, "Pre Moderated Closed News Article: Do Not Delete"
  	logout
  end
end