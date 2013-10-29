$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestPostPageElement < GlobalVariables

##Test 1: Repost without note text populated
	def test01_post_closed_blog_NoNoteRepostArticle
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)
		
		repost "" #No note
		sleep 3
		
		assert $repost_confirmation.exists?
	end		

##Test 2: Repost note with exactly 250 characters
	def test02_post_closed_blog_250RepostNote
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
		
 		repostPopulate250
 		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 3: Repost note with exactly 250 characters
	def test03_post_closed_blog_250RepostArticle
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)
		
		repostPopulate250
		sleep 3

		assert $repost_confirmation.exists?
	end
end