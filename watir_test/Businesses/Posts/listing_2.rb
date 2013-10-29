$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/listings/[listing name]: view top contributor profile
	def test01_LI2_view_contributor
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		$directory_top.fire_event("onclick")
		
		sleep 5
		assert assert $browser.text.include? "Recent Activity"
	end

#Test 2: patch.com/listings/[listing name]: view upcoming events
	def test02_LI2_view_event
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		$directory_upcoming_events.click
		
		sleep 5
		assert assert $browser.text.include? "All Events"
	end

#Test 3: patch.com/listings/[listing name]: follow listing, uncheck instant updates
	def test03_LI2_follow_uncheck
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_following_unfollow
		
		$directory_review_follow.fire_event("onclick")
		$directory_group_follow_updates_off.click
		$directory_group_follow_ok.click
		
		sleep 5
		assert $browser.text.include? "Following"
	end

#Test 4: patch.com/listings/[listing name]: leave a comment on review
	def test04_LI2_comment_review
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		postBasicReview
		$directory_review_comment.click 
		$directory_review_comment_text.set("Wow! I completely agree because #{random}!")
		$directory_review_post_comment.click
		
		sleep 2
		assert $browser.text.include? "just now"
	end
		
#Test 5: patch.com/listings/[listing name]: repost a review
	def est05_LI2_repost_review
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
	end
	
end
