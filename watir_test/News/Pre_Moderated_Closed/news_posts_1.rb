$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
		
##Test 1: New Note: Two groups, populated note field, two media 
##advanced options: publish later verified in PostScenarios3.rb
	def test01_pre_closed_news_NoteAllFields
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
			
		sleep 2
		assert $post_pick_group.exists?
 		$post_pick_group.fire_event("onclick")
 		repostGroupPop
 		post2ndGroupPop
		$post_compose_note.set("Note field the internet likes cats..")
		$post_add_media.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now.fire_event("onclick")
		
		sleep 2
		assert $post_new_post.exists?
	end

##Test 2: New Article: Two groups, populated note, title, article field, 
##advanced options: intro, publish later verified in PostScenarios3.rb
	def test02_pre_closed_news_ArticleAllFields
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_article_new)
			
		sleep 2
		assert $post_pick_group.exists?
 		repostGroupPop
 		post2ndGroupPop
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
 		$post_add_media.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now.fire_event("onclick")
			
		sleep 2
		assert $post_new_post.exists?
	end
		
##Test 3: New Media: Two groups, populated description, two media
##advanced options: publish later verified in PostScenarios3.rb
	def test03_pre_closed_news_MediaAllFields
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
			
		sleep 2
		assert $post_media_description.exists?
		$post_media_description.set("pictures of hiking mr. rainier #{random}.")
 		repostGroupPop
 		post2ndGroupPop
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now.fire_event("onclick")
			
		sleep 2
		assert $post_new_post.exists?
	end

#Test 4: Photo Post 50+ MB
#Deprecated

#Test 5: Photo, video, and PDF
	def test05_pre_closed_news_MediaPhotoVideoPDF
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
			
		sleep 2
		assert $post_media_description.exists?
		$post_media_description.set("mt townsend is my favorite mountain #{random}.")
 		repostGroupPop
		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_media_button.click
		file_upload "PDFDocument.pdf"
		$post_now.fire_event("onclick")
			
		sleep 4
		assert $post_new_post.exists?
	end
end