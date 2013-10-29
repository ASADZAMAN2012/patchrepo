$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables
 	


##Test 1: New Article: Cancel
	def test01_post_open_blog_ArticleCancel
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open_article_new)
			
		sleep 2
 		repostGroupPop
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_cancel.click
			
		sleep 1
		assert $post_cancel.exists?
	end
	
##Test 2: New Media: Cancel
	def test02_post_open_blog_MediaCancel
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open)
		
		sleep 2
		assert $post_media_description.exists?
		$post_media_description.set("Media Description #{random}.")
 		repostGroupPop
		$post_media_button.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		$post_cancel.click
		
		sleep 1
		assert $post_cancel.exists?
	end
end