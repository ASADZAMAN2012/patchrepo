$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

##Test 1: Populated group, populated title, populated article
		def test01_pre_open_board_PopA_EmptyGT
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_article_title.set("Article #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_now.fire_event("onclick")

			sleep 2
			assert $post_new_post.exists?
		end

##Test 2: Empty groups, empty description, no media
		def test02_pre_open_board_EmptyGDM
			login $user_1_email, $master_password
			$browser.goto($patch_media)
			sleep 2
			
			assert $post_now.exists?
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
			
##Test 3: Empty groups, empty description, populated media
		def test03_pre_open_board_EmptyGDM
			login $user_1_email, $master_password
			$browser.goto($patch_media)
			sleep 2
			
			assert $post_media_button.exists?
			$post_media_button.click
			file_upload "GlacierBasinTrailMtRainier.JPG"
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
		
##Test 4: Empty groups, populated description, populated media
		def test04_pre_open_board_EmptyGPopDM
			login $user_1_email, $master_password
			$browser.goto($patch_media)
			sleep 2
			
			assert $post_media_description.exists?
			$post_media_description.set("Media Description #{random}.")
			$post_media_button.click
			file_upload "GlacierBasinTrailMtRainier.JPG"
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
	
##Test 5: Populated group, empty description, no media
		def test05_pre_open_board_EmptyDMPopG
			login $user_1_email, $master_password
			$browser.goto($patch_media)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
end