$LOAD_PATH << './config/watir_lib'  
require 'watir/test'
class TestBoardPageElement < GlobalVariables

##Test 1: Empty group, empty title, populated article
	def test01_pre_open_boards_DraftPopA_DraftEmptyGT
		login $user_1_email, $master_password
		$browser.goto($patch_boards_pre_open_article_new)
		sleep 2
		
		assert $post_article_title.exists?
 		$post_article_title.set("")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		sleep 2
		$post_save_draft.fire_event("onclick")
		
		assert $post_draft_error.exists?
	end
		
##Test 2: Populated group, populated title, populated article
	def test02_pre_open_boards_DraftPopA_DraftEmptyGT
		login $user_1_email, $master_password
		$browser.goto($patch_boards_pre_open_article_new)
		
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		sleep 2
		$post_save_draft.fire_event("onclick")
		
		sleep 2
		assert $post_draft_success.exists?
	end
end