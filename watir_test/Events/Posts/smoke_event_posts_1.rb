$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables
	
##Test 1: New Event: Two groups, title, start date/time, end date/time, location, description, two media
##advanced options: publish later verified in PostScenarios3.rb, categories verified in PostScenarios2.rb
	def test01_EventAllFields
		login $user_1_email, $master_password
		$browser.goto($patch_new_event)

 		$post_event_title.when_present.set("Super fun run #{random}")
 		$post_event_calendar_start_text.when_present.set("#{next_year}-06-16")  
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
 		$post_add_media_article.when_present.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media_article.when_present.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now_event.fire_event("onclick")
		sleep 2
		assert $post_new_post.exists?
		#verify details?
	end

#Test 2: Event Video
	def test02_EventPhotoVideo
		login $user_1_email, $master_password
		$browser.goto($patch_new_event)

 		$post_event_title.when_present.set("Event #{random}")
 		$post_event_calendar_start_text.when_present.set("#{next_year}-05-23")  
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
 		$post_add_media_article.when_present.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
 		$post_add_media_article.when_present.click
		file_upload "DungenessSpitVideo.mov"
		$post_now_event.fire_event("onclick")
		sleep 2		
		if $environment == 'staging'
		  sleep 10
		end
		assert $post_new_post.exists?
		#verify details?
	end

#Test 4: Event  PDF
	def test04_EventPDF
		login $user_1_email, $master_password
		$browser.goto($patch_new_event)

 		$post_event_title.when_present.set("hiking extravaganza #{random}")
 		$post_event_calendar_start_text.when_present.set("#{next_year}-04-01")  
 		sleep 1
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("olympic national park #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('wolf creek trail is unavailable')")
 		$post_add_media_article.when_present.click
		file_upload "PDFDocument.pdf"
		if $environment == 'staging'
		  sleep 10
		end
		$post_now_event.fire_event("onclick")
		sleep 2
		assert $post_new_post.exists?
		#verify details?
	end
	
#Test 5: Edit an event post
	def test05_edit_event_post_TC_24306
		login $admin_1_email, $master_password
		$browser.goto($patch_existing_event)

		$post_edit_post.when_present.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text likes edit. #{random} ')")
		sleep 2
		$post_now_event.fire_event("onclick")
		sleep 2
		assert $post_edit_post.exists?
		#verify details?
	end
end