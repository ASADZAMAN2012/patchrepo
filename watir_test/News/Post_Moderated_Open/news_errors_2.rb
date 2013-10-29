$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

##Test 1: Populated group, empty title, empty article
		def test01_post_open_news_PopG_EmptyTA
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
			$post_now.fire_event("onclick")

			assert $post_now.exists?
		end

##Test 2: Populated group, populated title, empty article
		def test02_post_open_news_PopGT_EmptyA
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$post_article_title.set("Article #{random}")
			$post_now.fire_event("onclick")

			assert $post_now.exists?
		end

##Test 3: Populated group, empty title, populated article
		def test03_post_open_news_PopGA_EmptyT
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_pick_group.exists?
 			repostGroupPop
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_now.fire_event("onclick")

			assert $post_now.exists?
		end

##Test 4: Empty group, populated title, empty article
		def test04_post_open_news_PopTA_EmptyG
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_article_title.exists?
 			$post_article_title.set("Article #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_now.fire_event("onclick")
			sleep 2

			assert $post_now.exists?
			assert $post_group_error_check.exists?
		end


##Test 5: Empty group, empty title, populated article
		def test05_post_open_news_PopA_EmptyGT
			login $user_1_email, $master_password
			$browser.goto($patch_article)
			sleep 2
			
			assert $post_article_title.exists?
 			$post_article_title.set("")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_now.fire_event("onclick")

			assert $post_now.exists?
		end
end