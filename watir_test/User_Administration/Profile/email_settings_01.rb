$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EmailSettings < GlobalVariables

#Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    verify_text "Email Settings","Daily Newsletter","Comments","Updates About My Blog(s)" 
    assert $profile_daily.exists?
    assert $profile_comments.exists?
    assert $profile_post_comment.exists?
    assert $profile_reposted.exists?
     assert $profile_posts.exists?  
  end

#Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_02
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
      if ($browser.checkbox(:value, Regexp.new(cbox)).set? == true)
        $browser.checkbox(:value, Regexp.new(cbox)).clear
      end
    end
  end

#Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_03
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "bellmore"
  end

#Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_04
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "CommentOnCommentedPost"
  end

#Test 25848: Verify 
  def test_ID_25848_email_settings_cancel_05
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_email_settings.when_present().click
    sleep 5
    check_save_verify_checked "CommentOnPost"
  end
end  # end of Class

