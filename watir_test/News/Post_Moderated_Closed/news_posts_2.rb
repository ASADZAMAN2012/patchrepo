$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: Video clip
	def test01_post_closed_news_MediaVideoClip
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
			
		sleep 2
 		$post_activate_note.when_present.fire_event("onclick")
 		sleep 2
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').click")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Note post #{random}')")
		$post_inline_article_title.when_present.set("#{random} Title")
    	sleep 2
    	$post_media_button.click
		file_upload "DungenessSpit202.26.2012.mpg"
		$post_now.fire_event("onclick")
    	#$post_inline_article_title.click 
    	sleep 2
		$browser.send_keys :enter
			
		sleep 2
		assert $browser.text.include? "Note post"
	end
	
#Test 2: Two video clips
	def test02_post_closed_news_MediaTwoVideoClips
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
			
		sleep 2
 		$post_activate_note.when_present.fire_event("onclick")
 		sleep 2
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').click")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Note post #{random}')")
		$post_inline_article_title.when_present.set("#{random} Title")
    	sleep 2
		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button.click
		file_upload "DungenessSpit202.26.2012.mpg"
		$post_inline_article_title.click 
		$browser.send_keys :enter
			
		sleep 2
		assert $browser.text.include? "Note post"
	end
	
#Test 3: Media Video
	def test03_post_closed_news_MediaVideo
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
			
		sleep 2
 		$post_activate_note.when_present.fire_event("onclick")
 		sleep 2
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').click")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Note post #{random}')")
		$post_inline_article_title.when_present.set("#{random} Title")
    	sleep 2
		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_inline_article_title.click 
		$browser.send_keys :enter
			
		sleep 2
		assert $browser.text.include? "Note post"
	end

#Test 4: Media 2 Videos
	def test04_post_closed_news_MediaTwoVideo
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
			
		sleep 2
 		$post_activate_note.when_present.fire_event("onclick")
 		sleep 2
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').click")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Note post #{random}')")
		$post_inline_article_title.when_present.set("#{random} Title")
    	sleep 2
		$post_media_button.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_media_button.click
		file_upload "DungenessSpit202.26.2012.mpg"
		$post_inline_article_title.click 
		$browser.send_keys :enter
		
		sleep 2
		assert $browser.text.include? "Note post"
	end

#Test 5: Article Video, Photo, PDF
	def test05_post_closed_news_ArticleVideoPhotoPDF
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open_article_new)
		
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('the dungeness spit is a mile or two long')")
 		sleep 2
 		$post_add_media_article.click
		file_upload "DungenessSpit102.26.2012.mov"
		$post_add_media_article.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_add_media_article.click
		file_upload "PDFDocument.pdf"
		$post_add_media_article.click
		file_upload "PDF2.pdf"
		$post_now.fire_event("onclick")
			
		sleep 4
		assert $post_new_post.exists?
	end
end
