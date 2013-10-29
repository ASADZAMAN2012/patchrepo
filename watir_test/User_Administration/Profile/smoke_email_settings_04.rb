$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EmailSettings < GlobalVariables

  #Test 25848: Verify click_group_icon_verify_redirect
  def test_ID_25849_email_settings_group_preferences_03
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_email_settings.when_present.click
	sleep 2
    if $environment == 'nixon'
      click_group_icon_verify_redirect "breaking"
    else
      click_group_icon_verify_redirect "sports"
    end
  end

#Test 25848: click_group_name_verify_redirect
  def test_ID_25849_email_settings_group_preferences_04
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_email_settings.when_present.click
	sleep 2
    if $environment == 'nixon'
      click_group_name_verify_redirect "family"
    else
      click_group_name_verify_redirect "pre-moderated-open-closed"
    end
  end
end  # end of Class

