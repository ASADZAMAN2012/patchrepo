$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestViewProfile < GlobalVariables

#Test 25877: Guest user view profile
  def test_ID_25877_profile_public_as_guest
    $browser.goto($patch)
    sleep 5
    $browser.link(:href => /police/).click "police"
    $group_for_guest_user.when_present(60).click
    sleep 5
    verify_text "Managed Groups", "Posts", "Following", "Comments", "Recent Activity"
    profileButtonExists = $profile_edit_link.visible?
    assert profileButtonExists == false
    click_group_icon_verify_redirect "breaking-news"
    click_group_name_verify_redirect "breaking-news"
  end
end    

