$LOAD_PATH << './config/watir_lib'  
require 'watir/test' 

class TestBoardPageElement < GlobalVariables

#Test 1: New open art group
	def test01_board_OpenArt_TC_24397
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Arts and Entertainment Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_arts.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
	
#Test 2: New open business group
	def test02_board_OpenBusiness_TC_24397
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Business Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_business.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
	
#Test 3: New open education group
	def test03_board_OpenEducation_TC_24397
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Education Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_education.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
	
#Test 4: New open family group
	def test04_board_OpenFamily_TC_24397
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Family Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_family.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
	
#Test 5: New open living group
	def test05_board_OpenLiving_TC_24397
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Living Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_living.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
end