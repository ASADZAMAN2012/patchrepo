$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: Flag Article Inline Comment
	def test01_pre_open_news_FlagArticleComment
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_article)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentFlag
		sleep 1
		
		assert $comment_flag_success.exists?
	end
	
##Test 2: Close Flag Note Inline Comment
	def test02_pre_open_news_CloseFlagNoteDialog
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_note)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentCloseFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 3: Close Flag Article Inline Comment
	def test03_pre_open_news_CloseFlagArticleDialog
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_article)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentCloseFlag
		sleep 1
		 
		assert $comment_flag_link.exists?
	end
	
##Test 4: Close Flag Media Inline Comment
	def test04_pre_open_news_CancelFlagMediaDialog
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_note)
		sleep 2
		commentPopSubmit "Test Comment #{random}"
		sleep 2
		commentCloseFlag
		sleep 1
		
		assert $comment_flag_link.exists?
	end

##Test 5: Flag Media Inline Comment
	def test05_pre_open_news_FlagMediaComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_note)
		
		sleep 2
		commentFlag
		sleep 1
		
		assert $comment_flag_success.exists?
	end
end	
