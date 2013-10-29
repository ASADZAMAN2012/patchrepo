$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

##Test 1: Empty group, empty title, empty date, empty time, empty location, empty description 
		def test01_EmptyGTDTiLD
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_now.exists?
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
		
##Test 2: Empty group, populated title, empty date, empty time, empty location, empty description 
		def test02_EmptyGDTiLDePopT
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_title.exists?
 			$post_event_title.set("Event #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
end