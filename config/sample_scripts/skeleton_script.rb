$LOAD_PATH << './config'  
require "selenium_shared"
require "page_object_urls"

class UserPageObjects < Test::Unit::TestCase

  def setup
    @verification_errors = []
    @page = selenium_setup
    @page.start_new_browser_session
    login $user, $password   ##login in as 
  end

  def teardown
    @page.close_current_browser_session
    assert_equal [], @verification_errors
  end

  def test_
    @page.open
    
  end

  def test_
    @page.open
    
  end
  
  def test_
    @page.open
    
  end
  
  def test_
    @page.open
    
  end
  
  def test_
    @page.open
    
  end
  
  def test_
    @page.open
    
  end
  
  def test_
    @page.open
    
  end
  
  def test_
    @page.open
    
  end
  
  def test_
    @page.open
    
  end
  
  def test_
    @page.open
    
  end
end