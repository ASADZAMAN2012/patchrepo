$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

##Test 1: Empty group, empty title, populated date, empty time, empty location, empty description 
		def test01_EmptyGTTiLDePopD
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_calendar_start_text.exists?
 			$post_event_calendar_start_text.set("#{next_year}-12-12")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end

##Test 2: Empty group, empty title, empty date, populated time, empty location, empty description 
		def test02_EmptyGTLDePopTi
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_time_start_field.exists?
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 3: Empty group, empty title, empty date, empty time, populated location, empty description 
		def test03_EmptyGTDTiDePopL
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_location.exists?
			$post_event_location.set("Location #{random}")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end

##Test 4: Empty group, empty title, empty date, empty time, empty location, populated description 
		def test04_EmptyGTDTiLPopDe
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_location.exists?
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
		
##Test 5: Empty group, populated title, populated date, empty time, empty location, empty description 
		def test05_EmptyGTiLDePopT
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_calendar_start_text.exists?
 			$post_event_calendar_start_text.set("#{next_year}-12-12")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
end