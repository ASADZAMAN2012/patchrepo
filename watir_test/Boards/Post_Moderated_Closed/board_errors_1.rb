$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

##Test 1: Empty group and empty note 
		def test01_post_closed_board_EmptyGN
			login $user_1_email, $master_password
			$browser.goto($patch_note)
			sleep 2
			$post_now.fire_event("onclick")
		
			assert $post_now.exists?
		end
		
##Test 2: Populated group and empty note
		def test02_post_closed_board_EmptyN
			login $user_1_email, $master_password
			$browser.goto($patch_note)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end

##Test 3: Empty group and populated note
		def test03_post_closed_board_EmptyG
			login $user_1_email, $master_password
			$browser.goto($patch_note)
			sleep 2
			
			assert $post_compose_note.exists?
			$post_compose_note.set("Note field populated by automated test.")
			$post_now.click
			sleep 5
			
			assert $post_group_error_check.exists?
		end

##Test 4: Populated group and populated note
		def test04_post_closed_board_PopGN
			login $user_1_email, $master_password
			$browser.goto($patch_note)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
			$post_compose_note.set("Note field populated by automated test.")
			$post_now.fire_event("onclick")
			sleep 4
			
			assert $post_new_post.exists?
		end

##Test 5: Empty group, empty title, empty article
		def test05_post_closed_board_EmptyGN
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_now.exists?
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
end
