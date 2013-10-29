$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 1: Verify User is able to enter a long name
#Location: http://flatiron.#{$environment}.i.patch.com/signup

	def test_01LongName
		$browser.cookies.clear
		$browser.goto($patch_join)
		
		assert $fullname.exists?
		$fullname.set("User #{bigrandom}")
		$email.set("User#{random}@patch.com")
		$password.set("#{$master_password}")
		$join_patch_button_right.click
		
		if $join_confirm_modal.exists?
			$close_dialog_x.click
		end
	end	

#Test 2: Verify User is able to enter a long email
#Location: http://flatiron.#{$environment}.i.patch.com/signup	
	
	def test_02LongEmail
		$browser.cookies.clear
		$browser.goto($patch_join)
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("User#{bigrandom}@patch.com")
		$password.set("#{$master_password}")
		$join_patch_button_right.click
		
		if $join_confirm_modal.exists?
			$close_dialog_x.click
		end
	end	
	
#Test 3: Verify User is able to enter a long password
#Location: http://flatiron.#{$environment}.i.patch.com/signup	
	
	def test_03LongPassword
		$browser.cookies.clear
		$browser.goto($patch_join)
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("User#{random}@patch.com")
		$password.set("password#{bigrandom}")
		$join_patch_button_right.click
		
		if $join_confirm_modal.exists?
			$close_dialog_x.click
		end
	end		
end	
	
	
	
	
	
	
	
	
	
	
	
	
