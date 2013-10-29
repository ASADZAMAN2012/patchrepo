$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables
		
##Test 1: Delete Media Inline Comment
	def test01_pre_closed_blog_DeleteMediaOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		sleep 4
		commentPopSubmit "Blog Note Comment for delete #{random}"
		sleep 4
		commentDelete
	end

##Test 2: Cancel Delete Note Inline Comment
	def test02_pre_closed_blog_CancelDeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		sleep 4
		commentPopSubmit "Blog Note Comment for delete #{random}"
		sleep 4
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end

##Test 3: Cancel Delete Article Inline Comment
	def test03_pre_closed_blog_CancelDeleteArticleOneComment
		create_article_woGroup "Article post for cancel delete comment #{random}"
		sleep 4
		commentPopSubmit "Blog Article Comment for cancel delete #{random}"
		sleep 4
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end
	
##Test 4: Cancel Delete Media Inline Comment
	def test04_pre_closed_blog_CancelDeleteMediaOneComment
		create_article_1jpeg_wGroup "Article for delete media comment #{random}"
		sleep 4
		commentPopSubmit "Blog Article Comment for cancel delete #{random}"
		sleep 4
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end

###Test 5: Flag Note Inline Comment
	def test05_pre_closed_blog_FlagNoteComment
		commentNotePop "Media Description #{random}."
		sleep 4
		commentPopSubmit "Blog Note Comment for flag #{random}"
		sleep 4
		commentFlag
		
		assert $comment_flag_success.exists?
	end
end 