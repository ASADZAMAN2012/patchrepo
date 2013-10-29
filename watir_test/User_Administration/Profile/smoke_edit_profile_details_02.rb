$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class ProfileSettings < GlobalVariables

#Test 25837: Profile name populated
  def test_ID_25837_edit_profile_name
    login $user_1_email, $master_password
    go_to_edit_profile_page
    if $environment == 'nixon'
      assert $profile_name.value == "mellissa"
    elsif $environment == 'staging'
      assert $profile_name.value == "QA User 1"
    end
  end

#Test 25838: Other option selected by default, Gender has also Male option followed by Female option
  def test_ID_25838_edit_profile_gender
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_gender.wait_until_present()
    assert $profile_gender.selected? "Other"
    
    opt = []
    $profile_gender.options.each{|option| opt<< option.text}
    assert opt[0] == "Male"
    assert opt[1] == "Female"
    
    $profile_gender.when_present().select "Male"
    $profile_save_changes.when_present().click
    $profile_gender.wait_until_present()
    assert $profile_gender.selected? "Male"
    $profile_gender.when_present().select "Female"
    $profile_save_changes.when_present().click
    $profile_gender.wait_until_present()
    assert $profile_gender.selected? "Female"
    $profile_gender.when_present().select "Other"
    $profile_save_changes.when_present().click
    $profile_gender.wait_until_present()
    assert $profile_gender.selected? "Other" 
  end

#Test 25840: Verify day can be selected 1 to 31, Month from Jan to Dec and Year from 1900 to the current year
  def test_ID_25840_edit_profile_resident_since_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    opt = []
      $profile_resident_dd.options.each{|option| opt<< option.text}
      i=1
      while i<= 31
        assert opt[i] == "#{i}"
        $profile_resident_dd.select opt[i]
        i = i+1
      end
  end

#Test 25840: Verify Month from Jan to Dec can be selected
  def test_ID_25840_edit_profile_resident_since_02
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    opt = []
      $profile_resident_mm.options.each{|option| opt<< option.text}
      i=1
      while i<= 12
        $profile_resident_mm.select opt[i]
        i = i+1
      end 
  end
end # end of Class