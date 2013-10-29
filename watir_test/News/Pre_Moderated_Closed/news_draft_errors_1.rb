$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

##Test 1: Populated group, empty title, empty article
	def test01_pre_closed_news_DraftPopG_DraftEmptyTA
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_closed_article_new)
		
		sleep 2
		assert $post_pick_group.exists?
 		repostGroupPop
		sleep 2
		$post_save_draft.fire_event("onclick")
		
		assert $post_draft_error.exists?
	end

##Test 2: Populated group, populated title, empty article
	def test02_pre_closed_news_DraftPopGT_DraftEmptyA
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_closed_article_new)
		sleep 2
		
		assert $post_pick_group.exists?
 		repostGroupPop
 		$post_article_title.set("Article #{random}")
		sleep 2
		$post_save_draft.fire_event("onclick")
		
		assert $post_draft_error.exists?
	end

##Test 3: Populated group, empty title, populated article
	def test03_pre_closed_news_DraftPopGA_DraftEmptyT
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_closed_article_new)
		sleep 2
		
		assert $post_pick_group.exists?
 		repostGroupPop
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		sleep 2
		$post_save_draft.fire_event("onclick")
		
		assert $post_draft_error.exists?
	end

##Test 4: Empty group, populated title, empty article
	def test04_pre_closed_news_DraftPopTA_DraftEmptyG
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_closed_article_new)
		sleep 2
		
		assert $post_article_title.exists?
		$post_article_title.set("Article #{random}")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		sleep 2
		$post_save_draft.fire_event("onclick")
		sleep 2
		
		assert $post_draft_error.exists?
	end
		
##Test 5: Empty group, empty title, empty article
	def test05_pre_closed_news_DraftEmptyGN
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_closed_article_new)
		sleep 2
		
		assert $post_now.exists?
		sleep 2
		$post_save_draft.fire_event("onclick")
		
		assert $post_draft_error.exists?
	end
end