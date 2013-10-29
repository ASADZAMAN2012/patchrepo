$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

# #Test 1: New open art group
# 	def est01_news_OpenArt_TC_24397
# 		login $editor_1_email, $master_password
# 		
# 		$browser.goto($patch_new_news_group)
# 	
# 		$group_name.set("Arts and Entertainment Group #{random}")
# 	    $boards_group_nickname.set("Nickname #{random}")
# 		$group_description.set("Description #{random}")
# 		$group_category_arts.click
# 		$boards_arts_ent_image.when_present.fire_event("onclick")
# 		$group_create.click
# 		
# 		checkIfIncorrectErrorDisplays
# 		#flag
# 		$post_flag_icon.click
#     	sleep 2 
#     	assert $browser.text.include? "Flag this content?"
#     
#     	$post_flag_submit.click
#     	sleep 2
#     	assert $browser.text.include? "There doesn't seem to be anything at this address"
#     	sleep 3
# 		$group_basic_information_link.click
# 	end
# 	
# #Test 3: New open other group
# 	def test03_news_OpenEducation_TC_24397
# 		@group_name = "Other Group #{random}"
# 		login $editor_1_email, $master_password
# 		
# 		$browser.goto($patch_new_news_group)
# 		
# 		$group_name.set(@group_name)
# 		$boards_group_nickname.set("Nickname #{random}")
# 		$group_description.set("Description #{random}")
# 		$group_category_other.click
# 		$boards_arts_ent_image.when_present.fire_event("onclick")
# 		$group_create.click
# 		
# 		checkIfIncorrectErrorDisplays
# 		sleep 3
# 		$group_basic_information_link.click
# 		
# 		#Verify on Settings page
# 		sleep 3
# 		assert $group_name.value.include? @group_name
# 	end
	
#Test 4: New open family group
	def test04_news_OpenFamily_TC_24397
		login $admin_1_email, $master_password

		$browser.goto($patch_new_news_group)

		$group_name.set("Family Group #{random}")
		$boards_group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$group_category_family_span.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$group_create.click
		
		checkIfIncorrectErrorDisplays
		#flag
		$post_flag_icon.click
    	sleep 2 
    	assert $browser.text.include? "Flag this content?"
    
    	$post_flag_submit.click
    	sleep 2
    	assert $browser.text.include? "There doesn't seem to be anything at this address"
	end
	
#Test 5: New open living group
	def test05_news_OpenLiving_TC_24397
		login $editor_1_email, $master_password
		wait_for_ajax
		
		$header_tools_icon.click
		sleep 2
		$header_tools_start_news.click

		$group_name.set("Living Group #{random}")
		$boards_group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$group_category_living.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$group_create.click
		
		checkIfIncorrectErrorDisplays	
		
		#edit group type settings
		wait_for_ajax
 		sleep 2
 		$group_basic_information_link.click
 		$group_group_type.click 
 		wait_for_ajax
 		$group_setting_pre_moderated.click #make blog pre-moderated
 		sleep 2
 		$group_settings_save.click
 		sleep 3
 		
 		assert $browser.text.include? "group updated successfully"
 		
 		$group_back_group.click
 		wait_for_ajax
 		$browser.text.include? "Posts awaiting your approval"
	end
end