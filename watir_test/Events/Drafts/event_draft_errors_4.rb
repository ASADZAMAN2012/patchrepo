$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

##Test 1: Empty group, empty title, empty date, populated time, populated location, populated description
		def test01_DraftEmptyGTDPopTiLD
			$browser.goto($patch_event)
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_time_start_field.exists?
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end

##Test 2: Empty group, populated title, populated date, populated time, populated location, empty description
		def test02_DraftEmptyGDePopTDTiL
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_title.exists?
 			$post_event_title.set("Event #{random}")
 			$post_event_calendar_start_text.set("#{next_year}-03-13")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end
		
##Test 3: Empty group, empty title, populated date, populated time, populated location, populated description
		def test03_DraftEmptyGTPopDTiLDe
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_calendar_start_text.exists?
 			$post_event_calendar_start_text.set("#{next_year}-09-26")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')") 
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end
		
##Test 4: Empty group, populated title, populated date, populated time, populated location, populated description
		def test04_DraftEmptyGPopTDTiLDe
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_title.exists?
 			$post_event_title.set("Event #{random}")
 			$post_event_calendar_start_text.set("#{next_year}-08-12")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end
		
##Test 5: Populated group, empty title, empty date, empty time, empty location, empty description 
		def test05_DraftEmptyTDTiLDePopG
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2
			
			assert $post_draft_error.exists?
		end
end	