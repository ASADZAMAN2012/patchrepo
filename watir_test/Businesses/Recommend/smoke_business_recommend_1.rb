$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogRecommend < GlobalVariables
##Test 1: Recommend not from Specific business landing page
	def test01_recommend_note_landing_page
		@msg = "Note for Recommending #{random}"
		$browser.goto($patch_login)
		login $user_2_email, $master_password
		$browser.goto($patch_directory_listing)
		wait_for_ajax
		sleep 4
		$post_activate_note.when_present.fire_event("onclick")
		sleep 3
		$business_review_note_button.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$business_review_text.set(@msg)

		sleep 2
		$business_review_post.fire_event("onclick")

		sleep 5
		assert $browser.text.include? "#{@msg}"

		logout_common
		sleep 30 #let data populate
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		wait_for_ajax
		sleep 3
		
		$post_recommend_icon.click
		sleep 1
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end
##Test 2: Recommend Business note from post show page
	def test02_recommend_note
		@msg = "Note for Recommending #{random}"
		$browser.goto($patch_login)
		login $user_2_email, $master_password
		$browser.goto($patch_directory_listing)
		wait_for_ajax
		sleep 4
		$post_activate_note.when_present.fire_event("onclick")
		sleep 3
		$business_review_note_button.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$business_review_text.set(@msg)

		sleep 2
		$business_review_post.fire_event("onclick")

		sleep 5
		assert $browser.text.include? "#{@msg}"
		
		$news_page_headline.click
		sleep 2
		@url = $browser.url
		logout_common
		sleep 30 #let data populate
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