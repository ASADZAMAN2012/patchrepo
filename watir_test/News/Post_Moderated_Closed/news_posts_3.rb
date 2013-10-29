$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: Note Video
	def test01_post_closed_news_NoteVideo_TC_24303
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
		sleep 2
		sleep 2
		$post_activate_note.fire_event("onclick")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_media_button.when_present.click
		sleep 1
		file_upload "DungenessSpit102.26.2012.mov"
		$browser.send_keys :enter
			
		sleep 2
		assert $browser.text.include? "Automated Text"
	end

#Test 2: Note Two Videos
	def test02_post_closed_news_NoteTwoVideo_TC_24303
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
		sleep 2
		$post_activate_note.fire_event("onclick")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_media_button.when_present.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button.when_present.click
		file_upload "DungenessSpit202.26.2012.mpg"
		$browser.send_keys :enter
	
		sleep 2
		assert $browser.text.include? "Automated Text"
	end
	
#Test 3: Note Video, Photo, PDF
	def test03_post_closed_news_NoteVideoPhotoPDF_TC_24302_TC_24304
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
		sleep 2
		sleep 2
		$post_activate_note.fire_event("onclick")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
 		repostGroupPop
 		#sleep 2
 		#$post_media_button
		$post_media_button.when_present.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_media_button.click
		file_upload "PDFDocument.pdf"
		$post_media_button.click
		file_upload "PDF2.pdf"
		$browser.send_keys :enter
			
		sleep 2
		assert $browser.text.include? "Automated Text"
	end
	
#Test 4: Article Video
	def test04_post_closed_news_ArticleVideo_TC_24303
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open_article_new)
			
		sleep 2
		$post_activate_note.fire_event("onclick")
 		$post_article_title.when_present.set("Article #{random}")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
 		$post_media_button.when_present.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_now.fire_event("onclick")
	
		sleep 2
		assert $post_new_post.exists?
	end
	
#Test 5: Article Two Videos
	def test05_post_closed_news_ArticleTwoVideo_TC_24303
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open_article_new)
			
		sleep 2
 		$post_article_title.when_present.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('hurricane ridge can also be access from port angeles.')")
 		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button_article.when_present.click
		sleep 2
		file_upload "DungenessSpit202.26.2012.mpg"
		$post_now_alt_1.when_present.fire_event("onclick")

		sleep 2
		assert $post_new_post.exists?
	end
	
end