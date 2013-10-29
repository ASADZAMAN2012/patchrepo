$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/directory: Latest reviews, click review
	def test01_D2FLT01_TC_24432
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_review.click
		
		sleep 2
		assert $browser.text.include? "Reviewed"
	end
		
#Test 2: patch.com/directory: Latest reviews, click leave a comment link
	def test02_D2FLT02_TC_24432
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_comment.click
		$directory_comment_body.click
		$directory_comment_body.set("New Review Comment Test#{random}.")
		$directory_comment_post.click
		sleep 2
		
		assert $browser.text.include? "New Review Comment"
	end
	
#Test 3: patch.com/directory: Latest reviews, repost
	def test03_D2FLT03_TC_24432
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_repost.click
		$repost_group_select.click
		$report_group_choose.click
		$repost_text.set("Repost Comment #{random}.")
		$repost_button.click
		sleep 2
		
		assert $browser.text.include? "Reposted"
	end
	
#Test 4: patch.com/directory: Latest reviews, click group
	def test04_D2FLT04_TC_24432
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_business.click
		sleep 2
		
		assert $browser.text.include? "Directory Group"
	end		
		
#Test 5: patch.com/directory: Latest reviews, click user name
	def test05_D2FLT05_TC_24393
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_user.click
		sleep 2
		
		assert $browser.text.include? "Manager Of"
	end	
end