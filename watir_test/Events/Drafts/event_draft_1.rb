$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

##Test 1: New Event: Save as Draft
	def test01_EventValidDraft_TC_24298
		login $user_1_email, $master_password
		$browser.goto($patch_event)
		
			sleep 2
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_title.set("Event #{random}")
 			$post_event_calendar_start_text.set("#{next_year}-08-15")  
 			$post_event_time_start_field.when_present.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_draft_dropdown.when_present.fire_event("onclick")
			$post_save_draft.fire_event("onclick")
			sleep 2
			
		assert $post_draft_success.exists?
	end
	
#Test 2: Edit Event draft
	def test_02_publish_event_draft
		login $user_1_email, $master_password
		$browser.goto($patch_event)
		sleep 2
		
		assert $post_pick_group.exists?
 		repostGroupPop
 		$post_event_title.set("Event #{random}")
 		$post_event_calendar_start_text.set("#{next_year}-12-14")  
 		$post_event_time_start_field.click
 		$post_event_select_time.select("8:00 AM")
 		$post_event_location.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_save_draft.fire_event("onclick")
		sleep 2

		assert $post_draft_success.exists?
		if $post_draft_success.exists?
			edit_draft
		end

		sleep 2
		assert $post_new_post.exists?
	end

#Test 3: Post Event draft
	def test_03_publish_event_draft_TC_24300
		login $user_1_email, $master_password
		$browser.goto($patch_event)
		sleep 2
		
		assert $post_pick_group.exists?
 		repostGroupPop
 		$post_event_title.when_present.set("Event #{random}")
 		$post_event_calendar_start_text.when_present.set("#{next_year}-04-15")  
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_save_draft.when_present.fire_event("onclick")
		sleep 2
		
		assert $post_draft_success.exists?
		if $post_draft_success.exists?
			post_draft
		end
	end

#Test 4: Delete Event draft
	def test_04_publish_event_draft_TC_24309
		login $user_1_email, $master_password
		$browser.goto($patch_event)
		sleep 2
		
		assert $post_pick_group.exists?
 		repostGroupPop
 		$post_event_title.set("Event #{random}")
 		$post_event_calendar_start_text.set("#{next_year}-12-09")  
 		$post_event_time_start_field.click
 		$post_event_select_time.select("8:00 AM")
 		$post_event_location.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_save_draft.fire_event("onclick")
		sleep 2
		
		assert $post_draft_success.exists?
		if $post_draft_success.exists?
			delete_draft
		end
	end

#Test 5: Close delete Event draft
	def test_05_publish_event_draft_T5
		login $user_1_email, $master_password
		$browser.goto($patch_event)
		sleep 2
		
		assert $post_pick_group.exists?
 		repostGroupPop
 		$post_event_title.set("Event #{random}")
 		$post_event_calendar_start_text.set("#{next_year}-06-23")  
 		$post_event_time_start_field.click
 		$post_event_select_time.select("8:00 AM")
 		$post_event_location.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_draft.click
		$post_save_draft.fire_event("onclick")
		sleep 2
		
		assert $post_draft_success.exists?
		if $post_draft_success.exists?
			close_delete
		end
	end	
	
end