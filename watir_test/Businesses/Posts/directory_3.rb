$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/directory: Latest reviews, leave comment on directory page
	def test01_D3LRT01
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_review.click
		$directory_review_bottom_comment.set("New Review Comment Test#{random}.")
		$directory_comment_post.click
		
		sleep 2
		assert $browser.text.include? "Follow this Group"
	end


#Test 2: patch.com/directory: Latest reviews, click group icon
	def test02_D3LRT02
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_image.when_present.fire_event("onclick")
		
		sleep 2
		assert $browser.text.include? "Directory Group"
	end
	
#Test 3: patch.com/directory: Latest reviews, click user icon
def test02_D3LRT03
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_title.fire_event("onclick")
		
		sleep 2
		assert $browser.text.include? "Directory Group"
	end
end