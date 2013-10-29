$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestLogin < GlobalVariables

#Test 1: User is unable to login because email and password fields are empty
#Location: http://#{localpatch}.#{$environment}.i.patch.com/login

	def test01_PasswordEmailMissing
		$browser.goto($patch_login)
		assert $email.exists?
		$email.set("")
		
		assert $password.exists?
		$password.set("")
		
		assert $sign_in_button.exists?
		$sign_in_button.click
		
		assert $email.exists?	
	end
	
#Test 2: Switch between Join and Login forms
#Location: http://#{localpatch}.#{$environment}.i.patch.com/login
#Location: http://#{localpatch}.#{$environment}.i.patch.com/signup

	def test_08SwitchJoinLogin
		$browser.goto($patch_login)
		assert $join_patch_now.exists?
		$join_patch_now.fire_event("onclick")

		assert $log_in_link.exists?
	end
end