$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EditProfile < GlobalVariables

#Test 25841: Verify text can be entered, saved, then deleted and saved (field remains optional)
  def test_ID_25841_edit_profile_i_am_a_optional
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $profile_i_am_a.when_present().clear
    $profile_save_changes.when_present().click
    sleep 5
    assert $profile_i_am_a.value == ""
    
    iamaText = "I am a text automated #{random}"
    $profile_i_am_a.when_present().set iamaText
    $profile_save_changes.when_present().click
    sleep 5
    assert $profile_i_am_a.value == iamaText
  end

#Test 25842: Verify text can be entered, saved, then deleted and saved (field remains optional)
  def test_ID_25842_edit_profile_a_little_more_about_me
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $profile_more_about.when_present().clear
    $profile_save_changes.when_present().click
    sleep 5
    assert $profile_more_about.value == ""
    
	littleText = "Little more about me automated #{random}"
    $profile_more_about.when_present().set littleText
    $profile_save_changes.when_present().click
    sleep 5
    assert $profile_more_about.value == littleText  end

#Test 25843: Verify text can be entered, saved, then deleted and saved (field remains optional)
  def test_ID_25843_edit_profile_what_i_love_about_your_town
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $profile_community.when_present().clear
    $profile_save_changes.when_present().click
    sleep 5
    assert $profile_community.value == ""
    
    aboutCommunityText = "I love my community. It's a nice place to live automated #{random}"
    $profile_community.when_present().set aboutCommunityText
    $profile_save_changes.when_present().click
    sleep 5
    assert $profile_community.value == aboutCommunityText
  end

#Test 25844: Verify cancel reverted changes and user remains in the same page
  def test_ID_25844_edit_profile_cancel_reverted_changes
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $profile_name.when_present().set "temp Name"
    $profile_gender.when_present().select "Male"
    $profile_resident_mm.when_present().select "March"
	$profile_resident_dd.when_present().select "18"
    $profile_resident_yy.when_present().select "1981"
    $profile_cancel.when_present().click
    sleep 3
    assert $profile_name.value != "temp Name"
    assert $profile_gender.value != "Male"
    assert $profile_resident_mm.value != "March"
    assert $profile_resident_dd.value != "18"
    assert $profile_resident_yy.value != "1981"
  end

#Test 25847: User names are not required to be unique
  def test_ID_25847_edit_profile_name_limit
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    username = "mellissa"
    save_name(userName)
    logout_common
    login $user_1_email, $master_password
    go_to_edit_profile_page
    save_name(userName)
  end
end # end of Class