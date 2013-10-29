$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/listings/[listing name]: cancel a review
	def test01_R4_cancel_review
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		$browser.goto($patch_directory_listing)
		$directory_review_begin.click
		$directory_review_text.set("Enjoyed my experience, I recommend times #{random}!!")
		$directory_review_close.click
		
		sleep 2
		assert $browser.text.include? "Share a review of this business"
	end

#Test 2: patch.com/listings/[listing name]: cancel an article post
	def test02_R4_cancel_article
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		sleep 2
		$directory_review_begin.click
		$directory_review_article_button.click
		sleep 5
		repostGroupPop
 		$post_article_title.set("Article regarding Go Go Thai #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
 		$post_add_media.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		$post_add_media.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		sleep 4
		$post_review_cancel.click
		
		sleep 2
		assert $browser.text.include? "Directory Group"
	end
	
#Test 3: patch.com/listings/[listing name]: edit a note review
	def test03_R4_edit_note_review_TC_24425
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		
		$browser.goto($patch_edit_review_note)
		
		sleep 2
		$directory_edit_review.click
		$directory_edit_note.set("It's nice to see small businesses in flatiron. So nice I edited this review #{random} times!")
		$post_now_review.when_present.fire_event("onclick")
	
		assert $browser.text.include? "nice I edited"
	end

#Test 4: patch.com/listings/[listing name]: delete a note review
	def test04_R4_delete_note_review_TC_24426
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		$directory_review_begin.click
		$directory_review_note_button.click
		$directory_review_text.set("It's nice to see small businesses in #{$local_patch}")
		$directory_review_post.click
		sleep 2
		$directory_first_note_review.click
		$directory_delete_review.click
		sleep 2
		$directory_delete_confirm.click
		sleep 2
		
		assert $browser.text.include? "The post was successfully deleted."
	end
#Test 5: patch.com/listings/[listing name]: edit an article review
	def test05_R4_edit_article_review_TC_24425
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		
		sleep 2
		$browser.goto($patch_edit_review_article)
		
		$directory_edit_review.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is editing. ')")
		$post_now_review.fire_event("onclick")
		sleep 2
		
		assert $browser.text.include? "editing"
	end
end