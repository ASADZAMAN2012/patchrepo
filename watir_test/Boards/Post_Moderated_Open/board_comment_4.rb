$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

#Test 1: Flag Article Inline Comment
	def test01_post_open_board_FlagArticleComment
		login $user_1_email, $master_password
		$browser.goto($patch_boards_post_open_article)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentFlag
		sleep 1
		
		assert $comment_flag_success.exists?
	end
	
##Test 2: Close Flag Note Inline Comment
	def test02_post_open_board_CloseFlagNoteDialog
		login $user_1_email, $master_password
		$browser.goto($patch_boards_post_open_note)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentCloseFlag
		sleep 1
		
		assert $comment_flag_link.exists?
	end
	
##Test 3: Close Flag Article Inline Comment
	def test03_post_open_board_CloseFlagArticleDialog
		login $user_1_email, $master_password
		$browser.goto($patch_boards_post_open_article)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentCloseFlag
		sleep 1
		
		assert $comment_flag_link.exists?
	end
	
##Test 4: Close Flag Media Inline Comment
	def test04_post_open_board_CancelFlagMediaDialog
		login $user_1_email, $master_password
		$browser.goto($patch_boards_post_open_note)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentCloseFlag
		
		assert $comment_flag_link.exists?
	end

##Test 5: Flag Media Inline Comment
	def test05_post_open_board_FlagMediaComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_boards_post_open_note)
		
		sleep 2
		commentFlag
		sleep 1
		
		assert $comment_flag_success.exists?
	end
end	
