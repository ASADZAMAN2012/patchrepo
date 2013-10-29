$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestForgotPassword < GlobalVariables

#Test 1: Valid email password can be reset 
#Location: http://#{localpatch}.#{$environment}.i.patch.com/forgot_password
	def test01_ValidEmailReset
		$browser.cookies.clear
		$browser.goto($patch_forgot_password)
		$forgot_password_email.set("mellissa.mcconnell+123@patch.com")
		$forgot_password_go.when_present.click

		assert $forgot_password_success.exists?
	end
		
#Test 2: Email not found password can be reset (?? Seems like it shouldn't_)
#Location: http://#{localpatch}.#{$environment}.i.patch.com/forgot_password
	def test02_EmailNotFoundReset	
		$browser.cookies.clear
		$browser.goto($patch_forgot_password)
		$forgot_password_email.set("NotRegistered@patch.com")
		$forgot_password_go.when_present.click
				
		assert $forgot_password_success.exists?
	end

#Test 3: User may not reset an invalid email
#Location: http://#{localpatch}.#{$environment}.i.patch.com/forgot_password
	def test03_InvalidEmail
		$browser.cookies.clear
		$browser.goto($patch_forgot_password)
		$forgot_password_email.set("Not an email address.")
		$forgot_password_go.when_present.click
		
		assert $forgot_password_success.exists? == false
	end

#Test 4: Email field may not be blank
#Location: http://#{localpatch}.#{$environment}.i.patch.com/forgot_password
	def test04_BlankEmail
		$browser.cookies.clear
		$browser.goto($patch_forgot_password)
		$forgot_password_email.when_present.set("")
		$forgot_password_go.when_present.click

		assert $forgot_password_success.exists? == false
	end
end

