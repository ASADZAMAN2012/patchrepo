$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EditProfile < GlobalVariables

#Test 25840: Verify Year from 1900 to the current year can be selected
  def test_ID_25840_edit_profile_resident_since_03
    login $user_1_email, $master_password
    go_to_edit_profile_page
    time = Time.new
    
    opt = []
      $profile_resident_yy.options.each{|option| opt<< option.text}
      i=1
      while i< opt.length
        $profile_resident_yy.select opt[i]
        i = i+1
      end
      assert opt[1]== 1900
      assert opt[opt.length-1]== time.year
  end

  #Test 25840: Verify user_is_not_able_to_specify_only_the_month_drop_down
  def test_ID_25840_edit_profile_resident_since_04
    login $user_1_email, $master_password
    go_to_edit_profile_page
    $profile_resident_mm.when_present().select "March"
    $profile_resident_dd.when_present().select "Day"
    $profile_resident_yy.when_present().select "Year"
    $profile_save_changes.click
    sleep 5
    assert $profile_resident_mm.selected? "Month"
    assert $profile_resident_dd.selected? "Day"
    assert $profile_resident_yy.selected? "Year"
  end

#Test 25840: Verify user_is_not_able_to_specify_only_the_day_drop_down
  def test_ID_25840_edit_profile_resident_since_05
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $profile_resident_mm.when_present().select "Month"
    $profile_resident_dd.when_present().select "12"
    $profile_resident_yy.when_present().select "Year"
    $profile_save_changes.click
    sleep 5
    assert $profile_resident_mm.selected? "Month"
    assert $profile_resident_dd.selected? "Day"
    assert $profile_resident_yy.selected? "Year"
  end

  #Test 25840: Verify user_can_save_date
  def test_ID_25840_edit_profile_resident_since_06
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $profile_resident_mm.when_present().select "March"
    $profile_resident_dd.when_present().select "18"
    $profile_resident_yy.when_present().select "1981"
    $profile_save_changes.click
    sleep 5
    assert $profile_resident_mm.selected? "March"
    assert $profile_resident_dd.selected? "18"
    assert $profile_resident_yy.selected? "1981"
  end

  #Test 25840: Verify user_can_return_date_to_the_default
  def test_ID_25840_edit_profile_resident_since_07
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $profile_resident_mm.when_present().select "Month"
    $profile_resident_dd.when_present().select "Day"
    $profile_resident_yy.when_present().select "Year"
    $profile_save_changes.click
    sleep 5
    assert $profile_resident_mm.selected? "Month"
    assert $profile_resident_dd.selected? "Day"
    assert $profile_resident_yy.selected? "Year"
  end
end # end of Class