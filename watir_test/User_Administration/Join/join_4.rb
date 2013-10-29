$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 1: Sign up as a new User who receives Breaking News emails only
#Location: http://flatiron.#{$environment}.i.patch.com/signup

	def test_01BNChecked
		$browser.cookies.clear
		$browser.goto($patch_join)
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("User#{random}@patch.com")
		$password.set("#{$master_password}")
		$password_confirm.set("#{$master_password}")
		$daily_newsletter_checkbox.click #clear
		$join_patch_button_right.click
		
		assert $join_confirm_modal.exists?
	end	

#Test 2: Sign up as a new User who receives Daily Newsletter emails only
#Location: http://flatiron.#{$environment}.i.patch.com/signup	
	def test_02DNChecked
		$browser.cookies.clear
		$browser.goto($patch_join)
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("User#{random}@patch.com")
		$password.set("#{$master_password}")
		$password_confirm.set("#{$master_password}")
		$breaking_news.click #clear
		$join_patch_button_right.click
		
		assert $join_confirm_modal.exists?
	end	

#Test 3: Sign up as a new User who receives Breaking News and Daily Newsletter emails
#Location: http://flatiron.#{$environment}.i.patch.com/signup
	def test_03BNAndDNChecked
		$browser.cookies.clear
		$browser.goto($patch_join)
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("User#{random}@patch.com")
		$password.set("#{$master_password}")
		$password_confirm.set("#{$master_password}")
		$join_patch_button_right.click
		
		assert $join_confirm_modal.exists?
	end	
	
#Test 4: Sign up as a new User who receives no emails
#Location: http://flatiron.#{$environment}.i.patch.com/signup
	def test_04BNAndDNUnchecked
		$browser.cookies.clear
		$browser.goto($patch_join)
		
		assert $fullname.exists?
		$fullname.set("User #{random}")
		$email.set("User#{random}@patch.com")
		$password.set("#{$master_password}")
		$password_confirm.set("#{$master_password}")
		$breaking_news.click #clear
		$daily_newsletter_checkbox.click #clear
		$join_patch_button_right.click
		
		assert $join_confirm_modal.exists?
	end	
end
