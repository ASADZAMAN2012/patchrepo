$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables

##Test 1: One Inline Comment Featured Article on Homepage
	def test01_CommentOnFeaturedHomepage
		@msg = "Homepage Featured Comment #{random}"
		login $user_1_email, $master_password

		wait_for_ajax
        sleep 3
        $comment_hp_featured_comment.click  #click Comment for Featured article
        sleep 3
        $comment_textfield.set @msg
        sleep 3
        $comment_submit.click
        sleep 3
        assert $browser.text.include?(@msg)
	end

##Test 2: Comment on article in Boards section of Homepage	
	def test02_CommentOnBoardHomepage
		@msg = "Homepage Boards Comment #{random}"
		login $user_1_email, $master_password

		wait_for_ajax
        sleep 3
        $comment_hp_board_comment.click  #click Comment for Featured article
        sleep 3
        $comment_textfield.set @msg
        sleep 3
        $comment_submit.click
        sleep 3
        assert $browser.text.include?(@msg)
	end
end