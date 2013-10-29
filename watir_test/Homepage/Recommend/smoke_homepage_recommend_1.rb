$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogRecommend < GlobalVariables
##Test 1: Recommend on Features News Homepage
	def test01_RecommendOnFeaturedHomepage
		#data creation needed
		
		login $user_1_email, $master_password
		wait_for_ajax
		
		$post_recommend_homepage_feed.click
		sleep 2
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end

##Test 2: Recommend Event from Default Landing Page
	def test02_RecommendOnBoardHomepage
		#data creation needed
		
		login $user_1_email, $master_password
		wait_for_ajax

		$post_recommend_hp_boards.click
		sleep 2
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end
end