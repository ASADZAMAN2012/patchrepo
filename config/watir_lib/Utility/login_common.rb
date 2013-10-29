module Login_Common_Methods

	def login(email, password)
	    $browser.goto($patch_login)
		
		if $browser.text.include? "Our system is having trouble"
 		  $browser.refresh
 		  $browser.goto($patch_login)
 		else nil
 		end
		
		$login_page_email.when_present.set(email)
		$login_page_password.when_present.set(password)
		$login_page_sign_in.when_present.click
	end

	def fb_cleanup
		$browser.cookies.clear
		$browser.goto($facebook_home)
		fb_login
		$browser.goto($facebook_apps)
		sleep 2
		
			if $facebook_remove.exists?
				$facebook_remove.when_present.click
				sleep 2
				$browser.send_keys :enter 
				sleep 2
				#$facebook_remove_modal.when_present.click
			else puts "unable to clean up fb. Verify facebook elements if an exception occurs."
			end
			
		$facebook_dropdown.wait_until_present
		$facebook_dropdown.click
		$facebook_logout.wait_until_present
		$facebook_logout.click
	end	
	
	def fb_login
		if $facebook_email.exists?
			$facebook_email.set("tania.bhullar+juneqa@patch.com")
			$facebook_password.set("password123")		
			$facebook_log_in.click
		else nil
		end
	end
	
	def fb_allow
		fb_login
		sleep 2	
		if $facebook_goto_app.exists?
			$facebook_goto_app.click
			$facebook_allow.when_present.click
		else sleep 2 
			$browser.send_keys :enter 
			sleep 2
			$browser.send_keys :enter 
			#$facebook_allow.when_present.click
			#$facebook_allow.when_present.click
			#there are two dialogs that appear that use the same button
		end
	end
	
	  
    def logout_common
      $browser.goto($patch_logout)
    end
    
    def dropdownLogout
		$profile_account_avatar.when_present.click
    	$sign_out.when_present.click
		$browser.goto($patch_opinion_group)
	end
end
