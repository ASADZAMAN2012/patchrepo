$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

#Test 1: Delete an article post
	def test01_post_open_board_delete_article_post_TC_24307
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_post_open_article_new)
		
		$post_article_title.when_present.set "Article #{random}"
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
		sleep 4
		
		assert $post_now_alt_1.exists?
		$post_now_alt_1.fire_event("onclick")
		
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		sleep 1
		assert $browser.text.include?("The post was successfully deleted.")
	end
	
#Test 2: Post a note outside home community
	def test02_post_open_board_post_note_outside_home_TC_27491
		login $editor_1_email, $master_password
		$browser.goto($patch_flatiron_boards_post_open)
		$boards_announcements.when_present.click
		sleep 4
		postNoteSetup("Post note outside community #{random}")
		
		sleep 2
		assert $browser.link(:text, "Note field the internet likes cats.. #{random}")
	end
	
#Test 3: Post an article outside home community	
	def test03_post_open_board_post_article_outside_home_TC_27491
		login $editor_1_email, $master_password
		$browser.goto($patch_flatiron_boards_announcement_article_new)

		create_article_1jpeg_wGroup "Article post from outside community #{random}"
		
		sleep 4
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.when_present.click
		sleep 2
		assert $browser.link(:text, "Article #{random}")
	end
	
#Test 4: Post media outside home community
	def test04_post_open_board_post_media_outside_home_TC_27491
		login $editor_1_email, $master_password
		$browser.goto($patch_flatiron_boards_post_open)
		$boards_announcements.when_present.click
		sleep 2
		postNoteSetup("Media post outside community #{random}")
		
		sleep 2
		assert $browser.link(:text, "Cats rule the Internet. #{random}")
	end
end