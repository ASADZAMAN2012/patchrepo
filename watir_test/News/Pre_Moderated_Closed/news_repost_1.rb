$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
		
##Test 1: Repost a note
	def test01_pre_closed_news_repostNote_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		sleep 3
 		repost "Repost text #{random}" 
 		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 2: Repost an article
	def test02_pre_closed_news_repostArticle_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_article_to_edit)
		
		sleep 3
		repost "Repost text #{random}" 
		sleep 3

		assert $repost_confirmation.exists?
	end
		
##Test 3: Repost media
	def test03_pre_closed_news_repostMedia_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		sleep 3
		repost "Repost text #{random}" 
		sleep 3

		assert $repost_confirmation.exists?
	end

##Test 4: Repost to a group, delete group, add new group
	def test04_pre_closed_news_GroupRepostMedia
		repostMediaPop
		sleep 3
		groupAddRemoveAdd "Repost text #{random}."
 		sleep 3

		assert $repost_confirmation.exists?
	end
		
##Test 5: Repost to two groups
	def test05_pre_closed_news_TwoGroupsRepostNote
		repostNotePop
		sleep 3
 		twoGroupSelect
 		sleep 3

		assert $repost_confirmation.exists?
	end
end