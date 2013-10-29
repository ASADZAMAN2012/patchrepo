$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogRecommend < GlobalVariables

##Test 1: Recommend article
	def test01_recommend_article
		login $editor_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)

 		create_article_wGroup "Article for Recommendation #{random}"
		
		assert $post_edit_post.exists?
		sleep 2
		@url = $browser.url
		logout_common
		sleep 30 #let content populate
		login $user_1_email, $master_password
		$browser.goto(@url)
		wait_for_ajax
		sleep 3
		
		$post_recommend_icon.click
		sleep 1
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end
	
	def test02_recommend_note
		login $admin_1_email, $master_password
		$browser.goto($patch_news_post_open)
		
		postNoteSetup("Recommend Note #{random}")
		sleep 4
		$news_page_headline.click
		sleep 2
		@url = $browser.url
		logout_common
		sleep 30 #let content populate
		login $user_1_email, $master_password
		$browser.goto(@url)
		wait_for_ajax
		sleep 3
		
		$post_recommend_icon.click
		sleep 1
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end
end