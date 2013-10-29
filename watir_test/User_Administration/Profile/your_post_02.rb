$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestYourPost < GlobalVariables

#Test 25889: Draft count updated when draft created, deleted or posted
  def test_ID_25889_current_drafts_04
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    go_to_draft_tab_on_your_post_page
    numberOfPublishedPostCurrent = count_post_current
    numberOfDraftBeforeDraftPosted = count_draft_current
    $browser.link(:text, "atest").click
    $post_now_button.click "atest"
    go_to_draft_tab_on_your_post_page
    numberOfPublishedPostAfterDraftPosted = count_post_current
    numberOfDraftAfterDraftPosted = count_draft_current
    assert numberOfPublishedPostAfterDraftPosted == numberOfPublishedPostCurrent + 1
    assert numberOfDraftAfterDraftPosted == numberOfDraftBeforeDraftPosted - 1
  end

#Test 25889: Draft count updated when draft created, deleted or posted
  def test_ID_25889_current_drafts_05
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    
    numberOfDraftCurrent = count_draft_current
    go_to_draft_tab_on_your_post_page
    delete_draft_profile "atest"
    go_to_draft_tab_on_your_post_page
    numberOfDraftAfterDeleting = count_draft_current
    assert numberOfDraftAfterDeleting == numberOfDraftCurrent - 1 
  end

  #Test 25890: Verify Published post count present, updated after deleting post
  def test_ID_25890_published_posts_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    postCount = count_post_current
    if  (postCount < 5)
      i=1
      while i < 5
        $browser.goto($patch_note)
    	$post_pick_group.when_present().click
    	$browser.link(:text, Regexp.new(groupName)).click
    	$post_compose_note.when_present().set("Note field populated by automated test.")
    	$post_now_button.when_present().click
        i = i+1
      end
    end 
  end

  #Test 25890: Verify Published post count present, updated after deleting post
  def test_ID_25890_published_posts_02
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    $profile_published.when_present().click
    sleep 5
    verify_text "Your Posts","Drafts", "Scheduled", "Published"
    assert $profile_published.exists?
    assert $count_of_published.exists?
  end

end

