$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/listings/[listing name]: post photo (listing followed)
	def test01_R3_photo_followed
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		
		$directory_review_begin.click
		sleep 2
		$directory_review_photo_button.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		sleep 2
		$directory_review_photo_caption.set("Mt. Rainier is a dormant volcano. Buy volcano insurance today!")
		sleep 2
		$directory_review_post.click
		
		sleep 2
		assert $browser.text.include? "just now"
	end
	
#Test 2: patch.com/listings/[listing name]: post photo (listing not followed)
	def test02_R3_photo_not_followed
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_following_unfollow
		
		$directory_review_begin.click
		sleep 2
		$directory_review_photo_button.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		sleep 2
		$directory_review_photo_caption.set("Mt. Rainier is a dormant volcano. Buy volcano insurance today!")
		sleep 2
		$directory_review_post.click
		
		sleep 2
		assert $browser.text.include? "just now"
	end

#Test 3: patch.com/listings/[listing name]: post event (listing followed)
	def test03_R3_event_followed
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		postBasicReview
		
		$directory_review_begin.click
		$directory_review_event_button.click
		createEvent_business
		
		sleep 2
		assert $browser.text.include? "just now"
	end

#Test 4: patch.com/listings/[listing name]: post event (listing not followed)
	def test04_R3_event_not_followed
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_following_unfollow
		postBasicReview
		
		$directory_review_begin.click
		$directory_review_event_button.click
		createEvent_business
		
		sleep 2
		assert $browser.text.include? "just now"
	end
	
#Test 5: patch.com/listings/[listing name]: cancel an event post
	def test05_R3_cancel_event_post
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		postBasicReview
		
		$directory_review_begin.click
		$directory_review_event_button.click
		sleep 2
		if $post_pick_group.exists?
 			repostGroupPop
 			$post_event_title.set("Marge Elias Insurance Signup Event #{random}")
 			$post_event_calendar_start_text.set("#{next_year}-07-04")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Come find a plan that works for you!')")
 			sleep 2
 			$post_add_media.click
			$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
			sleep 2
			$post_add_media.click
			$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
			$post_review_cancel.click
			sleep 2
		end	
		
		sleep 2
		assert $browser.text.include? "Directory Group"
	end
end