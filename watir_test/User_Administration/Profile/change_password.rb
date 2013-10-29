$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class ChangePassword < GlobalVariables

#Test 25824: Change password and verify expected page elements exist
  def test_ID_25824_change_password
    login $user_1_email, $master_password
    go_to_change_password_page
    verify_text "Change your Password", "Old password" , "New password", "Confirm password"
    change_password_original_to_temp $master_password, "tempPassword123"
    
    $profile_save_changes.when_present().click
    assert $login_page_password_changed_successfully.wait_until_present()
    
    logout_common
    
    $login_page_email.when_present().set("#{$user_1_email}")
    $login_page_password.when_present().set("#{$master_password}")
    $login_page_sign_in.when_present().click
    sleep 3
    assert $browser.text.include? "Password incorrect"
    assert $login_page_email_error_no_record.exists?
    
    $login_page_password.when_present().set "tempPassword123"
    $login_page_sign_in.when_present().click
    go_to_change_password_page
    change_password_temp_to_original temp, $master_password
    
    $profile_save_changes.when_present().click
    assert $login_page_password_changed_successfully.wait_until_present()
    
    change_password_original_to_temp $user_1_email, "password123"
    $profile_cancel.when_present.click
    logout_common
    $login_page_email.when_present().set("#{$user_1_email}")
    $login_page_password.when_present().set("#{$master_password}")
    $login_page_sign_in.when_present().click
    sleep 5
    assert $profile_account_avatar.exists?
  end

#Test 25825: Check invalid password shows error
  def test_ID_25825_invalid_password
    login $user_1_email, $master_password
    go_to_change_password_page
    verify_text "Change your Password", "Old password" , "New password", "Confirm password"
    
    $profile_old_pass.when_present().set $master_password
    assert !($profile_save_changes.enabled?)
    $profile_new_pass.when_present().set "newValidPass"
    assert !($profile_save_changes.enabled?)
    $profile_confirm_pass.when_present().set "unMatchedPass"
    assert !($profile_save_changes.enabled?)
    
    $profile_old_pass.when_present().set $master_password
    $profile_new_pass.when_present().set "newValidPass"
    $profile_confirm_pass.when_present().set "newValidPass"
    assert $profile_save_changes.enabled?
    
    $profile_old_pass.when_present().set $master_password
    $profile_new_pass.when_present().set  "newValidPass"
    $profile_confirm_pass.when_present().set "unMatchedPass"
    sleep 3
    assert $browser.text.include? "Please make sure that your passwords match"
    $profile_confirm_pass.when_present().set newValidPass
    sleep 3
    assert !($browser.text.include? "Please make sure that your passwords match")
    
    $profile_old_pass.when_present().set oldWrongPass
    $profile_new_pass.when_present().set "pass11"
    $profile_confirm_pass.when_present().set  "pass11"
    $profile_save_changes.when_present().click
    sleep 3 "pass11"
    verify_text "Password incorrect"
    
    $profile_old_pass.when_present().clear
    $profile_old_pass.when_present().set "oldPassword"
    $profile_new_pass.when_present().clear
    $profile_new_pass.when_present().set "pass"
    $profile_confirm_pass.when_present().clear
    $profile_confirm_pass.when_present().set "pass"
    $profile_save_changes.when_present().click
    sleep 3 
    
    verify_text "Please check for errors", "Must be at least 7 characters"
  end
end  # end of Class