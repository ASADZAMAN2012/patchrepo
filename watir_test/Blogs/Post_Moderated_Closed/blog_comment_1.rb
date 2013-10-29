$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: One Note Inline Comment
	def test01_post_closed_blog_NoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)

		commentPopSubmit "Blog Comment #{unique}"
	end

##Test 2: One Article Inline Comment
	def test02_post_closed_blog_ArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)

		commentPopSubmit "Blog Article Comment #{random}"
	end

##Test 3: Two Article Inline Comments
	def test03_post_closed_blog_ArticleTwoComments
		login $user_1_email, $master_password
		sleep 2
		$browser.goto($patch_blogs_post_closed_note)
		
		commentPopSubmit "Note Comment #{random}"
		commentPopSubmit "Note Comment #{random}"
	end	

##Test 4: Two Note Inline Comments
	def test04_post_closed_blog_NoteTwoComments_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)
		
		commentPopSubmit "Article Comment #{random}"
		commentPopSubmit "Article Comment #{random}"
	end
end