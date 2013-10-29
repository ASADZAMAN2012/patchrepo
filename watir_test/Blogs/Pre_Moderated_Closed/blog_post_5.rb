$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables
	
#Test 1: Delete an article post
	def test01_pre_closed_blog_delete_article_post_TC_24307
		create_article_1jpeg_wGroup "Article for delete #{random}"
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end
	
#Test 2: Post a note outside home community
	def test02_pre_closed_blog_post_note_outside_home_TC_27491
		postNoteSetup("Post outside community #{random}")
	
		assert $browser.text.include?("just now")
	end
	
#Test 3: Post an article outside home community	
	def test03_pre_closed_blog_post_article_outside_home_TC_27491	
		create_article_1jpeg_wGroup "Article post from ouside community #{random}"
	
		assert $browser.text.include?("just now")
	end
	
#Test 4: Post media outside home community
	def test04_pre_closed_blog_post_media_outside_home_TC_27491
		create_article_1jpeg_wGroup "Article media post from ouside community #{random}"
		
		assert $browser.text.include?("just now")
	end
end