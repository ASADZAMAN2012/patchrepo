$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: Cancel Delete Note Inline Comment
	def test01_post_closed_blog_CancelDeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
		
		commentPopSubmit "Blog Note Comment for cancel delete #{random}"
		sleep 2
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end

##Test 2: Cancel Delete Article Inline Comment
	def test02_post_closed_blog_CancelDeleteArticleOneComment
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)
		
		commentPopSubmit "Blog Article Comment for cancel delete #{random}"
		sleep 4
		commentCancelDelete
		sleep 1
		
		assert $comment_delete_link.exists?
	end

###Test 3: Flag Note Inline Comment
	def test03_post_closed_blog_FlagNoteComment
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
		
		commentPopSubmit "Blog Note Comment for flag #{random}"
		sleep 2
		commentFlag
		
		assert $comment_flag_success.exists?
	end

##Test 4: Delete Note Inline Comment
	def test04_post_closed_blog_DeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)

		sleep 2
		commentPopSubmit "Blog Note Comment for delete #{random}"
		sleep 2
		commentDelete
	end

##Test 5: Delete Article Inline Comment
	def test05_post_closed_blog_DeleteArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)

		sleep 2
		commentPopSubmit "Blog Article Comment for delete #{random}"
		sleep 2
		commentDelete
	end
end