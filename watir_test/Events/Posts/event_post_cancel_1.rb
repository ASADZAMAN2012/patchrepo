$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables
 	


##Test 1: New Event: Cancel
	def test01_EventCancel
		login $user_1_email, $master_password
		$browser.goto($patch_event)
			
		sleep 2
		assert $post_pick_group.exists?
 		repostGroupPop
	    $post_event_title.set("Event #{random}")
 		$post_event_calendar_start_text.set("#{next_year}-01-27")  
 		$post_event_time_start_field.click
 		$post_event_select_time.select("8:00 AM")
 		$post_event_location.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_cancel.click
		sleep 2

		if $post_cancel.exists?
			puts ("PC01T01: FAILED! User unable to cancel.")
			else nil
		end
	end
end