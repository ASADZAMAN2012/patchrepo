$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables
	
##Test 1: Comment on Event from Event landing page, default sort
	def test01_CommentOnEventDefault
		@msg = "Event Comment #{random}"
		login $user_1_email, $master_password
		$browser.goto($patch_event_landing)

        sleep 3
        $events_comment_icon_1st_event.click
        sleep 2
        $events_comment_body.set @msg
        $events_comment_submit.click
        sleep 3
        assert $browser.text.include?(@msg)
	end

##Test 2: Comment on Event from Event landing page, sorted events
	def test02_CommentOnEventSorted
		@msg = "Event Comment #{random}"
		login $user_1_email, $master_password
		$browser.goto($patch_event_landing)
		
		$events_family.click
		sleep 1
		assert $events_family_header.exists?

        sleep 3
        $events_comment_icon_1st_event.click
        sleep 2
        $events_comment_body.set @msg
        $events_comment_submit.click
        sleep 3
        assert $browser.text.include?(@msg)
	end	
	
##Test 3: Comment on Event Post Show Page
	def test03_event_post_show_page_comment
		login $user_1_email, $master_password
		$browser.goto($patch_existing_event)
		
		commentPopSubmit "Test Comment #{random}"
	end
end