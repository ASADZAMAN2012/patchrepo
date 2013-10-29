$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class UserUpdates < GlobalVariables

#Test 25870: Access granted as Manager
  def atest_ID_25870_invitation_to_follow()
    login $user_1_email, $master_password
    read_all_updates
    create_a_group_invite_others_to_join("Open Group", "News")
    logout_common
    login $user_1_email, $master_password
    verify_updates
  end

#Test 25871: Access granted as Manager
  def atest_ID_25871_access_granted_as_manager()
    login $user_1_email, $master_password
    read_all_updates
    groupName = create_a_group_invite_others_to_join("Open Group", "News")
    logout_common
    login $user_1_email, $master_password
    verify_updates
    find_a_group("#{groupName}")
    follow_a_group
    logout_common
    login $user_1_email, $master_password
    verify_updates
    find_a_group("#{groupName}")
    assert $group_settings.exists?
    $group_settings.when_present().fire_event("onclick")
   
    sleep 5
    assert $group_followers.exists?
    $group_followers.when_present().click
    
    sleep 5
    assert $browser.text.include? "Contributors"
    $group_access_dropdown.when_present().click
    $browser.link(:text, /Make a Manager/).when_present().click
    sleep 5
    logout_common
    login $user_1_email, $master_password
    verify_updates
  end


end  # end of Class

