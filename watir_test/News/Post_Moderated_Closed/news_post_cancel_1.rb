$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

##Test 1: New Article: Cancel
	def test01_post_closed_news_ArticleCancel
		login $user_1_email, $master_password
		$browser.goto($patch_article)
			
		sleep 2
 		repostGroupPop
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_cancel.click
			
		sleep 1
		if $post_cancel.exists?
			puts ("PC01T01: FAILED! User unable to cancel.")
			else nil
		end
	end
	
##Test 2: New Media: Cancel
	def test02_post_closed_news_MediaCancel
		login $user_1_email, $master_password
		$browser.goto($patch_media)
		
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("Media Description #{random}.")
 				repostGroupPop
				$post_media_button.click
				file_upload "GlacierBasinTrailMtRainier.JPG"
				$post_cancel.click
			else puts "PC01T02: FAILED! User unable to cancel."
			end
			
		sleep 1
		if $post_cancel.exists?
			puts ("PC01T06: FAILED! User unable to cancel.")
			else nil
		end
	end
	
##Test 3: New Event: Cancel
	def test03_post_closed_news_EventCancel
		login $user_1_email, $master_password
		$browser.goto($patch_event)
			
			sleep 2
			if $post_pick_group.exists?
 				repostGroupPop
 				$post_event_title.set("Event #{random}")
 				$post_event_calendar_start_text.set("#{next_year}-09-07")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				$post_cancel.click
				sleep 2
			else puts "PC01T03: FAILED! User able to cancel."
			end
			
		sleep 1
		if $post_cancel.exists?
			puts ("PC01T06: FAILED! User unable to cancel.")
			else nil
		end
	end
end