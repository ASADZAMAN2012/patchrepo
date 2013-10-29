$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestPostPageElement < GlobalVariables

##Test 1: Repost note with 251 characters, validate error, remove two characters, post
	def test01_post_closed_blog_251RepostNote
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
		
		repostPopulate251
		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 2: Repost note with 251 characters, validate error, remove two characters, post
	def test02_post_closed_blog_251RepostArticle
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)
		
		repostPopulate251
		sleep 3
		
		assert $repost_confirmation.exists?
	end
end
