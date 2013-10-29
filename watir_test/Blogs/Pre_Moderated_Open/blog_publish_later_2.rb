$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: Populated group, empty title, empty article
		def test01_pre_open_blog_PopG_EmptyTAPublish
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end

##Test 2: Populated group, populated title, empty article
		def test02_pre_open_blog_PopGT_EmptyAPublish
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_article_title.set("Article #{random}")
 			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end

##Test 3: Populated group, empty title, populated article
		def test03_pre_open_blog_PopGA_EmptyTPublish
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end

##Test 4: Empty group, populated title, empty article
		def test04_pre_open_blog_PopTA_EmptyGPublish
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_article_title.exists?
 			$post_article_title.set("Article #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			postPublishLater
			$post_now.fire_event("onclick")
			sleep 2
			
			assert $post_now.exists?
			assert $post_group_error_check.exists?
		end


##Test 5: Empty group, empty title, populated article
		def test05_pre_open_blog_PopA_EmptyGTPublish
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_article_title.exists?
 			$post_article_title.set("")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			postPublishLater
			$post_now.fire_event("onclick")
			
			assert $post_now.exists?
		end
end