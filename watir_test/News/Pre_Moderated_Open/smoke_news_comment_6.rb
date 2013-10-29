$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
##Test 1: One Inline Comment From Specific News Landing page
	def test01_CommentOnSpecificNewsLandingPage
		@msg = "Specific News Landing Page Comment #{random}"
		login $user_1_email, $master_password
		$browser.goto($patch_news_post_open)
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