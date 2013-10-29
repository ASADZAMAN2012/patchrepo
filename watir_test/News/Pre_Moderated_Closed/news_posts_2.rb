$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: Video clip
	def test01_pre_closed_news_MediaVideoClip
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
			
		sleep 2
		assert $post_media_description.exists?
		$post_media_description.set("pictures of hiking mr. rainier #{random}.")
 		repostGroupPop
		$post_media_button.click
		file_upload "Kemosabe.PNG"
		$post_now.fire_event("onclick")
			
		sleep 2
		assert $post_new_post.exists?
	end
	
#Test 2: Two video clips
	def test02_pre_closed_news_MediaTwoVideoClips
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
			
		sleep 2
		assert $post_media_description.exists?
		$post_media_description.set("hiking mt st helens isnt as cool #{random}.")
 		repostGroupPop
		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button.click
		file_upload "DungenessSpit202.26.2012.mpg"
		$post_now.fire_event("onclick")
			
		sleep 2
		assert $post_new_post.exists?
	end
	
#Test 3: Media Video
	def test03_pre_closed_news_MediaVideo
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
			
		sleep 2
		assert $post_media_description.exists?
		$post_media_description.set("the elwah river original flow was recently restored #{random}.")
 		repostGroupPop
		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_now.fire_event("onclick")
			
		sleep 2
		assert $post_new_post.exists?
	end

#Test 4: Media 2 Videos
	def test04_pre_closed_news_MediaTwoVideo
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
			
		sleep 2
		assert $post_media_description.exists?
		$post_media_description.set("whiskey bend road has been closed #{random}.")
 		repostGroupPop
		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button.click
		file_upload "DungenessSpit202.26.2012.mpg"
		$post_now.fire_event("onclick")
		
		sleep 2
		assert $post_new_post.exists?
	end

#Test 5: Article Video, Photo, PDF
	def test05_pre_closed_news_ArticleVideoPhotoPDF
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_article_new)
		
		repostGroupPop
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('the dungeness spit is a mile or two long')")
 		sleep 2
 		$post_add_media.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_add_media.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media.click
		file_upload "PDFDocument.pdf"
		$post_add_media.click
		file_upload "PDF2.pdf"
		$post_now.fire_event("onclick")
			
		sleep 4
		assert $post_new_post.exists?
	end
end
