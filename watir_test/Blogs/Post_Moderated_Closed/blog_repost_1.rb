$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: Repost a note
	def test01_post_closed_blog_repostNote_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)

 		repost "Repost text #{random}" 
 		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 2: Repost an article
	def test02_post_closed_blog_repostArticle_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)

		repost "Repost text #{random}" 
		sleep 3
		
		assert $repost_confirmation.exists?
	end
		
##Test 3: Repost to a group, delete group, add new group
	def test03_post_closed_blog_GroupRepostMedia
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)

		groupAddRemoveAdd "Repost text #{random}."
 		sleep 3
		
		assert $repost_confirmation.exists?
	end
		
##Test 4: Repost to two groups
	def test04_post_closed_blog_TwoGroupsRepostNote
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)

 		twoGroupSelect
 		sleep 3
		
		assert $repost_confirmation.exists?
	end
end