$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: Delete an article post
	def test01_post_open_news_delete_article_post_TC_24307
		login $editor_1_email, $master_password
		$browser.goto($patch_news_post_open_article_new)
		create_article_1jpeg_wGroup "Article post for delete #{random}"
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		sleep 4
		assert $browser.text.include?("The post was successfully deleted.")
	end
	
#Test 2: Post a note outside home community
	def test02_post_open_news_post_note_outside_home_TC_27491
		login $editor_1_email, $master_password
		$browser.goto($patch_flatiron_news_school_news)
		postNoteSetup("Post outside community #{random}")
		sleep 4
		$post_edit_post.exists?
	end
	
#Test 3: Post an article outside home community	
	def test03_post_open_news_post_article_outside_home_TC_27491	
		login $editor_1_email, $master_password
		$browser.goto($patch_flatiron_news_school_news_article_new)
		create_article_1jpeg_wGroup "Article post from outside community #{random}"
		sleep 4	
		$post_edit_post.exists?
	end
	
#Test 4: Post media outside home community
	def test04_post_open_news_post_media_outside_home_TC_27491
		login $editor_1_email, $master_password
		$browser.goto($patch_flatiron_news_school_news)
		postNoteSetup("Post media outside community #{random}")
		sleep 4		
		$post_edit_post.exists?
	end
end