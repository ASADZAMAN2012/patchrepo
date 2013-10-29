$LOAD_PATH << './config'  
require "selenium_shared"
require "page_object_urls"

class UrlTestAnonymous < Test::Unit::TestCase
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

  def test_sanity_anonymous
        pages = [
        $patch_home,
        $patch_homepage,
        $community_home,
        $join,
        $login,
        $news_feature_landing,
        $blogs_landing,
        $boards_landing,
        $news_section_landing,
        $feature_landing,
        $news_post_show,
        $blogs_post_show,
        $boards_post_show,
        $events_landing,
        $events_show,
        $business_landing,
        $business_show,
        $claim_a_listing,
        $review_post_show,
        $real_estate_landing,
        $real_estate_show,
        $job_landing,
        $search_results,
        $editor_profile,
        $feedback_form,
        $contact_us,
        $about_us,
        $jobs,
        $terms,
        $privacy,
        $claim,
        $patch_u,
        $volunteer,
    ]
    num = 0
    
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
    @page.open $error_404
    @page.is_text_present("There doesn't seem to be anything at this address")
  end
end