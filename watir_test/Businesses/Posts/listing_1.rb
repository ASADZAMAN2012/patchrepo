$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/listings/[listing name]: follow listing
	def test01_L1DLT01_TC_24418
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		if_following_unfollow
		
		$directory_review_follow.when_present.fire_event("onclick")
		
		sleep 5
		assert $directory_group_follow_ok.exists?
		$directory_group_follow_ok.click
	end

#Test 2: patch.com/listings/[listing name]: unfollow listing
	def test02_L1DLT02_TC_24418
		sleep 1
		$browser.goto($patch_login)
		sleep 1
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		$directory_review_follow.click
		
		sleep 2
		assert $browser.text.include? "Follow"
	end
	
#Test 3: patch.com/listings/[listing name]: like on facebook
	def est03_L1DLT03_TC_24418
		#skipping for now, currently unable to interact with the "Like" button
		puts "unable to interact with directory listing facebook 'Like' button. Please verify manually."
	end
	
#Test 4: patch.com/listings/[listing name]: post to twitter
	def est04_L1DLT04_TC_24418
		#skipping for now, currently unable to interact with the "Tweet" button
		puts "unable to interact with directory listing 'Tweet' button. Please verify manually."
	end
	
#Test 5: patch.com/listings/[listing name]: view manager profile
	def test05_L1DLT05_TC_24418
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		$directory_listing_manager.when_present.click
		
		sleep 2
		assert $browser.text.include? "Recent Activity"
	end
end
