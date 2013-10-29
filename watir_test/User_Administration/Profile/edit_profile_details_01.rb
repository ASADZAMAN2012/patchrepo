$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class EditProfile < GlobalVariables

#Test 25835: Verify after email settings link clicked it points to correct page
  def test_ID_25835_edit_profile_desc
    login $user_1_email, $master_password
    go_to_edit_profile_page
    assert $profile_picture.exists?
    assert $profile_name.exists?
    assert $profile_gender.exists?
    assert $profile_home_patch.exists?
    assert $profile_resident_mm.exists?
    assert $profile_resident_dd.exists?
    assert $profile_resident_yy.exists?
    assert $profile_i_am_a.exists?
    assert $profile_more_about.exists?
    assert $profile_community.exists?
    assert $profile_cancel.exists?
    assert $profile_save_changes.exists?
  end

#Test 25836: Verify valid profile pic uploaded
  def test_ID_25836_edit_profile_pic_01
    login $user_1_email, $master_password
    go_to_edit_profile_page
    file_upload "valid.jpg"

    $save_changes_profile_pic.when_present().click
    sleep 5
    $profile_save_changes.when_present().click
    sleep 5
  end

#Test 25836: Verify unable to upload non image file
  def test_ID_25836_edit_profile_pic_02
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $file_upload.set("#{$testDir}/PDFDocument.pdf")
    sleep 5
    assert !($image_crop.exists?)
    $profile_cancel.click 
  end

#Test 25836: Verify user is able to cancel photo upload dialog
  def test_ID_25836_edit_profile_pic_04
    login $user_1_email, $master_password
    go_to_edit_profile_page
    
    $file_upload.set("#{$testDir}/valid.jpg")
    sleep 5
    $cancel_photo_upload_dialog.click
  end
end # end of Class