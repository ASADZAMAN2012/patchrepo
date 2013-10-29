$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogRecommend < GlobalVariables
##Test 1: Recommend Event from Default Landing Page
	def test01_recommend_event_landing_default
		login $user_2_email, $master_password
		$browser.goto($patch_new_event)
		sleep 3
		create_event "Event for Recommend Default Landing #{random}"
		sleep 2
		logout_common
		sleep 15 #lets content populate properly
		login $user_1_email, $master_password
		$browser.goto($patch_event_landing)
		wait_for_ajax
		sleep 3
		
		$post_recommend_icon.click
		sleep 1
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end

##Test 2: Recommend Event from Sorted Landing Page
	def test02_recommend_event_landing_sorted
		login $user_2_email, $master_password
		$browser.goto($patch_new_event)
		create_event "Event for Recommend Sorted Landing #{random}"
		sleep 2
		logout_common
		sleep 15 #lets content populate properly
		login $user_1_email, $master_password
		$browser.goto($patch_event_landing)
		wait_for_ajax
		sleep 3
		$events_family.click
		sleep 2
		assert $events_family_header.exists?

		$post_recommend_icon.click
		sleep 1
		assert $browser.text.include? "Thanks for helping your neighbors find the good stuff."
		$post_recommend_flash_close.click
		sleep 2
		assert !$post_recommend_flash_close.exists?
	end
	
##Test 3: Recommend Event Business note
	def test03_recommend_note
		login $user_2_email, $master_password
		$browser.goto($patch_new_event)
		create_event "Event for Recommend Business #{random}"
		sleep 2
		@url = $browser.url
		logout_common
		sleep 15 #lets content populate properly
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