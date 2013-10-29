$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables
#Duplicate tests
# #Test 1: Edit open art, business, and education group
# 	def test01_blog_OpenArtBusinessEducation
# 		login $user_1_email, $master_password
# 		$browser.goto($patch_new_blog_group)
# 
# 		sleep 2
# 		$group_name.when_present.set("Business/Education Group #{random}")
# 		$boards_group_nickname.set("Nickname #{random}")
# 		$group_description.set("Description #{random}")
# 		$boards_arts_ent_image.when_present.fire_event("onclick")
# 		$group_create.click
# 
# 		checkIfIncorrectErrorDisplays
# 
# 		$browser.refresh
# 
# 		$group_follow_group_settings.when_present.click
# 		$group_category_business.click
# 		# if $environment == 'nixon'
# # 		  sleep 1
# # 		  $group_catesgory_education.when_present.click
# # 		end
# 		if $environment == 'staging'
# 		  $group_category_schools.click
# 		end
# 		$group_save_changes.click
# 		#verification?
# 	end
# 
# #Test 2: Edit open family, living, and news group
# 	def test02_blog_OpenFamilyLivingNews
# 		login $user_1_email, $master_password
# 		$browser.goto($patch_new_blog_group)
# 
# 		sleep 2
# 		$group_name.when_present.set("Family/News Group #{random}")
# 		$boards_group_nickname.set("Nickname #{random}")
# 		$group_description.set("Description #{random}")
# 		$boards_arts_ent_image.when_present.fire_event("onclick")
# 		$group_create.click
# 
# 		checkIfIncorrectErrorDisplays
# 
# 		$browser.refresh
# 
# 		$group_follow_group_settings.when_present.click
# 		$group_category_family_span.click
# 		$group_category_news.click
# 		$group_save_changes.when_present.click
# 		sleep 1 
# 		assert $browser.text.include? "group updated successfully"
# 
# 		#edit group type settings
#  		$group_group_type.click 
#  		wait_for_ajax
#  		$group_setting_pre_moderated.click #make blog pre-moderated
#  		sleep 2
#  		$group_settings_save.click
#  		sleep 3
#  		
#  		assert $browser.text.include? "group updated successfully"
#  		
#  		$group_back_group.click
#  		wait_for_ajax
#  		$browser.text.include? "Posts awaiting your approval" 
# 	end

#Test 3: New open political, opinion, and other group
	def test03_blog_OpenPoliticalOpinionOther
		login $user_1_email, $master_password
		$browser.goto($patch_new_blog_group)

		sleep 2
		$group_name.when_present.set("PoliticalNews/Opinion/Other Group #{random}")
		$boards_group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$boards_arts_ent_image.when_present.fire_event("onclick")
		$group_create.click

		checkIfIncorrectErrorDisplays

		$browser.refresh

		$group_follow_group_settings.when_present.click
		$group_category_other.click
		if $environment == 'nixon'
		  $group_category_politics.click
		end
		if $environment == 'staging'
		  $group_category_news.click
		end
		$group_save_changes.click
		#verification?
	end
		
#Test 4: User unsubscribes and subscribes to Boards newsletter
	def test04_blog_UnsubscribeSubscribe_Newsletter
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open)
		
		if $boards_newsletter_subscribe.exists?
		$boards_newsletter_subscribe.click
		sleep 2
		$browser.send_keys :enter
		sleep 2
		$boards_newsletter_unsubscribe.click
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