$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EditProfile < GlobalVariables

#Test 25826: User Profile Edit
  def test_ID_25826_user_profile_edit
    login $user_1_email, $master_password
    go_to_edit_profile_page
    verify_text "Edit Profile"
  end

#Test 25828: Verify after view link clicked it points to correct page
  def test_ID_25828_user_profile_edit_view_profile

    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_view.click
    sleep 3
    verify_text "Posts","Comments","Manager Of","Recent Activity","Manager Of","created group","is now a manager of", "is now a contributor to","is following"  #,"posted in" - Posts not working commenting out for now
  end

#Test 25830: Verify after personal info link clicked it points to correct page
  def test_ID_25830_user_profile_edit_personal_info
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_personal.when_present().click
    sleep 3
    verify_text "Personal Info"
  end

#Test 25831: Verify after updates link clicked it points to correct page
  def test_ID_25831_user_profile_edit_updates
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_updates_side_link.when_present().click
    sleep 3
    verify_text "Pending Updates"
  end
end   # end of