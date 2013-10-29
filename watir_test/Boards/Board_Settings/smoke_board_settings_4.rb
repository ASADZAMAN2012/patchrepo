$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

#Test 1: New open art, business, and education group
	def test01_board_OpenArtBusiness
		login $editor_1_email, $master_password
		wait_for_ajax
		
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
	end
	
# #Test 2: New open family, living, and news group
# 	def test02_board_OpenFamilyLivingNews
# 		login $editor_1_email, $master_password
# 		$browser.goto($patch_new_board_group)
# 
# 		$group_name.set("Family/Living/News Group #{random}")
# 		$boards_group_nickname.set("Nickname #{random}")
# 		$group_description.set("Description #{random}")
# 		$group_category_family_span.when_present.click
# 		$group_category_living.when_present.click
# 		$group_category_news.when_present.click
# 		$boards_arts_ent_image.when_present.fire_event("onclick")
# 		$group_create.click
# 		
# 		checkIfIncorrectErrorDisplays
# # 		wait_for_ajax
# # 		#Verify default settings
# # 		group_basic_information_link.click
# # 		$group_group_type.click 
# # 		wait_for_ajax
# 	end
# 
# #Test 3: New open political, opinion, and other group
# 	def test03_board_OpenOpinionOther
# 		login $editor_1_email, $master_password
# 		$browser.goto($patch_new_board_group)
# 
# 		$group_name.set("Political/Opinion/Other Group #{random}")
# 		$boards_group_nickname.set("Nickname #{random}")
# 		$group_description.set("Description #{random}")
# 		$group_category_board_opinion.when_present.click
# 		$group_category_other.click
# 		$boards_arts_ent_image.when_present.fire_event("onclick")
# 		$group_create.click
# 		
# 		checkIfIncorrectErrorDisplays
# 	end
	
#Test 4: User unsubscribes and subscribes to Boards newsletter
	def test04_board_UnsubscribeSubscribe_Newsletter
		login $user_1_email, $master_password
		$browser.goto($patch_boards_sports_group)
		sleep 3
		if $boards_newsletter_subscribe.exists?
		$boards_newsletter_subscribe.click
		sleep 2
		$browser.send_keys :enter
		sleep 2
		$boards_newsletter_unsubscribe.click
		sleep 2
		$boards_newsletter_subscribe.click
		sleep 2
		$browser.send_keys :enter
		else 
		$boards_newsletter_unsubscribe.click
		sleep 2
		$boards_newsletter_subscribe.click
		sleep 2
		$browser.send_keys :enter
		end
		
		sleep 4
		$boards_newsletter_unsubscribe.exists?
	end
end