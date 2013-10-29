$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables
#Test 2: Delete reposted event
	def test02_delete_repost_event_TC_24322
		login $user_1_email, $master_password
		$browser.goto($patch_event_to_edit)
		
		repost "Repost text #{random}" 
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		
		assert $browser.text.include?("The post was successfully deleted.")
	end

#Test 3: Flag reposted event
	def test03_flag_repost_event_TC_24323
		login $user_1_email, $master_password
		$browser.goto($patch_event_repost)
		
		commentFlag
		sleep 2
		
		assert $comment_flag_confirm_modal.exists? == false
	end

end