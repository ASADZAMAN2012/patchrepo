$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: Edit a note post
	def test01_pre_open_news_edit_note_post_TC_24306
		@msg = "cats like edit. #{random}."
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_note)
			
		$post_edit_post.when_present.click
		sleep 4
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{@msg}')")
		sleep 4

		$post_now_edit_alt1.fire_event("onclick")
		sleep 2
		$browser.refresh
		assert $browser.text.include? @msg
	end
	
#Test 3: Edit an article post
	def test03_pre_open_news_edit_article_post_TC_24306
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_article)
		
		$post_edit_post.when_present.click
	 	sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava likes edit. #{random}')")
		sleep 2
		
		if $post_now_edit.exists?
			$post_now_edit.fire_event("onclick")
			else $browser.refresh
			$post_now_edit.fire_event("onclick")
		end
		
		assert $post_edit_post.exists?
	end
	
#Test 4: Delete a note post
#TC 24307
	def test04_pre_open_news_delete_note_post_TC24307
		login $editor_1_email, $master_password
		$browser.goto($patch_news_post_open)
		postNoteSetup("Delete post #{random}")
		sleep 3
    	deleteNotePost
		sleep 2
		assert $browser.text.include?("The post was successfully deleted.")
	end

#Test 5: Delete a media post
#TC 24307
	def test05_pre_open_news_delete_article_post_TC_24307
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_article_new)
		create_article_1jpeg_wGroup "Article media post for #{random}"

		$post_delete_post.click

		$post_delete_confirm.click

		assert $browser.text.include?("The post was successfully deleted.")
	end
end