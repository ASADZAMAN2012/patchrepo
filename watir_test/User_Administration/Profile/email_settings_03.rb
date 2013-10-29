$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EmailSettings < GlobalVariables

#Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_11
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "PostRejectRemove"
  end

  #Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_12
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "NewPostToModerate"
  end

  #Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_13
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "PostEditedByAnotherManager"
  end

#Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_14
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    
    checkBoxes = ["bellmore",
                  "CommentOnCommentedPost",
                  "CommentOnPost",
                  "Repost",
                  "ToAuthorPostIsEdited",
                  "ToAuthorPostIsModerated",
                  "FollowNotificationForModerator",
                  "PostForModerator",
                  "NewPostToModerate",
                  "PostEditedByAnotherManager",
                  "PostRejectRemove",
                  "PostModeratedByAnotherManager"]

    checkBoxes.each do |cbox|
      if ($browser.checkbox(:value, Regexp.new(cbox)).set? == false)
        $browser.checkbox(:value, Regexp.new(cbox)).set
      end
    end
    $profile_save_changes.click
    sleep 5
    checkBoxes.each do |cbox|
      if ($browser.checkbox(:value, Regexp.new(cbox)).set? == true)
        $browser.checkbox(:value, Regexp.new(cbox)).clear
      end
    end
    $profile_cancel.click
    sleep 5
    checkBoxes.each do |cbox|
      assert $browser.checkbox(:value, Regexp.new(cbox)).set?
    end
  end

#Test 25848: Verify 
# This test doesn't cover manual test completely as email notification feature is not added. Need more research on adding this feature
  def test_ID_25849_email_settings_group_preferences_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    
    textBeforeMoreLinkClicked = $browser.element(:xpath => "//a[contains(text(), 'Family')]/../../..//p").text
    textLengthBeforeMoreLinkClicked = textBeforeMoreLinkClicked.length
    assert textBeforeMoreLinkClicked.include? 'More'
    $browser.element(:xpath => "//a[contains(text(), 'Family')]/../../..//p//a").when_present().click
    sleep 3
    textAfterMoreLinkClicked = $browser.element(:xpath => "//a[contains(text(), 'Family')]/../../..//p").text
    textLengthAfterMoreLinkClicked = textAfterMoreLinkClicked.length
    assert !(textAfterMoreLinkClicked.include? 'More')
    assert textLengthAfterMoreLinkClicked > textLengthBeforeMoreLinkClicked 
  end
end  # end of Class

