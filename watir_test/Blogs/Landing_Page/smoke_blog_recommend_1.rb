$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogRecommend < GlobalVariables
##Test 1: Recommend article from Blogs Landing Page
	def test01_recommend_article_blogs_landing
		login $editor_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)

 		create_article_wGroup "Article for Recommend #{random}"
		sleep 3
		assert $post_edit_post.exists?
		sleep 2
		logout_common
		sleep 30 #let content populate
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_landing_page)
		wait_for_ajax
		sleep 3
		
		$post_recommend_landing.click #clicks on first article listed.  May fail if the new article is slow to populate
		sleep 1
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end
end