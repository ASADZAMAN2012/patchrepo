$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestLogin< GlobalVariables

#Test 1: Invalid email error message displays
#Location: http://#{localpatch}.#{$environment}.i.patch.com/login
	
	def test01_InvalidEmail
		$browser.goto($patch_login)
		assert $email.exists?
			$email.set("This isn't an email address.")

		
		assert $password.exists?
			$password.set("#{$master_password}")
		
		assert $sign_in_button.exists?
			$sign_in_button.click

		assert $email.exists?	
	end
			
#Test 2: Email address not found error message displays
#Location: http://#{localpatch}.#{$environment}.i.patch.com/login
	def test02_EmailNotFound
		$browser.goto($patch_login)
		assert $email.exists?
		$email.set("invalid@patch.com")
			
		assert $password.exists?
		$password.set("#{$master_password}")
	
		assert $sign_in_button.exists?
		$sign_in_button.click

		assert $user_not_found_error.exists?
	
	end
			
#Test 3: Incorrect Password error message displays
#Location: http://#{localpatch}.#{$environment}.i.patch.com/login
	def test03_IncorrectPassword
		$browser.goto($patch_login)
		assert $email.exists?
		$email.set("#{$user_1_email}")

		assert $password.exists?
		$password.set("wrongpassword")

		assert $sign_in_button.exists?
		$sign_in_button.click

		assert $password_error_invalid.exists?	
	end

#Test 4: User unable to login because email field is empty
#Location: http://#{localpatch}.#{$environment}.i.patch.com/login
	def test04_EmailMissing
		$browser.goto($patch_login)
		assert $email.exists?
		$email.set("")

		assert $password.exists?
		$password.set("#{$master_password}")

		assert $sign_in_button.exists?
		$sign_in_button.click

		assert $email.exists?
	end

#Test 5: User unable to login because password field is empty
#Location: http://#{localpatch}.#{$environment}.i.patch.com/login

	def test05_PasswordMissing
		$browser.goto($patch_login)
		assert $email.exists?
		$email.set("#{$user_1_email}")

		assert $password.exists?
		$password.set("")
			
		assert $sign_in_button.exists?
		$sign_in_button.click

		assert $email.exists?
	
	end
end
