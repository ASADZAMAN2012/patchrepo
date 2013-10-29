$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/listings/[listing name]: delete an article review
	def test01_R5_delete_article_review_TC_24426
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		sleep 2
		postBasicReview
		sleep 2
		
		$directory_review_begin.click
		sleep 2
		$directory_review_article_button.click
		sleep 2
		create_article_wGroup "Article Review for Delete #{random}"
		
		sleep 2
		$directory_delete_review.click
		sleep 2
		$directory_delete_confirm.click
		
		assert $browser.text.include? "The post was successfully deleted."
	end

#Test 2: patch.com/listings/[listing name]: edit a photo review
	def est02_R5_edit_photo_review_TC_24425
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		
		$directory_review_begin.click
		sleep 2
		$directory_review_photo_button.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		$directory_review_photo_caption.set("Mt. Rainier is a dormant volcano. Buy volcano insurance today!")
		$directory_review_post.click
		sleep 2
		$directory_first_photo_review.click
		sleep 2
		$directory_edit_review.click
		sleep 2
		$directory_edit_note.set("Oh I forgot to edit this.")
		$post_now_review.fire_event("onclick")
		
		assert $browser.text.include? "just now"
	end
	
#Test 3: patch.com/listings/[listing name]: delete a photo review
	def est03_R5_delete_photo_review_TC_24426
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		sleep 2
		
		$directory_review_begin.click
		sleep 2
		$directory_review_photo_button.click
		sleep 2
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		$directory_review_photo_caption.set("Mt. Rainier is a dormant volcano. Buy volcano insurance today!")
		$directory_review_post.click
		sleep 2
		$directory_first_photo_review.click
		sleep 2
		$directory_delete_review.click
		sleep 2
		$directory_delete_confirm.click
		
		assert $browser.text.include? "The post was successfully deleted."
	end
	
#Test 4: patch.com/listings/[listing name]: edit an event
	def test04_R5_edit_event_review_TC_24425
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		sleep 2
		postBasicReview
		sleep 2
		$directory_review_begin.click
		sleep 2
		$directory_review_article_button.click
		createEvent_business
		sleep 2
		$directory_edit_review.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is editing. ')")
		$post_now_review.fire_event("onclick")
		
		assert $browser.text.include? "just now"
	end
	
#Test 5: patch.com/listings/[listing name]: delete an event
	def test05_R5_delete_event_review_TC_24426
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		sleep 2
		postBasicReview
		sleep 2
		
		$directory_review_begin.click
		sleep 2
		$directory_review_article_button.click
		createEvent_business
		sleep 2
		$directory_delete_review.click
		sleep 2
		$directory_delete_confirm.click
		
		assert $browser.text.include? "The post was successfully deleted."
	end
end
