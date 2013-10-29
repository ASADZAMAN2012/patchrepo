$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

##Test 1: Populated group, empty title, populated date, populated time, populated location, empty description 
		def test01_EmptyTDePopGDTiL
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_calendar_start_text.set("#{next_year}-11-22")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 2: Populated group, empty title, empty date, populated time, populated location, populated description
		def test02_EmptyTDPopGTiLD
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
  			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 3: Populated group, populated title, populated date, populated time, populated location, empty description
		def test03_EmptyDePopGTDTiL
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_title.set("Event #{random}")
 			$post_event_calendar_start_text.set("#{next_year}-09-15")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 4: Populated group, empty title, populated date, populated time, populated location, populated description
		def test04_EmptyTPopGDTiLDe
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_calendar_start_text.set("#{next_year}-03-21")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 5: Populated group, populated title, populated date, populated time, populated location, populated description
		def test05_PopGTDTiLDe
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_event_title.set("Event #{random}")
 			$post_event_calendar_start_text.set("#{next_year}-05-10")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_new_post.exists?
		end
end