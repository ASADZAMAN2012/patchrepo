$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: Cancel Delete Note Inline Comment
	def test01_post_open_blog_CancelDeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_note)
		
		commentPopSubmit "Blog Note Comment for cancel delete #{random}"
		sleep 4
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end

##Test 2: Cancel Delete Article Inline Comment
	def test02_post_open_blog_CancelDeleteArticleOneComment
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article)

		commentPopSubmit "Blog Article Comment for cancel delete #{random}"
		sleep 4
		commentCancelDelete
		 
		assert $comment_delete_link.exists?
	end

###Test 3: Flag Note Inline Comment
	def test03_post_open_blog_FlagNoteComment
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_note)
		
		commentPopSubmit "Blog Note Comment for flag #{random}"
		sleep 4
		commentFlag
		
		assert $comment_flag_success.exists?
	end
end 
