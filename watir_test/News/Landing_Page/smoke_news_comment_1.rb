$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

##Test 1: One Inline Comment From Landing page
	def test01_CommentOnLandingPage
		@msg = "Landing Page Comment #{random}"
		login $user_1_email, $master_password
		$browser.goto($patch_news_landing_page)
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