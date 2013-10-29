$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestPostPageElement < GlobalVariables


	
#Test 1: Post Article draft
	def test01_pre_closed_blog_publish_article_draft_TC_24300
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_pre_closed_article_new)
		
		create_article_draft "Article for Draft #{random}"
		post_draft
	end

#Test 2: Edit Article draft
	def test02_pre_closed_blog_edit_article_draft
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_pre_closed_article_new)
		
		create_article_draft "Article for Draft #{random}"
		sleep 2
		edit_draft
		
		sleep 2
		assert $browser.text.include? "submitted this for approval"
	end

#Test 3: Delete Article draft
	def test04_pre_closed_blog_publish_article_draft_TC_24309
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_pre_closed_article_new)
		
		create_article_draft "Article for Draft #{random}"
		delete_draft
	end	

#Test 4: Cancel deleting Article draft
	def test04_pre_closed_blog_cancel_article_draft
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_pre_closed_article_new)
		
		create_article_draft "Article for Draft #{random}"
		cancel_delete
	end

#Test 5: Close delete Article draft dialog
	def test05_pre_closed_blog_close_article_draft
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_pre_closed_article_new)
		
		create_article_draft "Article for Draft #{random}"
		close_delete
	end

end