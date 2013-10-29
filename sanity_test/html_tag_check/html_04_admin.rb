$LOAD_PATH << './config'  
require "selenium_shared"
require "page_object_urls"
require "html_tag_variables"

class HtmlTestAdmin < Test::Unit::TestCase
  include PageObjectUrls, HtmlTagVariables

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
              #$edit_blog_post,
              $blog_settings_basic_information,
              $blog_settings_group_icon,
              $blog_settings_group_type,
              $blog_settings_followers,
              $edit_event,
              #$edit_article,
              $section_settings_basic_info,
              $section_settings_group_icon,
              $section_settings_group_type,
              $section_settings_followers,
              #$edit_board_post
          ]
    else
      pages = [
              $patch_homepage
          ]
    end
    num = 0

	#login in as regular/normal registered user
	login $admin, $password

     while pages.count > num  ##this model of sanity check assumes there are no page clicks necessary
      foo = 0
      
      @page.open pages[num]  #go to that url
      #puts  pages[num]  #for debugging purposes
      sleep 2
      @page.run_script("window.onbeforeunload = function() {};")

      while $html_tags.count > foo 
	    begin 
    	  assert !@page.is_text_present($html_tags[foo])
  	    rescue => e
  	      @verification_errors << "#{$html_tags[foo]} for #{pages[num]}"
  	    end
  	    foo +=1
  	  end

      num +=1
    end
  end
end