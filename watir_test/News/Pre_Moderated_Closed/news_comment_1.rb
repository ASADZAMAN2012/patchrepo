$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

##Test 1: One Note Inline Comment
	def test01_pre_closed_news_NoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_closed_note)
		
		commentPopSubmit "Test Comment #{random}"
	end

##Test 2: One Article Inline Comment
	def test02_pre_closed_news_ArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_article)
		
		commentPopSubmit "Test Comment #{random}"
	end
	
##Test 3: One Media Inline Comment
	def test03_pre_closed_news_MediaOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_closed_note)
		
		commentPopSubmit "Test Comment #{random}"
	end

##Test 4: Two Article Inline Comments
	def test04_pre_closed_news_ArticleTwoComments
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_article)
		
		commentPopSubmit "Test Comment #{random}"
	end	
	
##Test 5: Two Note Inline Comments
	def test05_pre_closed_news_NoteTwoComments_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_closed_note)
		
		commentPopSubmit "Test Comment #{random}"
	end
end