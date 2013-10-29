$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class ProfileSettings < GlobalVariables

#Test 25856: verify expected email id shown in email field
  def test_ID_25856_personal_info_email_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_personal.when_present().click
    sleep 5
    verify_text "Personal Info"
    assert $profile_email.value == $user_1_email
  end

#Test 25856: verify_valid_email_saved
  def test_ID_25856_personal_info_email_02
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_personal.when_present().click
    sleep 5
    
    randomEmail = "testrandom#{random}@gmail.com"
    $profile_email.when_present().click
    $profile_email.when_present().set randomEmail
    sleep 5
    $profile_password.when_present().click
    $profile_password.when_present().set $master_password
    $profile_save_changes.when_present().click
    sleep 5
    assert $profile_email.value == randomEmail
    retain_original_email_id
  end

#Test 25856: Valid Email saved, wrong formatted email shows error message
  def test_ID_25856_personal_info_email_03
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_personal.when_present().click
    sleep 5
    $profile_email.when_present().click
    $profile_email.when_present().set "testrandom#{random}@gmail"
    $profile_password.when_present().set $master_password
    $profile_save_changes.when_present().click
    sleep 5
    assert $invalid_email_error.exists?
    $profile_email.when_present().click
    $profile_email.when_present().set "testrandom#{random}@gmail.com"
    $profile_password.when_present().set "incorrectpass"
    $profile_save_changes.when_present().click
    sleep 5
    assert $profile_incorrect_pass.exists?
  end
end