$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

##Test 1: Cancel Flag Note Inline Comment
	def test01_post_closed_news_CancelFlagNoteComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_closed_note)
		
		sleep 2
		commentCancelFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 2: Cancel Flag Article Inline Comment
	def test02_post_closed_news_CancelFlagArticleComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_closed_article)
		
		sleep 2
		commentCancelFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 3: Cancel Flag Media Inline Comment
	def test03_post_closed_news_CancelFlagMediaComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_closed_note)
		
		commentCancelFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 4, TC 31109: Login, Navigate to a Blog, locate post with no comments, create a comment

##Test 5, TC 31111: Login, Navigate to a Blog, locate post with more than 3 comments, create a comment

end