$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class UserUpdates < GlobalVariables

#Test 25860: View Updates
  def test_ID_25860_view_updates()
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_updates_side_link.when_present().click
    sleep 5
    verify_text "Pending Updates", "All Updates"
  end

#Test 25861: Suspended user  - notification
  def atest_ID_25861_suspended_user_notification()
     # Need suspended account
  end

#Test 25862: New post in group you manage
  def test_ID_25862_new_post_in_group_you_manage()
    login $user_1_email, $master_password
    read_all_updates
    logout_common
    login $user_1_email, $master_password
    inline_posting_to_any_blog("atest")
    logout_common
    login $user_1_email, $master_password
    verify_updates
  end

#Test 25863: Comment on review
  def test_ID_25863_comment_on_review()
    login $user_1_email, $master_password
    read_all_updates
    
    $browser.goto("http://flatiron.#{$environment}.patch.com/listings/yelp")
    $share_review_text_field.when_present().click
    $post_compose_review.when_present().set ("Automated review text #{random}")
    $group_post_button.when_present().click

    logout_common
    login $user_1_email, $master_password
    $browser.goto("http://flatiron.#{$environment}.i.patch.com/listings/yelp")
    $comment_icon.click
    sleep 3
    $leave_comment_textfield.set "Automated comment text #{random}"
    $group_post_comment.click
    logout_common
    login $user_1_email, $master_password
    verify_updates
  end
end  # end of Class

