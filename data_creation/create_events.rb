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
#  def test_event_debugging
#    	login $admin, $password
#    	create_event "Event #{random}"
#    	logout
#    end


  def test_create_event
  	login $admin, $password
  	create_event "Existing Event"
  	logout
  end
end