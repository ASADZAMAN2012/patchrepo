$LOAD_PATH << './config'  
require "selenium_shared"
require "page_object_urls"

class UrlTestAdmin< Test::Unit::TestCase
  include PageObjectUrls

  def setup
    @verification_errors = []
    @page = selenium_setup
    @page.start_new_browser_session
  end

  def teardown
    @page.close_current_browser_session
    assert_equal [], @verification_errors
  end

  def test_sanity_admin

    if $environment == 'staging'
      pages = [
              $edit_blog_post,
              $blog_settings_basic_information,
              $blog_settings_group_icon,
              $blog_settings_group_type,
              $blog_settings_followers,
              $edit_event,
              $edit_article,
              $section_settings_basic_info,
              $section_settings_group_icon,
              $section_settings_group_type,
              $section_settings_followers,
              $edit_board_post
          ]
    else
      pages = [
              $patch_home
          ]
    end
    num = 0

	#login in as regular/normal registered user
	login $admin, $password

    while pages.count > num  ##this model of sanity check assumes there are no page clicks necessary
      foo = 0
      error_type = ["404", "500", "Default 404", "Default 500"]
      error_msg = ["There doesn't seem to be anything at this address", #patch 404 msg
                   "Our system is having trouble", #patch 500 msg
                   "The page cannot be found", #default 404
                   "Internal Server Error", #default 500
                   "You are not authorized"] 
      
      @page.open pages[num]  #go to that url
      #puts  pages[num]  #for debugging purposes
      sleep 2
      @page.run_script("window.onbeforeunload = function() {};")
      
      while error_msg.count > foo 
	    begin #patch stylized 404
    	  assert !@page.is_text_present(error_msg[foo])
  	    rescue => e
  	      @verification_errors << "#{error_type[foo]} for #{pages[num]}"
  	    end
  	    foo +=1
  	  end
      num +=1
    end
  end
end