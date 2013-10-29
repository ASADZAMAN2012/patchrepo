$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class ProfileSettings < GlobalVariables

#Test 25858: verify save button disabled until password entered
  def test_ID_25858_personal_info_password_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_personal.when_present().click
    sleep 5
    
    $profile_email.when_present().click
    $profile_email.when_present().set $user_1_email
    $profile_phone.when_present().set "#{random}"
    assert $profile_save_changes.disabled?
  end

#Test 25858: change emailid verify user gets prompt to enter password
  def test_ID_25858_personal_info_password_02
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_personal.when_present().click
    sleep 5
    
    randomEmail = "testrandom#{random}@gmail.com"
    $profile_email.when_present().click
    $profile_email.when_present().set randomEmail
    $profile_phone.click
    $profile_password.when_present().set $master_password
    $profile_password.when_present().clear
    $login_page_password_prompt_message.wait_until_present()
    assert $login_page_password_prompt_message.exists?
  end

#Test 25858: change phone verify user gets prompt to enter password
  def test_ID_25858_personal_info_password_03
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_personal.when_present().click
    sleep 5
    
    randomPhone = "#{random}"
    $profile_phone.when_present().click
    $profile_phone.when_present().set randomPhone
    $login_page_password_prompt_message.wait_until_present()
    sleep 5
    assert $login_page_password_prompt_message.exists?
    
    $profile_password.when_present().set "wrongpassword"
    $profile_save_changes.when_present().click
    sleep 5
    assert $profile_incorrect_pass.exists?
  end
end