$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

#Test 1: Delete reposted note
	def test01_post_open_news_delete_repost_note_TC_24322
		login $user_1_email, $master_password
		$browser.goto($patch_note_to_edit)
		
		repost "Repost text #{random}" 
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click

		assert $browser.text.include?("The post was successfully deleted.")
	end

#Test 2: Delete reposted article
	def test02_post_open_news_delete_repost_article_TC_24322
		login $user_1_email, $master_password
		$browser.goto($patch_article_to_edit)
		
		repost "Repost text #{random}" 
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click

		assert $browser.text.include?("The post was successfully deleted.")
	end

#Test 3: Delete reposted media
	def test03_post_open_news_delete_repost_media_TC_24322
		login $user_1_email, $master_password
		$browser.goto($patch_media_to_edit)
		
		repost "Repost text #{random}" 
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end
	
#Test 4: Flag reposted note
	def test04_post_open_news_flag_repost_note_TC_24323
		login $user_1_email, $master_password
		$browser.goto($patch_note_repost)
		
		commentFlag
		sleep 2

		assert $comment_flag_confirm_modal.exists? == false
	end


#Test 5: Flag reposted article
	def test05_post_open_news_flag_repost_article_TC_24323
		login $user_1_email, $master_password
		$browser.goto($patch_article_repost)
		
		commentFlag
		sleep 2
		
		assert $comment_flag_confirm_modal.exists? == false
	end
end