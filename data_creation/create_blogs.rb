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

#For easy blog debugging
#   def test_blog_debugging
#     login $admin, $password
#     @url = create_blog "Blog #{random}"
#     blog_board_news_settings "pre", "open"
#     post_blog_note "Blog #{random} Note"
#     post_blog_board_news_article @url, "Blog #{random} Article"
#     logout
#   end


#Creating Blogs, set group type, create initial article and note posts
  def test_create_post_moderated_open_blog
  	login $admin, $password
  	@url = create_blog "Post Moderated Open Blog"
  	blog_board_news_settings "post", "open"
  	post_blog_board_news_article @url, "Post Moderated Open Blog Article: Do Not Delete"
  	logout
  end
  
  def test_create_post_moderated_closed_blog
  	login $admin, $password
  	@url = create_blog "Post Moderated Closed Blog"
  	blog_board_news_settings "post", "closed"
  	post_blog_board_news_article @url, "Post Moderated Closed Blog Article: Do Not Delete"
  	logout
  end
  
  def test_create_pre_moderated_open_blog
  	login $admin, $password
  	@url = create_blog "Pre Moderated Open Blog"
  	blog_board_news_settings "pre", "open"
  	post_blog_board_news_article @url, "Pre Moderated Open Blog Article: Do Not Delete"
  	logout
  end
  
  def test_create_pre_moderated_closed_blog
  	login $admin, $password
  	@url = create_blog "Pre Moderated Closed Blog"
  	blog_board_news_settings "pre", "closed"
  	post_blog_board_news_article @url, "Pre Moderated Closed Blog Article: Do Not Delete"
  	logout
  end
  
  def test_fighting_mongooses
  	login $user, $password
  	create_blog "Fighting Mongooses"
  	blog_board_news_settings "pre", "closed"
  	post_blog_board_news_article @url, "Fighting Mongooses Article: Do Not Delete"
  	logout
  end
  
  def test_create_test1
  	login $admin, $password
  	create_blog "test1"
  	blog_board_news_settings "post", "open"
  	post_blog_board_news_article @url, "Test1 Blog Article: Do Not Delete"
  	logout
  end
end