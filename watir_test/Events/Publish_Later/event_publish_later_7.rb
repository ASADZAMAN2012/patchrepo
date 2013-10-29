$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables	
	


#Test 1: Edit publish later note
	def test01_edit_publish_later_note_TC_24310
		login $user_1_email, $master_password
		$browser.goto($patch_note)
		sleep 2
		repostGroupPop
		$post_compose_note.when_present.set("Note field populated by automated test.")
		postPublishLater
		$post_now.when_present.fire_event("onclick")
		sleep 4

		$post_scheduled_post.when_present.click
		$profile_p_article.when_present.click
		
		$post_edit_post.when_present.click
		$post_compose_note.when_present.set("cats like edit. ")
		$post_now.when_present.fire_event("onclick")

		assert $browser.text.include?("just now")
	end

#Test 2: Edit publish later article
	def test02_edit_publish_later_article_TC_24310
		login $user_1_email, $master_password
		$browser.goto($patch_article)
		sleep 4
 		repostGroupPop
		$post_article_title.when_present.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		postPublishLater
		$post_now.when_present.fire_event("onclick")
		
		$post_scheduled_post.when_present.click
		$profile_p_article.when_present.click
		
		$post_edit_post.when_present.click
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava likes edit. ')")
		$post_now.when_present.fire_event("onclick")
		
		assert $browser.text.include?("just now")
	end
	
#Test 3: Edit publish later media
	def test03_edit_publish_later_media_TC_24310
		login $user_1_email, $master_password
		$browser.goto($patch_media)
		sleep 2
		$post_media_description.when_present.set("Media Description #{random}.")
 		repostGroupPop
		$post_media_button.when_present.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		postPublishLater
		$post_now.when_present.fire_event("onclick")
		sleep 4
		$post_scheduled_post.when_present.click
		$profile_p_article.when_present.click
		
		$post_edit_post.when_present.click
		$post_media_description.when_present.set("mt. rainier likes edit. ")
		$post_now.when_present.fire_event("onclick")
		
		assert $browser.text.include?("just now")
	end
	
#Test 4: Edit publish later event
	def test04_edit_publish_later_event_TC_24310
		login $user_1_email, $master_password
		$browser.goto($patch_event)
		sleep 2
 		repostGroupPop
 		$post_event_title.when_present.set("Event #{random}")
 		$post_event_calendar_start_text.when_present.set("#{next_year}-11-01")  
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		postPublishLater
		$post_now.when_present.fire_event("onclick")
		sleep 4
		$post_scheduled_post.when_present.click
		$profile_p_article.when_present.click
		
		$post_edit_post.when_present.click
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text likes edit. ')")
		$post_now.when_present.fire_event("onclick")
		
		assert $browser.text.include?("just now")
	end
	
##Test 5: Empty group, empty title, empty date, empty time, empty location, empty description 
		def test05_EmptyGTDTiLDPublish
			login $user_1_email, $master_password
			$browser.goto($patch_event)
			sleep 2
			
			assert $post_now.exists?
			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end	
end