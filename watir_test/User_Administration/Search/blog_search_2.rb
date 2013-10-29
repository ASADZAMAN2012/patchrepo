$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 1: Login, access email settings from avatar drop-down
	def test01_login_access_email_TC_24416
		login $user_1_email, $master_password
		
		$logged_in_avatar.click
		$avatar_email_settings.when_present.click
		
		assert $browser.text.include? "Email Settings"
	end

#Test 2: Clear cookies, do not login, search for a member created blog
	def test02_group_search_logged_out_TC_24434
		#no login
		$browser.cookies.clear
		$browser.goto($patch)
		$search_text_field.when_present.set("the fighting mongooses")
		$search_button.click
		$fighting_mongooses.when_present.click
		sleep 2
		
		assert $browser.text.include? "The Fighting Mongooses"
	end
	
#Test 3: Clear cookies, do not login, search for a directory group
	def test03_directory_group_search_logged_out_TC_24434
		#no login
		$browser.cookies.clear
		$browser.goto($patch)
		sleep 4
		$search_text_field.set("Flatiron Lounge")
		$search_button.click
		$flatiron_business.when_present.click
		sleep 2
		
		assert $browser.text.include? "Flatiron Lounge"
	end

#Test 4: Clear cookies, do not login, search for a member
	def test04_member_search_logged_out_TC_24434
		#no login
		$browser.cookies.clear
		$browser.goto($patch)
		$search_text_field.when_present.set("User 70")
		$search_button.click
		$user_70.when_present.click
		sleep 2
		
		assert $browser.text.include? "User 70"
	end

#Test 5: Login, search for a member created group
	def test05_member_search_logged_in_TC_24435
		login $user_1_email, $master_password
		
		$browser.goto($patch)
		$search_text_field.when_present.set("The Fighting Mongooses")
		$search_button.click
		sleep 4
		$fighting_mongooses.click
		sleep 2
		
		assert $browser.text.include? "The Fighting Mongooses"
	end
end