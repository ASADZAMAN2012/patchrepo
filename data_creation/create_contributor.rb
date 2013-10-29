$LOAD_PATH << './config'  
require "selenium_shared"

######################################
###MUST run create_boards.rb first ###
###Board needs to exist to work    ###                    
######################################


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
  
#   def test_contributor_debugging
#   	login $user_3, $password
#   	@page.open "boards/editorboard" 
#   	sleep 3
#   	#subscribe to board
#   	@page.click "//div[@id='group_btns']/div/div[2]/span/span/form/button" #Get email updates button
#   	sleep 2
#   	@page.click "link=Ok"
#   	sleep 2
#   	logout
#   	login $editor, $editor_password
#   	#go to Followers page
#   	@page.open "boards/editorboard/edit/followers" 
#   	sleep 3
#   	#click dropdown for user role
#   	@page.click "//div[@id='groups_followers_page']/div[3]/div[2]/div/div/div[3]/a/span"
#   	sleep 1
#   	#click Contributor role for user
#   	@page.click "xpath=(//a[contains(text(),'Make a Contributor')])[2]", :wait_for => :page
#   	sleep 2
#   	assert !@page.is_element_present("//div[@id='groups_followers_page']/div[3]/div[2]/div/div/div[3]/a/span")
#   	logout
#   end

  def test_user_board_contributor
    login $user, $password
  	@page.open "boards/pre-moderated-closed-board" 
  	sleep 3
  	#subscribe to board
  	@page.click "//div[@id='group_btns']/div/div[2]/span/span/form/button" #Get email updates button
  	sleep 2
  	@page.click "link=Ok"
  	sleep 2
  	logout
  	login $editor, $editor_password
  	#go to Followers page
  	@page.open "boards/pre-moderated-closed-board/edit/followers" 
  	sleep 3
  	#click dropdown for user role
  	@page.click "//div[@id='groups_followers_page']/div[3]/div[2]/div/div/div[3]/a/span"
  	sleep 1
  	#click Contributor role for user
  	@page.click "xpath=(//a[contains(text(),'Make a Contributor')])[2]", :wait_for => :page
  	sleep 2
  	assert !@page.is_element_present("//div[@id='groups_followers_page']/div[3]/div[2]/div/div/div[3]/a/span")
  	logout
  end
end