$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/listings/[listing name]: post a note with multiple photos and caption
	def test01_R2_media_caption
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		$directory_review_begin.click
		$directory_review_note_button.click
		$directory_review_text.set("It's nice to see small businesses in #{$local_patch}")
		sleep 2
		$directory_review_photo.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		sleep 2
		$directory_review_photo.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
		sleep 2
		$directory_review_photo_caption.set("Mt. Rainier is a dormant volcano. Buy volcano insurance today!")
		sleep 2
		
		$directory_review_post.click
		
		sleep 2
		assert $browser.text.include? "just now"
	end
	
#Test 2: patch.com/listings/[listing name]: post a note, add a photo, remove photo
	def test02_R2_remove_photo
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		$directory_review_begin.click
		$directory_review_note_button.click
		$directory_review_text.set("It's nice to see small businesses in #{$local_patch}")
		sleep 2
		$directory_review_photo.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		sleep 2
		$directory_review_photo_remove.click
		sleep 2
		
		$directory_review_post.click
		
		sleep 2
		assert $browser.text.include? "just now"
	end

#Test 3: patch.com/listings/[listing name]: post an article (listing not followed)
	def test03_R2_article_not_followed
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_following_unfollow
		postBasicReview
		
		$directory_review_begin.click
		$directory_review_article_button.click
		create_article_wGroup "Article listing not followed  #{article}"
		
		sleep 2
		assert $browser.text.include? "just now"
	end

#Test 4: patch.com/listings/[listing name]: post an article (listing followed)
	def test04_R2_article_followed
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		postBasicReview
		
		$directory_review_begin.click
		$directory_review_article_button.click
		create_article_wGroup "Article listing followed #{random}"
		
		sleep 2
		assert $browser.text.include? "just now"
	end
	
#Test 5: patch.com/listings/[listing name]: leave a second review for the same business
	def test05_R2_second_review
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		postBasicReview
		postBasicReview
		sleep 2
		
		assert $browser.text.include? "just now"
	end
end