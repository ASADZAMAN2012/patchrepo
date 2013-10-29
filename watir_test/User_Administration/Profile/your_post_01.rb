$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestYourPost < GlobalVariables

#Test 25889: Draft count updated when draft created, deleted or posted
  def test_ID_25889_current_drafts_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    
    draftCount = count_draft_current
    if  (draftCount < 1)
      i=1
      while i < 3
        create_draft "atest"
        i=i+1
      end
      go_to_draft_tab_on_your_post_page
    end 
  end


#Test 25889: Draft count updated when draft created, deleted or posted
  def test_ID_25889_current_drafts_02
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    sleep 5
    verify_text "Your Posts","Drafts","Submitted Drafts", "Scheduled", "Published"
    assert $profile_drafts.exists?
    assert $count_of_drafts.exists?
  end


#Test 25889: Draft count updated when draft created, deleted or posted
  def test_ID_25889_current_drafts_03
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profiles_your_posts.click
    sleep 5
    
    go_to_draft_tab_on_your_post_page
    numberOfDraftCurrent = count_draft_current
    if(numberOfDraftCurrent > 15)
      for i in 0..numberOfDraftCurrent - 15
        delete_draft
      end
    end
    numberOfDraftCurrent = count_draft_current
    create_draft "atest"
    go_to_draft_tab_on_your_post_page
    numberOfDraftAfterCreatingNewDraft = count_draft_current
    assert numberOfDraftAfterCreatingNewDraft == numberOfDraftCurrent + 1 
  end

end

