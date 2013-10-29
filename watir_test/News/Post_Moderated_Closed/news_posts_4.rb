$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: Edit a note post
	def test01_post_closed_news_edit_note_post_TC_24306
		login $editor_1_email, $master_password
		$browser.goto($patch_news_post_open_note)
		
		$post_edit_post.when_present.click
		$post_compose_note.when_present.set("cats like edit. #{random}.")
		$post_now_alt_1.when_present.when_present.fire_event("onclick")
		sleep 2
		
		assert $post_edit_post.exists?
	end

#Test 2: Edit a media post
	def test02_post_closed_news_edit_media_post_TC_24306
		login $editor_1_email, $master_password
		$browser.goto($patch_news_post_open_note)
		
		sleep 2
		$post_edit_post.when_present.click
		$post_media_description.when_present.set("mt. rainier likes edit. #{random} ")
		$post_now_alt_1.when_present.fire_event("onclick")
		
		assert $post_edit_post.exists?
	end
	
#Test 3: Edit an article post
	def test03_post_closed_news_edit_article_post_TC_24306
		login $editor_1_email, $master_password
		$browser.goto($patch_news_post_open_article)
		
		$post_edit_post.when_present.click
	 	sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava likes edit. #{random}')")
		$post_now_alt_1.when_present.fire_event("onclick")
		sleep 2
		
		assert $post_edit_post.exists?
	end
	
#Test 4: Delete a note post
#TC 24307
	def test04_post_closed_news_delete_note_post_TC24307
		login $editor_1_email, $master_password
		$browser.goto($patch_news_post_open)
		postNoteSetup("Delete post #{random}")
		sleep 4
		deleteNotePost
		
		assert $browser.text.include?("The post was successfully deleted.")
	end

#Test 5: Delete a media post
#TC 24307
	def test05_post_closed_news_delete_media_post_TC_24307
		login $editor_1_email, $master_password
		$browser.goto($patch_news_post_open)
		postNoteSetup("Delete media post #{random}")
		sleep 4
		deleteNotePost
		
		assert $browser.text.include?("The post was successfully deleted.")
	end
end