$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EmailSettings < GlobalVariables

#Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_06
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "Repost"
  end

  #Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_07
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "ToAuthorPostIsEdited"
  end

  #Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_08
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "ToAuthorPostIsModerated"
  end

  #Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_09
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "FollowNotificationForModerator"
  end


  #Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_10
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "PostForModerator"
  end
end  # end of Class

