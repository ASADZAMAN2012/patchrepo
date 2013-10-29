$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

##Test 1: Empty group, empty title, populated date, empty time, empty location, empty description 
		def test01_DraftEmptyGTTiLDePopD
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_calendar_start_text.exists?
 			$post_event_calendar_start_text.set("#{next_year}-12-12")
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end

##Test 2: Empty group, empty title, empty date, populated time, empty location, empty description 
		def test02_DraftEmptyGTLDePopTi
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_time_start_field.exists?
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end
		
##Test 3: Empty group, empty title, empty date, empty time, populated location, empty description 
		def test03_DraftEmptyGTDTiDePopL
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_location.exists?
			$post_event_location.set("Location #{random}")
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end

##Test 4: Empty group, empty title, empty date, empty time, empty location, populated description 
		def test04_DraftEmptyGTDTiLPopDe
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_location.exists?
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end
		
##Test5: Empty group, populated title, populated date, empty time, empty location, empty description 
		def test05_DraftEmptyGTiLDePopT
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_calendar_start_text.exists?
 			$post_event_calendar_start_text.set("#{next_year}-12-12")
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end
end
		
