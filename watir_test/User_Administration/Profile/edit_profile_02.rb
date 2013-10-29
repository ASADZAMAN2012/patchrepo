$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EditProfile < GlobalVariables

#Test 25832: Verify after edit your posts link clicked it points to correct page
  def test_ID_25832_user_profile_edit_your_posts
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.when_present().click
    sleep 3
    verify_text "Your Posts"
  end

#Test 25834: Verify after email settings link clicked it points to correct page
  def test_ID_25834_user_profile_edit_email_settings
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 3
    verify_text "Email Settings"
    end
end   # end of Class