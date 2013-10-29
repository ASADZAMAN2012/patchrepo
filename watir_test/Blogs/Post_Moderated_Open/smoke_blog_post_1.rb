$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 2: New Article: Two groups (categories), populated note, title, article field
	def test02_post_open_blog_ArticleAllFields
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)
			
		#one group already selected by default
 		post2ndGroupPop
 		$post_article_title.set("Blog #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
 		$post_add_media.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now_edit.fire_event("onclick")

		sleep 4
		assert $post_new_post.exists?
	end

#Test 3: Photo Post 50+ MB
#Deprecated on futurama environments (hardware space limitation)
#	def test04_post_open_blog_MediaPhoto50Plus
#		login $user_1_email, $master_password
#		$browser.goto($patch_blogs_post_open)
#			
#		sleep 2
#		assert $post_media_description.exists?
#		$post_media_description.set("but mt si is also a neat mountain #{random}.")
#		$post_media_note.click
#		file_upload "keplertransits.jpg"
#		$post_media_note.click
#		file_upload "keplertransits.jpg"
#		$post_media_note.click
#		file_upload "keplertransits.jpg"
#		$post_media_note.click
#		file_upload "keplertransits.jpg"
#		$post_media_note.click
#		file_upload "keplertransits.jpg"
#		$post_media_note.click
#		file_upload "keplertransits.jpg"
#		$post_now.fire_event("onclick")
#
#		sleep 2
#		assert $post_new_post.exists?	
#	end

#Test 4: video, and picture
	def test04_post_open_blog_MediaVideoPic
		@msg = "mt townsend is my favorite mountain #{random}"
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)

		sleep 2
		$post_article_title.set("Blog #{random}")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{@msg}')")
		$post_add_media.click
		file_upload "DungenessSpit102.26.2012.mov"
		sleep 5
		$post_add_media.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		sleep 5
		if $environment == 'staging'
			sleep 10 #loads 
		end
		$post_now_edit.fire_event("onclick")
		
        sleep 4
		assert $post_new_post.exists?
	end
	
#Test 4:  PDF
	def test05_post_open_blog_MediaPDF
		@msg = "mt townsend is my favorite mountain #{random}"
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)

		sleep 2
		$post_article_title.set("Blog #{random}")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{@msg}')")
		$post_add_media.click
		file_upload "PDFDocument.pdf"
		sleep 5
		if $environment == 'staging'
			sleep 10 #loads 
		end
		$post_now_edit.fire_event("onclick")
        sleep 4
		assert $post_new_post.exists?
	end
end