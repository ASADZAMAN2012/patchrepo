$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 5: User clicks "Show me how" links on Profile pages, verify redirect	
#Manage Profile
	def test_05_5_show_me_how_TC_24406
		login $user_1_email, $master_password		
		navigate_to_profile
		$profile_help_edit_profile.when_present.click
		sleep 4
		$browser.window(:title, /Edit your profile/).use do
		  assert $browser.text.include?("Edit your profile")
		end
	end
	
	def test_05_6_show_me_how_TC_24406
		login $user_1_email, $master_password		
		navigate_to_profile
		$profile_help_edit_account.when_present.click
		sleep 4
		$browser.window(:title, /Edit your password and account details/).use do
		  assert $browser.text.include?("Edit your password and account details")
		end
	end
	
	def test_05_7_show_me_how_TC_24406
		login $user_1_email, $master_password		
		navigate_to_profile
		$profile_help_change_password.when_present.click
		sleep 4
		$browser.window(:title, /Edit your password and account details/).use do
		  assert $browser.text.include?("Edit your password and account details")
		end
	end
	
	def test_05_8_show_me_how_TC_24406
		login $user_1_email, $master_password		
		navigate_to_profile
		$profile_help_about_updates.when_present.click
		sleep 4
		$browser.window(:title, /Edit your newsletter and email settings/).use do
		  assert $browser.text.include?("Edit your newsletter and email settings")
		end
	end
	
	def test_05_9_show_me_how_TC_24406
		login $user_1_email, $master_password		
		navigate_to_profile
		$profile_help_email_settings.when_present.click
		sleep 4
		$browser.window(:title, /Edit your newsletter and email settings/).use do
		  assert $browser.text.include?("Email Settings")
		end
	end
end	
