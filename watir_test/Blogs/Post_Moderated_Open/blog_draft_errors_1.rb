$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: Empty group, empty title, empty article
		def test01_post_open_blog_DraftEmptyGN
			login $user_1_email, $master_password
			$browser.goto($patch_blogs_post_open_article_new)
			sleep 2
			
			assert $post_now.exists?
			sleep 4
			$post_save_draft.fire_event("onclick")
			
			assert $post_draft_error.exists?
		end
		
##Test 2: Populated group, populated title, populated article
	def test02_post_open_blog_DraftPopA_DraftEmptyGT
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)
		sleep 2

 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		sleep 4
		$post_save_draft.fire_event("onclick")
		
		sleep 2
		assert $post_draft_success.exists?
	end
end