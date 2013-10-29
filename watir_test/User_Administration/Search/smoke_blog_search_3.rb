$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 1: Login, search for a directory group
	def test01_directory_group_search_logged_in_TC_24435
		login $user_1_email, $master_password 
#		$browser.cookies.clear
		$browser.goto($patch)
		sleep 4
		$search_text_field.set("Flatiron Lounge")
		$search_button.click
		$search_result_flatiron_business.when_present.click
		sleep 2
		
		assert $browser.text.include? "Flatiron Lounge"
	end
	
#Test 2: Login, search for a member
	def test02_member_search_logged_in_TC_24435
		login $user_1_email, $master_password 
#		$browser.cookies.clear
		$browser.goto($patch)
		sleep 4
		$search_text_field.set("Keelawn")
		$search_button.click
		$search_result_keelawn.when_present.click
		sleep 2
		
		assert $browser.text.include? "eelawn"
	end
	
#Test 3, TC 29825: Login, verify User is able to click get updates link for a blog not being followed

#Test 4, TC 29826: Login, verify User is able to click get updates link does not display for a blog being followed

#Test 5, TC 29829: Log out, Join modal displays when anonymous User clicks get updates link

end