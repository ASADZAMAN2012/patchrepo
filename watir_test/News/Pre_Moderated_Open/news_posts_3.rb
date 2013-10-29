$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: Note Video
	def test01_pre_open_news_NoteVideo_TC_24303
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
		sleep 2
		
		assert $post_pick_group.exists?
 		$post_pick_group.when_present.fire_event("onclick")
 		repostGroupPop
		$post_compose_note.when_present.set("Elwah river dam has been removed and lake mills is being drained. this causes the riverbed to be unstable and change daily.")
		$post_add_media.when_present.click
		sleep 1
		file_upload "DungenessSpit102.26.2012.mov"
		$post_now_alt_1.when_present.fire_event("onclick")
			
		sleep 2
		assert $post_new_post.exists?
	end

#Test 2: Note Two Videos
	def test02_pre_open_news_NoteTwoVideo_TC_24303
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
		sleep 2
		
		assert $post_pick_group.exists?
 		$post_pick_group.when_present.fire_event("onclick")
 		repostGroupPop
		$post_compose_note.when_present.set("The olympic hot springs are still open and accessible from port angeles")
		$post_add_media.when_present.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_add_media.when_present.click
		file_upload "DungenessSpit202.26.2012.mpg"
		$post_now_alt_1.when_present.fire_event("onclick")
	
		sleep 2
		assert $post_new_post.exists?
	end
	
#Test 3: Note Video, Photo, PDF
	def test03_pre_open_news_NoteVideoPhotoPDF_TC_24302_TC_24304
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open)
		sleep 2
		
		assert $post_pick_group.exists?
 		$post_pick_group.when_present.fire_event("onclick")
		$post_media_description.when_present.set("All fishing is off limits in the olympic national park.")
 		repostGroupPop
 		#sleep 2
 		#$post_media_button
		$post_add_media.when_present.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_add_media.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media.click
		file_upload "PDFDocument.pdf"
		$post_add_media.click
		file_upload "PDF2.pdf"
		$post_now.fire_event("onclick")
			
		sleep 2
		assert $post_new_post.exists?
	end
	
#Test 4: Article Video
	def test04_pre_open_news_ArticleVideo_TC_24303
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_article_new)
			
		sleep 2
		assert $post_pick_group.exists?
 		repostGroupPop
 		$post_article_title.when_present.set("Article #{random}")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Port angeles is next to the klallam reservation')")
 		$post_add_media.when_present.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_now_alt_1.when_present.fire_event("onclick")
	
		sleep 2
		assert $post_new_post.exists?
	end
	
#Test 5: Article Two Videos
	def test05_pre_open_news_ArticleTwoVideo_TC_24303
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_article_new)
			
		sleep 2
		assert $post_pick_group.exists?
 		repostGroupPop
 		$post_article_title.when_present.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('hurricane ridge can also be access from port angeles.')")
 		$post_add_media.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_add_media.when_present.click
		sleep 2
		file_upload "DungenessSpit202.26.2012.mpg"
		$post_now_alt_1.when_present.fire_event("onclick")

		sleep 2
		assert $post_new_post.exists?
	end
	
end