$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

##Test 1: One Article Inline Comment
	def test01_business_article_comment
		login $user_1_email, $master_password
		$browser.goto($patch_edit_review_article)
		
		commentPopSubmit "Test Comment #{random}"
	end

##Test 2: One Note Inline Comment
	def test02_business_note_comment
		login $user_1_email, $master_password
		$browser.goto($patch_edit_review_note)
		
		commentPopSubmit "Test Comment #{random}"
	end
	
##Test 3: One Inline Comment From Specific Blog Landing page
	def test03_CommentOnSpecificBusinessLandingPage
		@msg = "Specific Business Landing Page Comment #{random}"
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
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