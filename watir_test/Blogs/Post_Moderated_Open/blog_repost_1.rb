$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables


		
##Test 1: Repost a note
	def test01_post_open_blog_repostNote_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_note)
		
		sleep 3
 		repost "Repost text #{random}" 
 		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 2: Repost an article
	def test02_post_open_blog_repostArticle_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article)
		
		sleep 3
		repost "Repost text #{random}" 
		sleep 3
		
		assert $repost_confirmation.exists?
	end
		
##Test 3: Repost media
	def test03_post_open_blog_repostMedia_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_note)
		
		sleep 3
		repost "Repost text #{random}" 
		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 4: Repost to a group, delete group, add new group
	def test04_post_open_blog_GroupRepostMedia
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_note)
		
		groupAddRemoveAdd "Repost text #{random}."
 		sleep 3
		
		assert $repost_confirmation.exists?
	end
		
##Test 5: Repost to two groups
	def test05_post_open_blog_TwoGroupsRepostNote
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_note)
		
 		twoGroupSelect
 		sleep 3
		
		assert $repost_confirmation.exists?
	end
end