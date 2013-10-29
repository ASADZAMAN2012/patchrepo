$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

#Test 1: Edit Group Basic Information

#Test 2: Edit Group Icon

#Test 3: Edit Group Type
	def test01_board_EditGroupType
		login $editor_1_email, $master_password
		wait_for_ajax
		#create new blog
		$header_tools_icon.click
		sleep 2
		$header_tools_start_board.click
	
		$group_name.set("Art/Business Group #{random}")
		$boards_group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$group_category_arts.when_present.click
		$group_category_business.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$group_create.click
		
		checkIfIncorrectErrorDisplays
		#edit group type settings
		wait_for_ajax
 		$group_basic_information_link.click
 		$group_group_type.click 
 		wait_for_ajax
 		$group_setting_pre_moderated.click #make blog pre-moderated
 		sleep 2
 		$group_settings_save.click
 		sleep 3
 		
 		assert $browser.text.include? "group updated successfully"
 		
 		$group_back_group.click
 		#wait_for_ajax
 		sleep 4
 		$browser.text.include? "Posts awaiting your approval" 
	end
#Test 4: Make a follower a contributor

#Test 5: Make a follower a manager

end