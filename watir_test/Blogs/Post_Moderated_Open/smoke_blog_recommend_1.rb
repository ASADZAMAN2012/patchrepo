$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogRecommend < GlobalVariables
#Test 1: Recommend article from specific blog landing page	
	def test01_recommend_article_blogs_landing
		login $editor_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)

 		$post_article_title.when_present.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
 		
		if $post_now_edit.exists?
			$post_now_edit.fire_event("onclick")
			else $browser.refresh
			$post_now_edit.fire_event("onclick")
		end
		sleep 3
		assert $post_edit_post.exists?
		sleep 2
		logout_common
		sleep 30 #let content populate 
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open)
		wait_for_ajax
		sleep 3
		
		$post_recommend_landing.click #clicks on first article listed.  May fail if the new article is slow to populate
		sleep 2
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end
	
##Test 2: Recommend article
	def test02_recommend_article
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_post_open_article_new)

 		$post_article_title.when_present.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
 		
		if $post_now_edit.exists?
			$post_now_edit.fire_event("onclick")
			else $browser.refresh
			$post_now_edit.fire_event("onclick")
		end
		sleep 3
		assert $post_edit_post.exists?
		sleep 2
		@url = $browser.url
		logout_common
		sleep 30 #let article populate 
		login $user_1_email, $master_password
		$browser.goto(@url)
		wait_for_ajax
		sleep 3
		
		$post_recommend_icon.click
		sleep 2
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end

##Test 3: Recommend note	
	def test03_recommend_note
		login $admin_1_email, $master_password
		$browser.goto($patch_blogs_post_open)
		
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
		sleep 2
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end
end