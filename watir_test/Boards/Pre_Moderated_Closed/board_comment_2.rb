$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables
	
##Test 1: Two Media Inline Comments
	def test01_pre_closed_board_MediaTwoComments
		create_article_1jpeg_wGroup "Article post for comments #{random}"
		commentPopSubmit "Test Comment #{random}"
		commentPopSubmit "Test Comment #{random}"
	end
	
##Test 2: Add 8 media items to an inline post

##Test 3: Navigate to News, click View All link

##Test 4: Delete Note Inline Comment
	def test04_pre_closed_board_DeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentDelete
	end

##Test 5: Delete Article Inline Comment
	def test05_pre_closed_board_DeleteArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_article_to_edit)
		
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentDelete
	end
end