$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables
			
##Test 1: Empty group and empty note 
		def test01_pre_closed_blog_EmptyGNPublish_TC_24299
			login $user_1_email, $master_password
			$browser.goto($patch_note)
			sleep 2
			postPublishLater
			$post_now.fire_event("onclick")
		
			assert $post_now.exists?
		end
		
##Test 2: Populated group and empty note
		def test02_pre_closed_blog_EmptyNPublish_TC_24299
			login $user_1_email, $master_password
			$browser.goto($patch_note)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end

##Test 3: Empty group and populated note
		def test03_pre_closed_blog_EmptyGPublish_TC_24299
			login $user_1_email, $master_password
			$browser.goto($patch_note)
			sleep 2
			
			assert $post_compose_note.exists?
			$post_compose_note.set("Note field populated by automated test.")
			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_group_error_check.exists?
		end

##Test 4: Populated group and populated note
		def test04_pre_closed_blog_PopGNPublish_TC_24299
			login $user_1_email, $master_password
			$browser.goto($patch_note)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
			$post_compose_note.set("Note field populated by automated test.")
			postPublishLater
			$post_now.fire_event("onclick")
			sleep 4
			
			assert $post_scheduled_post.exists?
		end

##Test 5: Empty group, empty title, empty article
		def test05_pre_closed_blog_EmptyGNPublish_TC_24299
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_now.exists?
			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
end