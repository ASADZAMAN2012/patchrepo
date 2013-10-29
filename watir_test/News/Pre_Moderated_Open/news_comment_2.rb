$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
	
##Test 1: Two Media Inline Comments
	def test01_pre_open_news_MediaTwoComments
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_note)
		
		commentPopSubmit "Test Comment #{random}"
		commentPopSubmit "Test Comment #{random}"
	end
	
##Test 2: Add 8 media items to an inline post

##Test 3: Navigate to News, click View All link

##Test 4: Delete Note Inline Comment
	def test04_pre_open_news_DeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_note)
		
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentDelete
	end

##Test 5: Delete Article Inline Comment
	def test05_pre_open_news_DeleteArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_article)
	
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		$browser.refresh
		sleep 2
		
		$comment_delete_link.click
		$comment_delete_confirm_modal.click
	end
end