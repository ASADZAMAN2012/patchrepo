$LOAD_PATH << './config/watir_lib'  
require 'watir/test's

class TestBlogPageElement < GlobalVariables
	
##Test 1: Two Media Inline Comments
	def test01_pre_open_blog_MediaTwoComments
		create_article_1jpeg_wGroup "Article post from comments #{random}"
		commentPopSubmit "Blog Article Comment #{random}"
		commentPopSubmit "Blog Article Comment #{random}"
	end
	
##Test 2: Add 8 media items to an inline post

##Test 3: Navigate to News, click View All link

##Test 4: Delete Note Inline Comment
	def test04_DeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		sleep 4
		commentPopSubmit "Blog Note Comment for delete #{random}"
		sleep 4
		commentDelete
	end

##Test 5: Delete Article Inline Comment
	def test05_pre_open_blog_DeleteArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_article_to_edit)
		
		sleep 4
		commentPopSubmit "Blog Article Comment for delete #{random}"
		sleep 4
		commentDelete
	end
end