$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

##Test 1: Repost note with 251 characters, validate error, remove two characters, post
	def test01_pre_closed_board_251RepostNote
		repostNotePop
		sleep 3
		repostPopulate251
		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 2: Repost note with 251 characters, validate error, remove two characters, post
	def test02_pre_closed_board_251RepostArticle
		repostArticlePop
		sleep 3
		repostPopulate251
		sleep 3
		 
		assert $repost_confirmation.exists?
	end
		
##Test 3: Repost note with 251 characters, validate error, remove two characters, post
	def test03_pre_closed_board_251RepostMedia
		repostMediaPop
		sleep 3
		repostPopulate251
		sleep 3
		 
		assert $repost_confirmation.exists?
	end
end
