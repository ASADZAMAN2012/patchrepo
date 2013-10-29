$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

#Test 1: Video clip
	def test01_pre_open_blog_MediaVideoClip
		login $user_1_email, $master_password
		$browser.goto($patch_media)
			
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
	def test02_pre_open_blog_MediaTwoVideoClips
		login $user_1_email, $master_password
		$browser.goto($patch_media)
			
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
	def test03_pre_open_blog_MediaVideo
		login $user_1_email, $master_password
		$browser.goto($patch_media)
			
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
	def test04_pre_open_blog_MediaTwoVideo
		login $user_1_email, $master_password
		$browser.goto($patch_media)
			
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
	def test05_pre_open_blog_ArticleVideoPhotoPDF
		login $user_1_email, $master_password
		$browser.goto($patch_article)
			
		sleep 2
		assert $post_pick_group.exists?
 		repostGroupPop
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('the dungeness spit is a mile or two long')")
 		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_media_button.click
		file_upload "PDFDocument.pdf"
		$post_media_button.click
		file_upload "PDF2.pdf"
		$post_now.fire_event("onclick")
			
		sleep 2
		assert $post_new_post.exists?
	end
end
