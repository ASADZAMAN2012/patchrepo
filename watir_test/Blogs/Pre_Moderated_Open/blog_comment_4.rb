$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

#Test 1: Flag Article Inline Comment
	def test01_pre_open_blog_FlagArticleComment
		create_article_woGroup "Article post for flag comment #{random}"
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentFlag
		
		assert $comment_flag_success.exists?
	end
	
##Test 2: Close Flag Note Inline Comment
	def test02_pre_open_blog_CloseFlagNoteDialog
		commentNotePop "Media Description #{random}."
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentCloseFlag
		
		assert $comment_flag_link.exists?
	end
	
##Test 3: Close Flag Article Inline Comment
	def test03_pre_open_blog_CloseFlagArticleDialog
		create_article_woGroup "Article post for close flag comment #{random}"
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentCloseFlag
		 
		assert $comment_flag_link.exists?
	end
	
##Test 4: Close Flag Media Inline Comment
	def test04_pre_open_blog_CancelFlagMediaDialog
		create_article_1jpeg_wGroup "Article post from close flag comment #{random}"
		sleep 4
		commentPopSubmit "Test Comment #{random}"
		sleep 4
		commentCloseFlag
		 
		assert $comment_flag_link.exists?
	end

##Test 5: Flag Media Inline Comment
	def test05_pre_open_blog_FlagMediaComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		sleep 4
		commentFlag
		
		assert $comment_flag_success.exists?
	end
end	
