$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables
  	
#Test 1: New open art and business group
	def test01_board_OpenArtBusiness
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Arts and Entertainment/Business Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_arts.click
		$category_business.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
	
#Test 2: New open education and family group
	def test02_board_OpenEducationFamily
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Education/Family Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_education.click
		$category_family.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end

#Test 3: New open living and news group
	def test03_board_OpenLivingNews
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Living/News Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_living.click
		$category_news.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end

#Test 4: New open opinion and other group
	def test04_board_OpenOpinionOther
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Opinion/Other Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_opinion.click
		$category_other.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
	
#Test 5: New open politics and sport group
	def test05_board_OpenPoliticsSports
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Politics/Sports Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_politics.click
		$category_sports.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
end