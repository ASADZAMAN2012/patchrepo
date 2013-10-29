$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: New open news group
	def test01_news_OpenNews
		login $editor_1_email, $master_password
		wait_for_ajax
		
		$header_tools_icon.click
		sleep 2
		$header_tools_start_news.click

		sleep 5

		$group_name.set("News Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_news.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
	end

#Test 2: New open opinion group
	def test02_news_OpenOpinion
		login $editor_1_email, $master_password
		$browser.goto($patch_new_news_group)
		checkIfIncorrectErrorDisplays
		
		sleep 5

		$group_name.set("Opinion Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_opinion.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	
	end
	
#Test 3: New open other group
	def test03_news_OpenOther
		login $editor_1_email, $master_password
		$browser.goto($patch_new_news_group)
		sleep 5

		$group_name.set("Other Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_other.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
	end
	
#Test 4: New open politics group
	def test04_news_OpenPolitics
		login $editor_1_email, $master_password
		$browser.goto($patch_new_news_group)
		sleep 5

		$group_name.set("Politics Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_politics.click
		sleep 2
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
	end

#Test 5: New open sports group
	def test05_news_OpenSports
		login $editor_1_email, $master_password
		$browser.goto($patch_new_news_group)
		sleep 5

		$group_name.set("Sports Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_sports.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
	end
end
