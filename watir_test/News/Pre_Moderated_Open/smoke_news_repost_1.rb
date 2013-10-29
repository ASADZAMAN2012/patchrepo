$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
		
##Test 1: Repost a note
	def est01_pre_open_news_repostNote_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_note)

 		repost "Repost text #{random}" 

		sleep 6
		if $environment == 'nixon'
		  assert !($repost_button.exists?)
		else
		  assert !($repost_button.visible?)
		end
	end

##Test 2: Repost an article
	def est02_pre_open_news_repostArticle_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open_article)

		repost "Repost text #{random}" 
		sleep 6
		if $environment == 'nixon'
		  assert !($repost_button.exists?)
		else
		  assert !($repost_button.visible?)
		end
	end 

##Test 4: Repost to a group, delete group, add new group
	def est04_pre_open_news_GroupRepostMedia
		login $user_1_email, $master_password
		$browser.goto($patch_news_pre_open_note)
		
		groupAddRemoveAdd "Repost text #{random}."
		sleep 6
		if $environment == 'nixon'
		  assert !($repost_button.exists?)
		else
		  assert !($repost_button.visible?)
		end
	end
		
##Test 5: Repost to two groups  #flakey and needs to be rewritten
	def est05_pre_open_news_TwoGroupsRepostNote
		login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_note)
		
 		twoGroupSelect
        sleep 5
		if $environment == 'nixon'
		  assert !($repost_button.exists?)
		else
		  assert !($repost_button.visible?)
		end
	end
end