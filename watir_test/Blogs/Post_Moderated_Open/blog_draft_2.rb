$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

#Test 1: Close delete Article draft dialog
	def test01_post_open_blog_close_article_draft
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)
		sleep 2
	
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_save_draft.click
		
		assert $post_draft_success.exists?
		close_delete
	end
	
#Test 2: Cancel deleting Article draft
	def test02_post_open_blog_cancel_article_draft
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)
		
		sleep 2
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_save_draft.click
		
		assert $post_draft_success.exists?
		cancel_delete
	end

#Test 3: Edit Article draft
	def test03_post_open_blog_edit_article_draft
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)
		
		sleep 2
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_save_draft.click
		
		assert $post_draft_success.exists?
		sleep 2
		edit_draft
		
		sleep 2
		assert $post_new_post.exists?
	end

end
