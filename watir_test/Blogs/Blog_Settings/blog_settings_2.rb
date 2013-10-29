$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

#Test 1: New open news group
	def test01_blog_OpenNews
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("News Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_news.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
	end

#Test 2: New open opinion group
	def test02_blog_OpenOpinion
		login $user_1_email, $master_password
		
		checkIfIncorrectErrorDisplays
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Opinion Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_opinion.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	
	end
	
#Test 3: New open other group
	def test03_blog_OpenOther
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Other Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_other.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
	end
	
#Test 4: New open politics group
	def test04_blog_OpenPolitics
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
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
	def test05_blog_OpenSports
		login $user_1_email, $master_password
		
		sleep 5

		$open_group.fire_event("onclick")
		$group_name.set("Sports Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_sports.click
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$create_group.click
		
		checkIfIncorrectErrorDisplays
	end
end
