$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables	
##Test 1: One Inline Comment From Specific Blog Landing page
	def test01_CommentOnSpecificBlogLandingPage
		@msg = "Specific Blog Landing Page Comment #{random}"
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_post_open)
		wait_for_ajax
        sleep 3
        $comment_leave_comment.click
        sleep 3
        $comment_textfield.set @msg
        sleep 3
        $comment_submit.click
        sleep 3
        assert $browser.text.include?(@msg)
	end
end