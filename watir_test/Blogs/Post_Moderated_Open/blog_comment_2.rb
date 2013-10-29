$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: Add 8 media items to an inline post

##Test 2: Navigate to News, click View All link

##Test 4: Delete Note Inline Comment
	def test04_post_open_blog_DeleteNoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_note)
		
		sleep 2
		commentPopSubmit "Blog Note Comment for delete #{random}"
		sleep 2
		commentDelete
	end

##Test 5: Delete Article Inline Comment
	def test05_post_open_blog_DeleteArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article)
		
		sleep 2
		commentPopSubmit "Blog Article Comment for delete #{random}"
		sleep 2
		commentDelete
	end
end