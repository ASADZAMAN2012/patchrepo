$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class UserUpdates < GlobalVariables

#Test 25866: Comment on post you wrote
  def test_ID_25866_comment_on_post_you_wrote()
    @msg = "Automated comment text #{random}"
    login $user_1_email, $master_password
    read_all_updates
    inline_posting_to_any_blog("test1")
    logout_common
    login $user_2_email, $master_password
    sleep 2
    $browser.goto("http://#{$local_patch}#{$environment}.i.patch.com/blogs/test1")
    $news_comment_icon.click
    sleep 3
    $news_leave_comment_textfield.set @msg
    $news_leave_comment_textfield.click
    sleep 2
    $news_post_comment.click
    sleep 3
    assert $browser.text.include? @msg
    logout_common
    login $user_1_email, $master_password
    verify_updates
  end
end  # end of Class

