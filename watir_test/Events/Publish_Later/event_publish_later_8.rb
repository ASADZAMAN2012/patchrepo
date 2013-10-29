__END__
#Publish Later interaction currently failing
$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

#Publish Later interaction currently failing
	


#Test 1: Delete publish later note
#TC 24310

#Test 2: Delete publish later article
#TC 24310

#Test 3: Delete publish later media
#TC 24310

#Test 4: Delete publish later event
#TC 24310

##Test 5: Empty group, populated title, empty date, empty time, empty location, empty description 
		def test05_EmptyGDTiLDePopTPublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_event_title.exists?
 			$post_event_title.set("Event #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
		end
end