$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables
	
#Test 1: Edit a note post
	def test01_pre_closed_board_edit_note_post_TC_24306
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		$post_edit_post.when_present.click
		$post_compose_note.when_present.set("cats like edit. #{random}.")
		$post_now.when_present.when_present.fire_event("onclick")
		sleep 2

		assert $post_edit_post.exists?
	end

#Test 2: Edit a media post
	def test02_pre_closed_board_edit_media_post_TC_24306
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		sleep 2
		$post_edit_post.when_present.click
		$post_media_description.when_present.set("mt. rainier likes edit. #{random} ")
		$post_now.when_present.fire_event("onclick")
		
		assert $post_edit_post.exists?
	end
	
#Test 3: Edit an article post
	def test03_pre_closed_board_edit_article_post_TC_24306
		login $user_1_email, $master_password
		$browser.goto($patch_article_to_edit)
		
		$post_edit_post.when_present.click
	 	sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava likes edit. #{random}')")
		$post_now.when_present.fire_event("onclick")
		sleep 2
		
		assert $post_edit_post.exists? == true
	end
	
#Test 4: Delete a note post
#TC 24307
	def test04_pre_closed_board_delete_note_post_TC24307
		postNoteSetup("Delete post #{random}")
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end

#Test 5: Delete a media post
#TC 24307
	def test05_pre_closed_board_delete_media_post_TC_24307
		create_article_2png_wGroup "Article media post for delete #{random}"
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end
end