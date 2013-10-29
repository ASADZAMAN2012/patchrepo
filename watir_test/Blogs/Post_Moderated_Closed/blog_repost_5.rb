$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestPostPageElement < GlobalVariables

#Test 1: Delete reposted note
	def test01_post_closed_blog_delete_repost_note_TC_24322
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
		
		repost "Repost text #{random}" 
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end

#Test 2: Delete reposted article
	def test02_post_closed_blog_delete_repost_article_TC_24322
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)
		
		repost "Repost text #{random}" 
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end
	
#Test 3: Flag reposted note
	def test03_post_closed_blog_flag_repost_note_TC_24323
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_note)
		
		repost "Repost text #{random}" 
		repostFlag
		sleep 2
		
		assert $comment_flag_confirm_modal.exists? == false
	end


#Test 5: Flag reposted article
	def test05_post_closed_blog_flag_repost_article_TC_24323
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_closed_article)
		
		repost "Repost text #{random}" 
		repostFlag
		
		assert $comment_flag_confirm_modal.exists? == false
	end
end