$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestLogin < GlobalVariables

#Test 1: Clear browser cookies, do not login, attempt to create a group 
	def test01_attempt_create_group_logged_out_TC_24400
		#no login
		$browser.cookies.clear
		$browser.goto($patch)
		$footer_start_a_blog.when_present.click
		sleep 2
		
		assert $browser.text.include?("Or sign in with your Patch account")
	end
	
	#Test doesn't make sense as written 9/10
# #Test 2: Clear browser cookies, do not login, attempt to manage a group
# 	def test02_attempt_create_group_logged_out_TC_24400
# 		#no login
# 		$browser.cookies.clear
# 		login $user_1_email, $master_password
# 		
# 		$browser.goto($patch_mongooses)
# 		sleep 3
# 		$group_follow_group_settings.when_present.click
# 		sleep 2
# 
# 		assert $browser.text.include? "Basic Information"
# 	end
	
#Test 3: Navigate to followed group, click Email Settings
	def est03_groups_email_settings_TC_24415  #8/1/13 - JIRA TripleX 4588 , internal environment issue. disabling for now
		login $user_1_email, $master_password
		$browser.goto($patch)
		$search_text_field.when_present.set("the fighting mongooses")
		$search_button.when_present.click
		
		sleep 2
		assert $search_result_fighting_mongooses.exists?
		
		assert $search_result_fighting_mongooses.exists?
		$search_result_fighting_mongooses.when_present.click
		$group_email_settings.click
		sleep 2
		
		assert $browser.text.include? "Email Settings"
	end

#Test 4: Click "Start a blog" link, verify login prompt


#Test 5: Navigate to events page as anon, verify redirect upon attempting to post an event

end