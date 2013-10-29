$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables
	
##Test 1: Repost to a group, delete group, add new group
	def test01_post_closed_blog_GroupRepostNote
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
		
 		groupAddRemoveAdd "Repost text #{random}."
 		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 2: Repost to a group, delete group, add new group
	def test02_post_closed_blog_GroupRepostArticle
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_artcle)
		
		groupAddRemoveAdd "Repost text #{random}."
 		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 3: Repost to two groups
	def test03_post_closed_blog_TwoGroupsRepostArticle
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
	
		twoGroupSelect
		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 4: Repost without note text populated
	def test04_post_closed_blog_NoNoteRepostNote
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
		
 		repost "" #No note
 		sleep 3
		
		assert $repost_confirmation.exists?
	end		
end