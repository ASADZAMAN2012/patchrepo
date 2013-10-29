$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
##Test 1: Recommend from News Landing Page
	def test01_recommend_news_landing_page
		#create article to recommend on news landing page
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_article_new)

 		$post_article_title.when_present.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
 		
		if $post_now_edit.exists?
			$post_now_edit.fire_event("onclick")
			else $browser.refresh
			$post_now_edit.fire_event("onclick")
		end
		sleep 2
		assert $post_edit_post.exists?
		logout_common
		sleep 30 #let content populate
		login $user_1_email, $master_password
		$browser.goto($patch_news_landing_page)
		wait_for_ajax
		sleep 3
 		$post_recommend_landing.click #clicks on first article listed.  May fail if the new article is slow to populate
		sleep 2
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end
end