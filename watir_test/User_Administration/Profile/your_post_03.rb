$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestYourPost < GlobalVariables

  #Test 25890: Verify Published post count present, updated after deleting post
  def test_ID_25890_published_posts_03
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    sleep 5
    
    numberOfPublishedPostCurrent = count_post_current
    $profile_published.click
    $browser.link(:text, "atest").click
    sleep 5
    $profile_delete_icon.click
    $delete_on_modal.when_present().click 
    go_to_edit_profile_page
    $profile_your_posts.when_present().click
    $profile_published.when_present().click
    sleep 3
    numberOfPublishedPostAfterPostDeleted = count_post_current
    assert numberOfPublishedPostAfterPostDeleted == numberOfPublishedPostCurrent - 1 
  end

#Test 25891: Verify scheduled posts exists
  def atest_ID_25891_scheduled_posts_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    sleep 5
    scheduledPostCount = count_scheduled_current
    if  (scheduledPostCount < 5)
      i=1
      while i < 3
        $browser.goto($patch_note)
        $post_pick_group.when_present().click
        $group_select.when_present().select("Sports")
        $post_compose_note.wait_until_present()
        $browser.link(:text, "Basketball").when_present().click
        $post_compose_note.when_present().set("Note field populated by automated test.")
        $advanced_options.when_present().click
        currentTime = Time.now() + 2
        currentDate = currentTime.strftime("%Y-%m-%d")
        $post_advanced_calendar.when_present().set("#{currentDate}")
        $post_advanced_time.when_present().set("11:00 PM")
        sleep 3
        $browser.link(:text => /11:00/).click
        $profile_schedule.when_present().fire_event("onclick")
        sleep 3
        i = i+1
      end
    end
  end

  #Test 25891: Verify scheduled posts exists
  def atest_ID_25891_scheduled_posts_02
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    sleep 5
    go_to_scheduled_tab_on_your_post_page
    verify_text "Your Posts","Current Drafts", "Scheduled Posts", "Published Posts", "Scheduled"
    assert $profile_edit_post.exists?
    assert $profile_delete.exists?
    assert $count_of_scheduled.exists?
  end

  #Test 25891: Verify scheduled posts exists
  def atest_ID_25891_scheduled_posts_03
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    sleep 5
    go_to_scheduled_tab_on_your_post_page
    scheduledPostCountCurrent = count_scheduled_current
    $profile_delete_on_scheduled_post.when_present().click
    $delete_on_delete_this_draft.when_present().click
    $browser.refresh
    $count_of_scheduled.wait_until_present()
    scheduledPostCountAfterDeletingScheduledPost = count_scheduled_current
    assert scheduledPostCountAfterDeletingScheduledPost == scheduledPostCountCurrent - 1
  end

end

