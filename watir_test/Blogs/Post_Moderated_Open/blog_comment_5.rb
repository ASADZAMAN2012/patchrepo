$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: Cancel Flag Note Inline Comment
	def test01_post_open_blog_CancelFlagNoteComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_note)
		
		sleep 4
		commentCancelFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 2: Cancel Flag Article Inline Comment
	def test02_post_open_blog_CancelFlagArticleComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article)
		
		sleep 4
		commentCancelFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 4, TC 31109: Login, Navigate to a Blog, locate post with no comments, create a comment

##Test 5, TC 31111: Login, Navigate to a Blog, locate post with more than 3 comments, create a comment

end