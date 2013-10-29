$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class ProfileSettings < GlobalVariables

#Test 25857: Valid phone saved
  def est_ID_25857_personal_info_phone_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_personal.when_present().click

    randomPhone = "#{random}"
    $profile_email.when_present().click
    sleep 1
    $profile_phone.when_present().set randomPhone
    $profile_password.when_present().set $master_password
    $profile_save_changes.when_present().click
#    sleep 5
    assert $profile_phone.value == randomPhone
  end

#Test 25857: verify error message for phone
  def est_ID_25857_personal_info_phone_02
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_personal.when_present().click

    randomPhone = "#{random}"
    $profile_email.when_present().click
    $profile_phone.when_present().set randomPhone
    sleep 1
    $profile_password.when_present().set "incorrectPass"
    $profile_save_changes.when_present().click
#    sleep 5
    assert $profile_password_incorrect.exists?

    $profile_email.when_present().click
    $profile_email.when_present().set "testrandom#{random}@gmail"
    $profile_phone.when_present().set randomPhone
    $profile_password.when_present().set $master_password
    $profile_save_changes.when_present().click
#    sleep 5
    assert $profile_password.exists?

    $profile_phone.when_present().click
    $profile_phone.when_present().clear
    $profile_password.when_present().set $master_password
    $profile_save_changes.when_present().click
#   sleep 5
    assert !($profile_password_incorrect.exists?)
  end

  #Test 25858: retain_original_email_id
  def est_ID_25858_personal_info_password_05
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_personal.when_present().click

    retain_original_email_id
  end

#Test 25859: Verify cancel reverted changes
  def test_ID_25859_personal_info_cancel
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_personal.when_present().click

     randomEmail = "testrandom#{random}@gmail.com"
    $profile_email.when_present().set randomEmail
    sleep 1
    $profile_password.when_present().set $master_password
    $profile_cancel.when_present().click
#    sleep 5
    assert $profile_email.value != randomEmail
    assert $profile_email.value == $user_1_email
  end
  
  def test_ID_25859_personal_info_cancel_phone
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_personal.when_present().click

    randomPhone = "#{random}"
    $profile_phone.when_present().set randomPhone
    sleep 1
    $profile_password.when_present().set $master_password
    $profile_cancel.when_present().click
#    sleep 5
    assert  $profile_phone.value != randomPhone
  end
end


