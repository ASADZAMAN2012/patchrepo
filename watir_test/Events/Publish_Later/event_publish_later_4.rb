$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

##Test 1: Populated group, populated title, empty date, empty time, empty location, empty description 
		def test01_EmptyDTiLDePopGTPublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_title.set("Event #{random}")
 			postPublishLater
 			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 2: Populated group, empty title, populated date, empty time, empty location, empty description 
		def test02_EmptyTTiLDePopGDPublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_calendar_start_text.set("#{next_year}-10-26")  
 			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 3: Populated group, empty title, empty date, populated time, empty location, empty description 
		def test03_EmptyTDTiLDPopGPublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 4: Populated group, empty title, empty date, empty time, populated location, empty description 
		def test04_EmptyTDTiDePopGLPublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_location.set("Location #{random}")
 			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 5: Populated group, empty title, empty date, empty time, empty location, populated description 
		def test05_EmptyTDTiLPopGDePublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
end