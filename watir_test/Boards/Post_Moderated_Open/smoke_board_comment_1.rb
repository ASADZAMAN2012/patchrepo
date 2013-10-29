$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

##Test 1: One Note Inline Comment
	def test01_post_open_board_NoteOneComment_TC_24319
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_post_open_note)

		commentPopSubmit "Test Comment #{random}" #verification in method
	end

##Test 2: One Article Inline Comment
	def test02_post_open_board_ArticleOneComment_TC_24319
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_post_open_article)
		
		commentPopSubmit "Test Comment #{random}"
		end
		
# ##Test 3: One Media Inline Comment
# 	def test03_post_open_board_MediaOneComment_TC_24319
# 		login $editor_1_email, $master_password
# 		$browser.goto($patch_boards_post_open_note)
# 		
# 		commentPopSubmit "Test Comment #{random}"
# 	end

##Test 4: Two Article Inline Comments
	def test04_post_open_board_ArticleTwoComments
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_post_open_article)
		
		commentPopSubmit "Test Comment #{random}"
		commentPopSubmit "Test Comment #{random}"
	end	
	
##Test 5: Two Note Inline Comments
	def test05_post_open_board_NoteTwoComments_TC_24319
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_post_open_note)
		
		commentPopSubmit "Test Comment #{random}"
		commentPopSubmit "Test Comment #{random}"
	end
end