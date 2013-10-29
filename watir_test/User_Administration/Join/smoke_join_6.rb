$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 5: User clicks "Show me how" links on Profile pages, verify redirect	
#Manage Profile
	def test_05_10_show_me_how_TC_24406
		login $user_1_email, $master_password		
		navigate_to_profile
		$profile_help_about_posts.when_present.click
		sleep 4
		$browser.window(:title, /Edit your saved drafts/).use do
		  assert $browser.text.include?("Edit your saved drafts")
		end
	end
	
	def test_05_11_show_me_how_TC_24406
		login $user_1_email, $master_password		
		$browser.goto($patch_mongooses_settings) 
		wait_for_ajax
		$profile_help_manage_groups.when_present.click
		sleep 4
		$browser.window(:title, /How to manage your blog group/).use do
		  assert $browser.text.include?("How to manage your blog group")
		end
	end

#Groups 
	def test_05_12_show_me_how_TC_24406
		login $user_1_email, $master_password
		$browser.goto($patch_mongooses_settings)
		wait_for_ajax
		$group_help_edit_group_type.when_present.click
		sleep 4
		$browser.window(:title, /How to manage your blog group/).use do
		  assert $browser.text.include?("Edit your blog photos and icon")
		end
	end  
	
	def test_05_14_show_me_how_TC_24406
		login $user_1_email, $master_password
		$browser.goto($patch_mongooses_settings)
		wait_for_ajax
		$group_help_manage_roles.when_present.click
		sleep 4
		$browser.window(:title, /How to manage your blog group/).use do
		  assert $browser.text.include?("Manage roles and followers")
		end
	end
end	
