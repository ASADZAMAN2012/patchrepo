$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

##Test 1: Populated group, empty title, populated date, populated time, populated location, empty description 
		def test01_EmptyTDePopGDTiLPublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_calendar_start_text.set("#{next_year}-05-01")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 2: Populated group, empty title, empty date, populated time, populated location, populated description
		def test02_EmptyTDPopGTiLDPublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			assert $post_pick_group.exists?
 			repostGroupPop
  			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 3: Populated group, populated title, populated date, populated time, populated location, empty description
		def test03_EmptyDePopGTDTiLPublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_title.set("Event #{random}")
 			$post_event_calendar_start_text.set("#{next_year}-06-02")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_scheduled_post.exists?
		end
##Test 4: Populated group, empty title, populated date, populated time, populated location, populated description
		def test04_EmptyTPopGDTiLDePublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_calendar_start_text.set("#{next_year}-07-03")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 5: Populated group, populated title, populated date, populated time, populated location, populated description
		def test05_PopGTDTiLDePublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_title.set("Event #{random}")
 			$post_event_calendar_start_text.set("#{next_year}-08-04")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_scheduled_post.exists?
		end
end