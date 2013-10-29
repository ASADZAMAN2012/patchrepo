$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables



##Test 1: Repost without note text populated
	def test01_pre_open_blog_NoNoteRepostArticle
		repostArticlePop
		sleep 3
		repost "" #No note
		sleep 3
		
		assert $repost_confirmation.exists?
	end		

##Test 2: Repost without note text populated
	def test01_pre_open_blog_NoNoteRepostMedia
		repostMediaPop
		sleep 3
		repost "" #No note
		sleep 3
		
		assert $repost_confirmation.exists?
	end
	
##Test 3: Repost note with exactly 250 characters
	def test03_pre_open_blog_250RepostNote
		repostNotePop
		sleep 3
 		repostPopulate250
 		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 4: Repost note with exactly 250 characters
	def test04_pre_open_blog_250RepostArticle
		repostArticlePop
		sleep 3
		repostPopulate250
		sleep 3
		
		assert $repost_confirmation.exists?
	end
		
##Test 5: Repost note with exactly 250 characters
	def test05_pre_open_blog_250RepostMedia
		repostMediaPop
		sleep 3
		repostPopulate250
		sleep 3
		
		assert $repost_confirmation.exists?
	end
end