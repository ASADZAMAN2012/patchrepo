$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/listings/[listing name]: follow listing, close dialog
	def test01_LI3_follow_close_TC_28368
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		sleep 4
		$directory_review_follow.when_present.fire_event("onclick")
		sleep 4
		$directory_group_follow_close.when_present.click
		sleep 4
		
		assert $browser.text.include? "Following"
	end

#Test 2: patch.com/listings/[listing name]: flag group as inappropriate
	def test02_LI3_flag_group_TC_28368_24406
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		$directory_review_flag.when_present.click
		sleep 2
		$directory_flag_confirm_modal.when_present.click
		sleep 2
		
		assert $browser.text.include? "The group was successfully flagged."
	end
		
#Test 3: patch.com/listings/[listing name]: Flag group, close dialog
	def test03_LI3_flag_group_close_TC_28368
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		$directory_review_flag.when_present.click
		$directory_flag_close_modal.click
		
		
		sleep 4
		assert $browser.text.include? "Directory Group"
	end
	
#Test 4: patch.com/listings/[listing name]: Flag group, cancel
	def test04_LI3_flag_group_cancel_TC_28368
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		$directory_review_flag.click
		$directory_flag_cancel_modal.click
		
		sleep 4
		assert $browser.text.include? "Directory Group"
	end	
	
#Test 5: patch.com/listings/[listing name]: Flag group, review Terms of Use
	def test05_LI3_flag_group_tos_TC_28368
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		
		$directory_review_flag.when_present.click
		$directory_flag_terms_modal.click
		
		sleep 4
		assert $browser.text.include? "Our Terms of Use"
	end
end