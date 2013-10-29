$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestLogin < GlobalVariables

#Test 1: Login using Facebook, not logged into Facebook, Patch app not approved
	def test01_fb_login_not_approved_TC_24862
		$browser.goto($patch_login)
		
		$login_page_sign_in_facebook.click
		fb_login	
		fb_allow
		$browser.goto($patch_login)
		$login_page_sign_in_facebook.when_present.click

		assert $header_profile_avatar.exists?

		fb_cleanup
	end
	
#Test 2:  Login using Facebook, already logged into Facebook, Patch app not approved
	def test02_fb_login_existing_not_approved_TC_24862	
		$browser.goto($patch_login)
		
		$login_page_sign_in_facebook.when_present.click
		fb_login
		fb_allow
		$browser.goto($patch_login)
		$login_page_sign_in_facebook.when_present.click

		assert $header_profile_avatar.exists?
		
		fb_cleanup
	end

#Test 3: Login using Facebook, not logged into Facebook, Patch app approved
	def est03_fb_login_approved_TC_24862
		#$browser.cookies.clear
		$browser.goto($patch_login)
		$login_page_sign_in_facebook.when_present.click
		fb_login		
		fb_allow
		$browser.goto($facebook_home)
		$facebook_dropdown.click
		$facebook_logout.click
		$browser.goto($patch_login)
		sleep 2
		$login_page_sign_in_facebook.click
		fb_login
		$browser.goto($patch_login)
		$login_page_sign_in_facebook.when_present.click

		assert $header_profile_avatar.exists?
	end
	
#Test 4: Login using Facebook, already logged into Facebook, Patch app approved
	def test04_fb_login_existing_approved_TC_24862
		#$browser.cookies.clear
		$browser.goto($facebook_home)
		fb_login
		$browser.goto($patch_login)
		sleep 2
		$login_page_sign_in_facebook.click
		$browser.goto($patch_login)
		$login_page_sign_in_facebook.when_present.click
		sleep 3
		assert $header_profile_avatar.exists?

	end

#Test 5: Valid Login
	def est05_ValidLogin_TC_24862
		$browser.cookies.clear
		$browser.goto($patch_login)
		$login_page_email.set("#{$user_1_email}")
		$login_page_password.set("#{$master_password}")
		$login_page_sign_in.click
		
		assert $header_profile_avatar.exists?

	end
end