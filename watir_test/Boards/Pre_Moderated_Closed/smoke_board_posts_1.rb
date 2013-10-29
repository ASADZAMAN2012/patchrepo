$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables
	
##Test 1: New Article: Two groups, populated note, title, article field, 
##advanced options: intro, publish later verified in PostScenarios3.rb
	def test01_pre_closed_board_ArticleAllFields
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_pre_closed_article_new)
		if $environment == 'nixon'	
			repostGroupPop #category already selected in staging
		end
 		post2ndGroupPop
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
 		$post_add_media_article.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		sleep 4
		$post_now_edit.fire_event("onclick")

		sleep 2
		assert $post_new_post.exists?
	end
		
#Test 2: Photo, and video
	def test04_MediaPhotoVideo
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_pre_closed_article_new)
		
#		$post_activate_note.when_present.fire_event("onclick")
#		$post_media_description.set("mt townsend is my favorite mountain #{random}.")
		if $environment == 'nixon'	
			repostGroupPop #category already selected in staging
		end
		$post_article_title.set("Mountain #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('mt townsend is my favorite mountain #{random}.')")
		sleep 2
		$post_add_media_article.click
		file_upload "DungenessSpit102.26.2012.mov"
		sleep 2
		$post_add_media_article.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
        if $environment == 'staging'
			sleep 10 #loads 
		end
		$post_now_edit.fire_event("onclick")

		sleep 2
		assert $post_new_post.exists?
	end

#Test 3: Photo Post 50+ MB
#deprecated on futurama environments (hardware limitation)
#	def test03_pre_closed_board_MediaPhoto50Plus
#		login $editor_1_email, $master_password
#		$browser.goto($patch_boards_pre_closed)
#		
#		$post_activate_note.when_present.fire_event("onclick")
#		$post_add_media_note.when_present.click
#		file_upload "keplertransits.jpg"
#		$post_add_media_note.when_present.click
#		file_upload "keplertransits.jpg"
#		$post_add_media_note.when_present.click
#		file_upload "keplertransits.jpg"
#		$post_add_media_note.when_present.click
#		file_upload "keplertransits.jpg"
#		$post_add_media_note.when_present.click
#		file_upload "keplertransits.jpg"
#		$post_add_media_note.when_present.click
#		file_upload "keplertransits.jpg"
#		$post_now.fire_event("onclick")
#			
#		begin
#		sleep 2
#		assert $post_new_post.exists?
#			rescue => e
#			puts ("P1_T04: FAILED! User unable to Post.")
#			puts e
#		end	
#	end

#Test 4: PDF
	def test04_MediaPDF
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_pre_closed_article_new)
		
#		$post_activate_note.when_present.fire_event("onclick")
#		$post_media_description.set("mt townsend is my favorite mountain #{random}.")
		if $environment == 'nixon'	
			repostGroupPop #category already selected in staging
		end
		$post_article_title.set("Mountain #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('mt townsend is my favorite mountain #{random}.')")
		sleep 2
		$post_add_media_article.click
		file_upload "PDFDocument.pdf"
		$post_now_edit.fire_event("onclick")
		if $environment == 'staging'
			sleep 10 #loads 
		end
		sleep 2
		assert $post_new_post.exists?
	end
	
#Test 5: Post article as contributor, submit for approval
	def test05_contributor_post
		login $user_1_email, $master_password
		$browser.goto($patch_boards_pre_closed_article_new)
		
#		$post_activate_note.when_present.fire_event("onclick")
#		$post_media_description.set("mt townsend is my favorite mountain #{random}.")
#		repostGroupPop
		sleep 3
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('mt townsend is my favorite mountain #{random}.')")
		$post_article_title.set("Contributor #{random}")
		sleep 2
		$post_submit_approval_alt.fire_event("onclick")

		sleep 4
		  assert $browser.text.include? "submitted this for approval"
	end
end