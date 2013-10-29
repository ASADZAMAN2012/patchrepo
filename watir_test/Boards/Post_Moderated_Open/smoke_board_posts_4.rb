$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

#Test 1: Edit a note post
	def test01_post_open_board_edit_note_post_TC_24306
		login $admin_1_email, $master_password
		$browser.goto($patch_boards_post_open)
		
		postNoteSetup("Note for Edit #{random}")
		wait_for_ajax

		$post_note_to_delete_link.when_present.click
		$post_edit_post.when_present.click
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('PMOB Article: Do Not Delete edit #{random}')")
		sleep 2
		$post_now_alt_1.fire_event("onclick")

		assert $post_edit_post.exists?
	end

# #Test 2: Edit a media post
# 	def test02_post_open_board_edit_media_post_TC_24306
# 		login $admin_1_email, $master_password
# 		$browser.goto($patch_boards_post_open)
# 		sleep 4
# 		
# 		postNoteSetup("Media Note for edit #{random}")
# 		wait_for_ajax
# 		$post_note_to_delete_link.when_present.click
# 		$post_edit_post.when_present.click
# 		
# 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('PMOB Article: Do Not Delete edit #{random}')")
# 		sleep 2
# 		$post_now_alt_1.fire_event("onclick")
# 		
# 		assert $post_edit_post.exists?
# 	end
# 	
#Test 3: Edit an article post
	def test03_post_open_board_edit_article_post_TC_24306
		login $admin_1_email, $master_password
		$browser.goto($patch_boards_post_open_article)
		
		$post_edit_post.when_present.click
	 	sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('PMOB Article: Do Not Delete edit #{random}')")
		sleep 2
		$post_now_alt_1.fire_event("onclick") #do not change

		assert $post_edit_post.exists?
	end
	
#Test 4: Delete a note post
#TC 24307
	def test04_post_open_board_delete_note_post_TC24307
		login $admin_1_email, $master_password
		$browser.goto($patch_boards_post_open)
		
		postNoteSetup("Delete post #{random}")
		sleep 4

		$post_note_to_delete_link.when_present.click
		$post_delete_post.when_present.click
		sleep 4
		
		assert $post_delete_confirm.exists?
		$post_delete_confirm.when_present.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end
end