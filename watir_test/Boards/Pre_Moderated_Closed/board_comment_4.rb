$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

#Test 1: Flag Article Inline Comment
	def test01_pre_closed_board_FlagArticleComment
		create_article_woGroup "Article post for flag comment #{random}"
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentFlag
		
		assert $comment_flag_success.exists?
	end
	
##Test 2: Close Flag Note Inline Comment
	def test02_pre_closed_board_CloseFlagNoteDialog
		commentNotePop "Media Description #{random}."s
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentCloseFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 3: Close Flag Article Inline Comment
	def test03_pre_closed_board_CloseFlagArticleDialog
		create_article_woGroup "Article post for close flag comment #{random}"
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentCloseFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 4: Close Flag Media Inline Comment
	def test04_pre_closed_board_CancelFlagMediaDialog
		create_article_1jpeg_wGroup "Article for close flag comment #{random}"
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentCloseFlag
		 
		assert $comment_flag_link.exists?
	end

##Test 5: Flag Media Inline Comment
	def test05_pre_closed_board_FlagMediaComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		sleep 4
		commentFlag
		
		assert $comment_flag_success.exists?
	end
end	
