$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

#Test 1: Approve submitted post
	def test01_open_approve_post
		@msg = "Note for approval #{random}"
		login $user_3_email, $master_password
		$browser.goto($patch_blogs_pre_open)
		wait_for_ajax
		sleep 2
		#create post for approval
		postApproveNoteSetup(@msg)
		
		#log out
		logout_common
		
		#login in as admin (moderator of blog)
		login $admin_1_email, $master_password
		
		#approve post
		$browser.goto($patch_blogs_pre_open)
		wait_for_ajax
		sleep 3
		$post_for_approval_icon.click #go to preview
		sleep 4
		assert $browser.text.include? "#{@msg}" #verify on correct page
		$post_now_alt_1.when_present.click #approve post
		wait_for_ajax
		$browser.text.include? "Related Stories" #verify post was indeed approved
	end
	
#Test 2: reject submitted post
	def test02_open_reject_post
		@msg = "Note for rejection #{random}"
		login $user_3_email, $master_password
		$browser.goto($patch_blogs_pre_open)
		wait_for_ajax
		sleep 2
		#create post for approval
		postApproveNoteSetup(@msg)
		
		#log out
		logout_common
		
		#login in as admin (moderator of blog)
		login $admin_1_email, $master_password
		
		#reject post
		$browser.goto($patch_blogs_pre_open)
		wait_for_ajax
		sleep 3
		$post_for_approval_icon.click #go to preview 
		sleep 4
		assert $browser.text.include? "#{@msg}" #verify on correct page
		sleep 4
		$post_reject_icon.when_present.click
		sleep 2
		$post_reject_reason.when_present.set "I don't link this post"
		$post_reject_button.click
		assert !($browser.text.include? "#{@msg}")
	end
end