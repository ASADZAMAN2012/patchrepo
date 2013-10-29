$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: New Note: Two groups, populated note field, two media 
##advanced options: publish later verified in PostScenarios3.rb
	def test01_post_closed_blog_NoteAllFields
		login $admin_1_email, $master_password
		$browser.goto($patch_blogs_post_closed)
		sleep 2
		
		$post_activate_note.when_present.fire_event("onclick")
		$post_compose_note.when_present.set("Note field the internet likes cats..")
		$post_add_media_note.when_present.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		sleep 2
		$post_add_media_note.when_present.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now.fire_event("onclick")
		
		sleep 2
		assert $post_new_post.exists?
	end


##Test 2: New Article: Two groups, populated note, title, article field, 
##advanced options: intro, publish later verified in PostScenarios3.rb
	def test02_post_closed_blog_ArticleAllFields
		login $admin_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article_new)
			
 		post2ndGroupPop
 		$post_article_title.when_present.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
 		$post_add_media_article.when_present.click
 		sleep 2
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media_article.when_present.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now.fire_event("onclick")
		
		sleep 2
		assert $post_new_post.exists?
	end
		
##Test 3: New Media: Two groups, populated description, two media
##advanced options: publish later verified in PostScenarios3.rb
	def test03_post_closed_blog_MediaAllFields
		login $admin_1_email, $master_password
		$browser.goto($patch_blogs_post_closed)
		sleep 2
		
		$post_activate_note.when_present.fire_event("onclick")
		$post_media_description.when_present.set("pictures of hiking mr. rainier #{random}.")
		$post_add_media_note.click
		sleep 2
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media_note.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_now.fire_event("onclick")
		
		sleep 2
		assert $post_new_post.exists?
	end

#Test 4: Photo Post 50+ MB
	def test04_post_closed_blog_MediaPhoto50Plus
		login $admin_1_email, $master_password
		$browser.goto($patch_blogs_post_closed)
		
		$post_activate_note.when_present.fire_event("onclick")
		$post_media_description.when_present.set("but mt si is also a neat mountain #{random}.")
 		repostGroupPop
		$post_add_media_note.click
		file_upload "keplertransits.jpg"
		$post_add_media_note.click
		file_upload "keplertransits.jpg"
		$post_add_media_note.click
		file_upload "keplertransits.jpg"
		$post_add_media_note.click
		file_upload "keplertransits.jpg"
		$post_add_media_note.click
		file_upload "keplertransits.jpg"
		$post_add_media_note.click
		file_upload "keplertransits.jpg"
		$post_now.fire_event("onclick")

		sleep 2
		assert $post_new_post.exists?	
	end


#Test 5: Photo, video, and PDF
	def test05_post_closed_blog_MediaPhotoVideoPDF
		login $admin_1_email, $master_password
		$browser.goto($patch_blogs_post_closed)
		sleep 2
		
		$post_activate_note.when_present.fire_event("onclick")
		$post_media_description.when_present.set("mt townsend is my favorite mountain #{random}.")
		$post_add_media_note.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_add_media_note.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media_note.click
		file_upload "PDFDocument.pdf"
		$post_now.fire_event("onclick")
		
		sleep 2
		assert $post_new_post.exists?	
	end
end