$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables
	
##Test 1: Delete Media Inline Comment
	def test01_pre_open_board_DeleteMediaOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentDelete
	end

##Test 2: Cancel Delete Note Inline Comment
	def test02_pre_open_board_CancelDeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end

##Test 3: Cancel Delete Article Inline Comment
	def test03_pre_open_board_CancelDeleteArticleOneComment
		create_article_woGroup "Article post for cancel delete comment #{random}"
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end
	
##Test 4: Cancel Delete Media Inline Comment
	def test04_pre_open_board_CancelDeleteMediaOneComment
		create_article_1jpeg_wGroup "Article post for calcen delete comment #{random}"
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentCancelDelete
		
		assert $comment_delete_link.exists?
	end

###Test 5: Flag Note Inline Comment
	def test05_pre_open_board_FlagNoteComment
		commentNotePop "Media Description #{random}."
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentFlag
		
		assert $comment_flag_success.exists?
	end

end 