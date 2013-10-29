$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
		
##Test 1: Repost to a group, delete group, add new group
	def test01_post_open_news_GroupRepostNote
		repostNotePop
		sleep 3
 		groupAddRemoveAdd "Repost text #{random}."
 		sleep 3

		assert $repost_confirmation.exists?
	end

##Test 2: Repost to a group, delete group, add new group
	def test02_post_open_news_GroupRepostArticle
		repostArticlePop
		sleep 3
		groupAddRemoveAdd "Repost text #{random}."
 		sleep 3

		assert $repost_confirmation.exists?
	end

##Test 3: Repost to two groups
	def test03_post_open_news_TwoGroupsRepostArticle
		repostArticlePop
		sleep 3
		twoGroupSelect
		sleep 3

		assert $repost_confirmation.exists?
	end

##Test 4: Repost to two groups
	def test04_post_open_news_TwoGroupsRepostMedia
		repostMediaPop
		sleep 3
		twoGroupSelect
		sleep 3

		assert $repost_confirmation.exists?
	end

##Test 5: Repost without note text populated
	def test05_post_open_news_NoNoteRepostNote
		repostNotePop
		sleep 3
 		repost "" #No note
 		sleep 3

		assert $repost_confirmation.exists?
	end		
end