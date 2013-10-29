$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

##Test 4: Empty group, empty title, empty date, empty time, empty location, empty description 
		def test04_DraftEmptyGTDTiLD
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_now.exists?
			sleep 4
			$post_save_draft.fire_event("onclick")
			
			assert $post_draft_error.exists?
		end
		
##Test 5: Empty group, populated title, empty date, empty time, empty location, empty description 
		def test05_DraftEmptyGDTiLDePopT
		login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_title.exists?
 			$post_event_title.set("Event #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			sleep 4
			$post_save_draft.fire_event("onclick")
			sleep 2

			assert $post_draft_error.exists?
		end
		
		
		
		
end
