$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables
	
##Test 1: One Note Inline Comment
	def test01_pre_closed_board_NoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		commentPopSubmit "Test Comment #{random}"
	end

##Test 2: One Article Inline Comment
	def test02_pre_closed_board_ArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_article_to_edit)
		
		commentPopSubmit "Test Comment #{random}"
	end
	
##Test 3: One Media Inline Comment
	def test03_pre_closed_board_MediaOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		commentPopSubmit "Test Comment #{random}"
	end

##Test 4: Two Article Inline Comments
	def test04_pre_closed_board_ArticleTwoComments
		create_article_woGroup "Article post for comment #{random}"
		commentPopSubmit "Test Comment #{random}"
		commentPopSubmit "Test Comment #{random}"
	end	
	
##Test 5: Two Note Inline Comments
	def test05_pre_closed_board_NoteTwoComments_TC_24319
		commentPopSubmit "Test Comment #{random}"
		commentPopSubmit "Test Comment #{random}"
	end
end