$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
	
##Test 1: New Note: Two groups, populated note field, two media 
##advanced options: publish later verified in PostScenarios3.rb
	def test01_post_closed_news_NoteAllFields
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
			
		sleep 2
		$post_activate_note.fire_event("onclick")
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		sleep 2
		$post_media_button.click
		sleep 2
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now.fire_event("onclick")
		
		sleep 2
		assert $browser.text.include? "Automated Text"
	end

##Test 2: New Article: Two groups, populated note, title, article field, 
##advanced options: intro, publish later verified in PostScenarios3.rb
	def test02_post_closed_news_ArticleAllFields
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open_article_new)
			
		sleep 2

 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
 		$post_add_media_article.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media_article.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now.fire_event("onclick")
			
		sleep 2
		assert $post_new_post.exists?
	end
		
##Test 3: New Media: Two groups, populated description, two media
##advanced options: publish later verified in PostScenarios3.rb
	def test03_post_closed_news_MediaAllFields
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
			
		sleep 2
		$post_activate_note.fire_event("onclick")
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now.fire_event("onclick")
			
		sleep 2
		assert $browser.text.include? "Automated Text"
	end

#Test 4: Photo Post 50+ MB
#Deprecated

#Test 5: Photo, video, and PDF
	def test05_post_closed_news_MediaPhotoVideoPDF
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
			
		sleep 2
		$post_activate_note.fire_event("onclick")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_media_button.click
		file_upload "PDFDocument.pdf"
		$post_now.fire_event("onclick")
			
		sleep 4
		assert $browser.text.include? "Automated Text"
	end
end