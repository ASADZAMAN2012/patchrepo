$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

##Test 1: Cancel Flag Note Inline Comment
	def test01_pre_closed_board_CancelFlagNoteComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		sleep 4
		commentCancelFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 2: Cancel Flag Article Inline Comment
	def test02_pre_closed_board_CancelFlagArticleComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_article_to_edit)
		
		sleep 4
		commentCancelFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 3: Cancel Flag Media Inline Comment
	def test03_pre_closed_board_CancelFlagMediaComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		commentCancelFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 4, TC 31109: Login, Navigate to a Blog, locate post with no comments, create a comment

##Test 5, TC 31111: Login, Navigate to a Blog, locate post with more than 3 comments, create a comment

end