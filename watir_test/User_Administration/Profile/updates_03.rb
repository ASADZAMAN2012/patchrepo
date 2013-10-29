$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class UserUpdates < GlobalVariables

#Test 25868: Comments on a post I commented on
  def atest_ID_25868_comments_on_a_post_i_commented_on()
    login $user_1_email, $master_password
    $browser.goto($patch_note)
    $post_pick_group.when_present().click
    $browser.link(:text, "Living").fire_event("onclick")
    $post_compose_note.when_present().set("Note field populated by automated test.")
    $post_now.when_present().fire_event("onclick")
    sleep 3

    $leave_comment_textfield.wait_until_present()
    $leave_comment_textfield.when_present().set "Automated comment text #{random}"
    $group_post_button.when_present().click
    logout_common
    login $user_1_email, $master_password
    
    $browser.goto($patch_group)
    $browser.span(:text=> Regexp.new("Living"), :class => /name/).when_present().click
    $browser.strong(:text=>Regexp.new("House & Home")).when_present().click
    $leave_comment_textfield.when_present().click
    sleep 2
    $leave_comment_textfield.when_present().set "Automated comment text #{random}"
    sleep 2
    $group_post_button.when_present().click
    
    logout_common
    login $user_1_email, $master_password
    verify_updates
  end

#Test 25869: User requests to follow a private group
  def atest_ID_25869_user_requests_to_follow_a_private_group()
    login $user_1_email, $master_password
    read_all_updates
    groupName = create_any_new_group("Open Group", "News")
    logout_common
    login $user_1_email, $master_password
    find_a_group("#{groupName}")
    follow_a_group
    logout_common
    login $user_1_email, $master_password
    verify_updates
  end

end  # end of Class

