$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
  	
#Test 1: New open art, business, and education group
	def test01_news_OpenArtBusinessEducation
		login $editor_1_email, $master_password
		$browser.goto($patch_new_news_group)
		sleep 5

		$group_name.set("Art/Business/Education Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_arts.click
		$category_business.click
		$category_education.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
	end
	
#Test 2: New open family, living, and news group
	def test02_news_OpenFamilyLivingNews
		login $editor_1_email, $master_password
		$browser.goto($patch_new_news_group)
		sleep 5

		$group_name.set("Family/Living/News Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_family.click
		$category_living.click
		$category_news.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays

	end

#Test 3: New open political, opinion, and other group
	def test03_news_OpenPoliticalOpinionOther
		login $editor_1_email, $master_password
		$browser.goto($patch_new_news_group)
		sleep 5

		$group_name.set("Political/Opinion/Other Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_opinion.click
		$category_other.click
		$category_politics.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
		
#Test 4: User is able to subscribe to email updates

#Test 5: User is able to unsubscribe from email updates

end