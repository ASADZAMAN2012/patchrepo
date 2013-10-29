$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class UserUpdates < GlobalVariables
#Test 25872: Access granted as a contributor
  def atest_ID_25872_access_granted_as_contributor()
    #Need to be clarified. Looks like it's already covered with access_granted_as_manager()
  end

#Test 25873: Access granted as follower of a private group
  def atest_ID_25873_access_granted_as_follower_of_a_private_group()
    login $user_1_email, $master_password
    read_all_updates
    groupName = create_any_new_group("Private", "News")
    logout_common
    login $user_1_email, $master_password
    read_all_updates
    find_a_group("#{groupName}")
    $request_invite.when_present().fire_event("onclick")
    sleep 10
    logout_common
    login $user_1_email, $master_password
    verify_updates
    go_to_edit_profile_page
    $profile_updates_side_link.when_present().click
    sleep 5
    $approve_as_follower.when_present().fire_event("onclick")
    sleep 5
    logout_common
    login $user_1_email, $master_password
    verify_updates
  end

#Test 25874: User follows a group -you Manage
  def atest_ID_25874_user_follows_a_group_you_manage()
    login $user_1_email, $master_password
    read_all_updates
    groupName = create_any_new_group("Open Group", "News")
    logout_common
    login $user_1_email, $master_password
    read_all_updates
    find_a_group("#{groupName}")
    follow_a_group
    logout_common
    login $user_1_email, $master_password
    verify_updates
  end


end  # end of Class

