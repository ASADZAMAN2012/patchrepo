$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: Featured listing, click left arrow
	def test01_D1FLT01_TC_24317
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_scroll_left.when_present.click
		$directory_scroll_left.click
		$directory_scroll_left.click
		$directory_scroll_left.click
	end
	
#Test 2: Featured listing, click right arrow
	def test02_D1FLT02_TC_24317
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_scroll_left.click
		$directory_scroll_left.click
		$directory_scroll_left.click
		$directory_scroll_left.click
	end
	
#Test 3: Featured listing, navigate using carousel dots
	def test03_D1FLT03_TC_24317
		sleep 2
		$browser.goto($patch_login)
		sleep 2
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		sleep 2
		$directory_button_2.when_present.click
		$directory_button_3.click
		$directory_button_4.click
	end
	
#Test 4: Featured listing, click group name
	def test04_D1FLT04_TC_24428_24316
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_title.fire_event("onclick")
		
		assert $directory_business.exists?		
	end
end