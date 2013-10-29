$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 1: Login, search and locate a group
	def test01_search_for_group_TC_24407
		login $user_1_email, $master_password 
	
		$browser.goto($patch)
		$search_text_field.when_present.set("the fighting mongooses")
		$search_button.click
		$fighting_mongooses.when_present.click
		sleep 2

		assert $browser.text.include? "The Fighting Mongooses"
	end

#Test 2: Locate group landing page via find more groups link (top right)
	def test02_find_more_top_right_TC_24407
		login $user_1_email, $master_password
		$browser.goto($patch)
		sleep 2
		$group_more_groups_top.fire_event("onclick")
		sleep 2

		assert $browser.text.include? "Featured Groups"
	end

#Test 3: Locate group landing page via find more groups link (bottom)
#	def test03_find_more_bottom_TC_24407
#
#	deprecated verification point in TC_24407. bottom link no longer exists.
#		
#	end
	
#Test 4: Navigate to groups landing page, click patch logo to return home
	def test04_click_patch_logo_TC_24407
		login $user_1_email, $master_password
		sleep 4
		$group_more_groups_top.fire_event("onclick")
		sleep 2
		$location_site_logo.fire_event("onclick")
		sleep 5

		assert $browser.text.include? "Top News"
	end

#Test 5: Login, access manage groups from avatar drop-down
	def test05_groups_from_avatar_TC_24412
		login $user_1_email, $master_password
		
		$logged_in_avatar.when_present.click
		$avatar_manage_groups.when_present.click
		sleep 2

		assert $browser.text.include? "Manage Groups"
	end
end