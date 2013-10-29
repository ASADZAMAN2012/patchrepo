$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: Populated group, populated title, populated article
		def test01_post_open_blog_PopA_EmptyGTPublish
			login $user_1_email, $master_password
			$browser.goto($patch_blogs_post_open_article_new)
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
		
##Test 2: Empty group, empty title, empty article
		def test02_post_open_blog_EmptyGNPublish_TC_24299
			login $user_1_email, $master_password
			$browser.goto($patch_blogs_post_open_article_new)
			sleep 2
			
			assert $post_now.exists?
			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
end