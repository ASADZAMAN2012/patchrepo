$LOAD_PATH << './config'  
require "selenium_shared"
require "page_object_urls"
require "html_tag_variables"

class HtmlTestAnonymous < Test::Unit::TestCase
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

  def test_sanity_user

    if $environment == 'staging'
      pages = [
          $user_profile,
          $edit_profile,
          $email_settings,
          $updates,
          $change_password,
          $personal_info,
          $your_posts,
          $create_a_blog,
          $post_to_blog,
      ]
    else
      pages = [
          $user_profile,
          $edit_profile,
          $email_settings,
          $updates,
          $change_password,
          $personal_info,
          $your_posts,
          $create_a_blog,
          $post_to_blog,
          $edit_blog_post,
          $blog_settings_basic_information,
          $blog_settings_group_icon,
          $blog_settings_group_type,
          $blog_settings_followers,
          $post_event,
          $edit_event
      ]
    end

    num = 0

	#login in as regular/normal registered user
	login $user, $editor_password

     while pages.count > num  ##this model of sanity check assumes there are no page clicks necessary
      foo = 0
      
      @page.open pages[num]  #go to that url
      #puts  pages[num]  #for debugging purposes
      sleep 2
      @page.run_script("window.onbeforeunload = function() {};")

      while $html_tags.count > foo 
	    begin #patch stylized 404
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