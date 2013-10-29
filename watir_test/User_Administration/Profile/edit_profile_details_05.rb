$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EditProfile < GlobalVariables

#Test 25839: Verify default home town is shown and can be saved other home town option
  def test_ID_25839_edit_profile_home_patch
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $profile_home_patch.wait_until_present()
    assert $profile_home_patch.selected? "Bellmore Patch"
    
    $profile_home_patch.when_present().select "Garden City Patch"
    $profile_save_changes.when_present().click
    $profile_home_patch.wait_until_present()
    assert $profile_home_patch.selected? "Garden City Patch"
    $profile_home_patch.when_present().select "Bellmore Patch"
    $profile_save_changes.when_present().click
    $profile_home_patch.wait_until_present()
    assert $profile_home_patch.selected? "Bellmore Patch" 
  end

#Test 25846: Verify Name with special character and html tag is saved
  def test_ID_25846_edit_profile_name_validation
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $profile_name.when_present().set "Temp name"
    $profile_save_changes.when_present().click
    sleep 3
    assert $profile_name.value == "Temp name"
    $profile_name.when_present().set "mellissa"
    $profile_save_changes.when_present().click
    sleep 3
    assert $profile_name.value == "mellissa"
    
    $profile_name.when_present().set  "%$#%<html>"
    $profile_save_changes.when_present().click
    sleep 3
    assert $profile_name.value ==  "%$#%<html>"
    $profile_name.when_present().set "mellissa"
    $profile_save_changes.when_present().click
    sleep 3
    assert $profile_name.value == "mellissa"
  end
end # end of Class