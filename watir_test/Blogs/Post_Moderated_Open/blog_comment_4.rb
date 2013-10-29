$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

#Test 1: Flag Article Inline Comment
	def test01_post_open_blog_FlagArticleComment
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article)
		
		commentPopSubmit "Blog Article Comment for flag #{random}"
		sleep 2
		commentFlag
		sleep 1
		assert $comment_flag_success.exists?
	end
	
##Test 2: Close Flag Note Inline Comment
	def test02_post_open_blog_CloseFlagNoteDialog
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_note)
		
		commentPopSubmit "Blog Note Comment for close flag #{random}"
		sleep 2
		commentCloseFlag
		sleep 1
		assert $comment_flag_link.exists?
	end
	
##Test 3: Close Flag Article Inline Comment
	def test03_post_open_blog_CloseFlagArticleDialog
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article)
		
		commentPopSubmit "Blog Article Comment #{random}"
		sleep 2
		commentCloseFlag
		sleep 1
		assert $comment_flag_link.exists?
	end
end	
