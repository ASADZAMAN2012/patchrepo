$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

#Test 1: Edit a note post
	def test01_post_closed_blog_edit_note_post_TC_24306
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
		
		$post_edit_post.when_present.click
		$post_compose_note.when_present.set("cats like edit. #{random}.")
		$post_now.when_present.when_present.fire_event("onclick")
		sleep 2
		
		assert $post_edit_post.exists?
	end

#Test 2: Delete an article post
	def test02_post_closed_blog_delete_article_post_TC_24307
		create_article_1jpeg_wGroup "Article for Delete #{random}"
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end
	
#Test 3: Edit an article post
	def test03_post_closed_blog_edit_article_post_TC_24306
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)
		
		$post_edit_post.when_present.click
	 	sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava likes edit. #{random}')")
		$post_now.when_present.fire_event("onclick")
		sleep 2
		
		assert $post_edit_post.exists?
	end
	
#Test 4: Delete a note post
#TC 24307
	def test04_post_closed_blog_delete_note_post_TC24307
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed)
		
		postNoteSetup("Delete post #{random}")
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end

#Test 5: Delete a media post
#TC 24307
	def test05_post_closed_blog_delete_media_post_TC_24307
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed)
		
		create_article_2png_wGroup "Article media post for delete #{random}"
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end
end