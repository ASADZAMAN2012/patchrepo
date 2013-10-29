$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables
	


##Test 1: One Note Inline Comment
	def test01_pre_closed_blog_NoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		commentPopSubmit "Blog Note Comment #{random}"
	end

##Test 2: One Article Inline Comment
	def test02_pre_closed_blog_ArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_article_to_edit)
		
		commentPopSubmit "Blog Article Comment #{random}"
	end
	
##Test 3: One Media Inline Comment
	def test03_pre_closed_blog_MediaOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		commentPopSubmit "Blog Note Media Comment #{random}"
	end

##Test 4: Two Article Inline Comments
	def test04_pre_closed_blog_ArticleTwoComments
		create_article_woGroup "Article post for comment #{random}"
		commentPopSubmit "Blog Article Comment #{random}"
		commentPopSubmit "Blog Article Comment #{random}"
	end	
end