$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: Populated group, populated title, populated article
		def test01_post_closed_blog_PopA_EmptyGTPublish
			login $user_1_email, $master_password
			$browser.goto($patch_blogs_post_closed_article_new)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_article_title.set("Article #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			postPublishLater
			$post_now.fire_event("onclick")
			
			sleep 2
			assert $post_scheduled_post.exists?
		end

##Test 2: Empty groups, empty description, populated media
		def test02_post_closed_blog_EmptyGDMPublish
			login $user_1_email, $master_password
			$browser.goto($patch_blogs_post_closed)
			sleep 2
			
			assert $post_media_button.exists?
			$post_media_button.click
			file_upload "GlacierBasinTrailMtRainier.JPG"
			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
		
##Test 3: Empty groups, populated description, populated media
		def test03_post_closed_blog_EmptyGPopDMPublish
			login $user_1_email, $master_password
			$browser.goto($patch_blogs_post_closed)
			sleep 2
			
			assert $post_media_description.exists?
			$post_media_description.set("Media Description #{random}.")
			$post_media_button.click
			file_upload "GlacierBasinTrailMtRainier.JPG"
			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
	
##Test 4: Populated group, empty description, no media
		def test04_post_closed_blog_EmptyDMPopGPublish
			login $user_1_email, $master_password
			$browser.goto($patch_blogs_post_closed)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
end