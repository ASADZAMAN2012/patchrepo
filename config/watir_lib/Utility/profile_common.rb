require 'Utility/common_methods'
include Common_Methods

module Profile_Common
  def go_to_edit_profile_page
    $browser.goto($patch_users)
    $profile_edit.when_present().click
    sleep 5
  end

  def navigate_to_profile
    $header_profile_avatar.click
    sleep 2
    $header_profile_your_profile.click
  end

  def click_group_icon_verify_redirect(groupIconName)
    $browser.div(:class => /pull-left avatar avatar-mid/).link(:href => Regexp.new(groupIconName)).click
    sleep 3
    assert $browser.url.include? groupIconName
    $browser.back
  end

  def click_group_name_verify_redirect(groupName)
    $browser.div(:class => /email-pref-box/).link(:href => Regexp.new(groupName)).click
    sleep 5
    assert $browser.url.include? groupName
    $browser.back
  end
end   #end of Module : Profile Common

module Change_Password_Methods
  require 'Utility/common_methods'

  def go_to_change_password_page
    go_to_edit_profile_page
    $profile_change_pass.when_present().click
    sleep 5
  end

  def change_password_original_to_temp(original, temp)
    $profile_old_pass.when_present().set original
    $profile_new_pass.when_present().set temp
    $profile_confirm_pass.when_present().set  temp
  end

  def change_password_temp_to_original(temp, original)
    $profile_old_pass.when_present().set temp
    $profile_new_pass.when_present().set original
    $profile_confirm_pass.when_present().set original
  end
end

module Edit_Profile_details

  def save_name(name)
    $profile_name.when_present().set name
    $profile_save_changes.when_present().click
    sleep 3
    assert $profile_name.value == name
  end
end # end of Module : Edit Profile Details

module Email_Settings
  require 'Utility/common_methods'

  def check_save_verify_checked(cbox)
    $browser.checkbox(:value, Regexp.new(cbox)).set
    $profile_save_changes.click
    sleep 5
    assert $browser.checkbox(:value, Regexp.new(cbox)).set?
  end
end    # end of Module : Email Settings

module Personal_Info

  def retain_original_email_id
    $profile_email.when_present().click
    $profile_email.when_present().set $user_1_email
    sleep 1
    $profile_password.when_present().set $master_password
    $profile_save_changes.when_present().click
    assert $profile_email.value == $user_1_email
  end
end   # end of Module : Personal_info

module Your_Post
  def delete_draft_profile(groupName)
    $browser.link(:text, Regexp.new(groupName)).click
    $profile_delete_icon.when_present().click
    $delete_on_modal.when_present().click
  end
end

module Create_New_Group
  require 'Utility/common_methods'

  def create_a_group_invite_others_to_join(groupType, groupCategory)
    $browser.goto($patch_new_group)
    $browser.img(:alt, Regexp.new(groupType)).click
    $group_name.set("Automated Group Name #{random}")
    group_name_value = $group_name.value
    $group_description.set("Automated Description #{random}")
    sleep 5
    $browser.span(:class => /content/, :text => Regexp.new(groupCategory)).fire_event("onclick")
    sleep 5
    $choose_icon.fire_event("onclick")
    sleep 5
    $create_group.when_present().click
    sleep 5
    $skip_button.when_present().click
    sleep 5
    assert $browser.text.include? "#{group_name_value}"

    $invite_to_group.fire_event("onclick")
    sleep 3
    $invite_email.fire_event("onclick")
    sleep 3
    $browser.driver.switch_to.window($browser.driver.window_handles[1])
    $contacts_email.wait_until_present
    $contacts_email.set "#{$user_2_email}"
    $contacts_email.wait_until_present()
    $contacts_email.set "#{$user_2_email}"
    $invite_people.click
    $invite_success.when_present().click
    sleep 3
    $browser.driver.switch_to.window($browser.driver.window_handles[0])
    return group_name_value
  end

  def inline_posting_to_any_blog(blogName)
    $browser.goto("http://#{$local_patch}#{$environment}.i.patch.com/blogs/#{blogName}")
    wait_for_ajax
    sleep 3
    $post_activate_note.click
    post_title = "Automated Inline Post Title #{random}"
    sleep 2
    $browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Inline Post Short Body #{random}')")
    sleep 3
    $post_inline_article_title.click
    $post_inline_article_title.set(post_title)
    $post_media_button_alt.click
    sleep 1
	file_upload "GlacierBasinTrailMtRainier.JPG"
	  sleep 2
    $post_now_alt_7.click
    sleep 5
    return post_title
  end

  def count_draft_current
    $count_of_drafts.wait_until_present()
    unTrimmedCount = $count_of_drafts.text
    trimmedCount = unTrimmedCount.gsub(/[()]/, "")
    draftNum = trimmedCount.to_i
    return draftNum
  end

  def count_post_current
    $count_of_published.wait_until_present()
    unTrimmedCount = $count_of_published.text
    trimmedCount = unTrimmedCount.gsub(/[()]/, "")
    postNum = trimmedCount.to_i
    return postNum
  end

  def count_scheduled_current
    $count_of_scheduled.wait_until_present()
    unTrimmedCount = $count_of_scheduled.text
    trimmedCount = unTrimmedCount.gsub(/[()]/, "")
    postNum = trimmedCount.to_i
    return postNum
  end

  def create_draft(groupName)
    $browser.goto($patch_note)
    $post_pick_group.when_present().click
    $browser.link(:text, Regexp.new(groupName)).click
    $post_compose_note.when_present().set("Note field populated by automated test.")
    $save_as_draft.when_present().click
    $draft_saved_message.wait_until_present()
  end

  def go_to_scheduled_tab_on_your_post_page
    $profile_scheduled.when_present().click
    $profile_delete_on_scheduled_post.wait_until_present()
  end

  def go_to_draft_tab_on_your_post_page
    go_to_edit_profile_page
    $profile_your_posts.when_present().click
    $profile_drafts.click
  end

  def find_a_group(groupName)
    $search_textfield.when_present().set "#{groupName}"
    $search_text_button.when_present().click
    sleep 5
    assert $browser.text.include? "#{groupName}"

    $browser.strong(:text => Regexp.new(groupName)).when_present().click
    sleep 5
  end

  def follow_a_group
    $follow_a_group.when_present().fire_event("onclick")
    $follow_success_text.wait_until_present()
    $follow_success_ok_button.when_present().click
    sleep 5
  end

  def read_all_updates
    if $profile_notification_num.exist?
      $profile_notification_num.click
      $profile_see_all_updates.click
    else

    end
  end

  def verify_updates
    sleep 4
    for i in 0..5
      if $profile_notification_num.exist? then
        break
      end
      $browser.refresh
      sleep 4
    end
    assert $profile_notification_num.exist?
  end
end
