$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 1: Email address without top level domain	

	def test_01InvalidJoinEmail
		$browser.goto($patch_join)
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("User#{random}@patch")
		$password.set("#{$master_password}")
		$password_confirm.set("#{$master_password}")
		$join_patch_button_right.click
		sleep 3

#		assert $join_error_please_check.exists?
		assert $join_error_email_invalid.exists?
	end 
	
#Test 2: Email address without @ symbol	
	def test_02InvalidJoinEmailAtSign
		$browser.goto($patch_join)	
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("User#{random}patch.com")
		$password.set("#{$master_password}")
		$password_confirm.set("#{$master_password}")
		$join_patch_button_right.click
		sleep 3

		assert $email.exists?
	end
	
#Test 3: Email address already in use
	def test_03JoinEmailInUse
		$browser.goto($patch_join)	
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("#{$user_1_email}")
		$password.set("#{$master_password}")
		$password_confirm.set("#{$master_password}")
		$join_patch_button_right.click 
		sleep 3

		assert $join_error_email_in_use.exists?
	end	

#Test 4: Password too shore
#Location: http://flatiron.#{$environment}.i.patch.com/signup	
	def test_04PasswordTooShort
		$browser.goto($patch_join)
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("User#{random}@patch.com")
		$password.set("p")
		$password_confirm.set("p")
		$join_patch_button_right.click	
		sleep 3

		assert $join_error_please_check.exists?
		assert $join_error_password_length.exists?
	end
end	
