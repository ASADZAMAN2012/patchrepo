$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

##Test 1: Delete Media Inline Comment
	def test01_post_closed_news_DeleteMediaOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_closed_note)
		
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentDelete
	end

##Test 2: Cancel Delete Note Inline Comment
	def test02_post_closed_news_CancelDeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_closed_note)
		
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end

##Test 3: Cancel Delete Article Inline Comment
	def test03_post_closed_news_CancelDeleteArticleOneComment
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_closed_article)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentCancelDelete
		 
		assert $comment_delete_link.exists?
	end
	
##Test 4: Cancel Delete Media Inline Comment
	def test04_post_closed_news_CancelDeleteMediaOneComment
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_closed_article)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end

###Test 5: Flag Note Inline Comment
	def test05_post_closed_news_FlagNoteComment
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_closed_note)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentFlag
		sleep 1
		assert $comment_flag_success.exists?
	end

end 