$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 1: Join successfully, validate modal confirmation dialog elements
	def est_01SuccessfulJoin_TC_24384
	    $browser.cookies.clear
   		$browser.goto($patch_join)
   		
	   	$join_page_fullname.set("User #{random}")
    	$join_page_email.set("User#{random}@patch.com")
    	$join_page_password.set("#{$master_password}")
    	$join_page_password_confirm.set("#{$master_password}")
    	$join_page_join_button.click
		
		sleep 4
		assert $join_modal.exists?
	end

#Test 2: Empty name, email, or password field is not accepted 
	def est_02EmptyNameField_TC_24384
    	$browser.cookies.clear
    	$browser.goto($patch_join)
  
  		$join_page_join_button.click
  		
		assert $join_page_join_button.exists?
	end

#Test 3: Locate and click the Terms of Use link
#Location: http://flatiron.#{$environment}.i.patch.com/signup	
	def est_03TermsOfUse
		$browser.cookies.clear
    	$browser.goto($patch_join)
  
  		$footer_terms_of_use.when_present.click
  		$browser.window(:title, /Terms/).use do
  		  sleep 2
		  assert $browser.text.include? "Our Terms of Use"
		end
	end	
	
#Test 4: Locate and click the Privacy Policy link
#Location: http://flatiron.#{$environment}.i.patch.com/signup	
	def est_04PrivacyPolicy
		$browser.cookies.clear
    	$browser.goto($patch_join)
  
  		$footer_privacy_policy.when_present.click
  		sleep 2
  		$browser.window(:title, /Privacy/).use do
  		  sleep 2
		  assert $browser.text.include? "Personal Information and Aggregate Information"
		end
	end
end	
