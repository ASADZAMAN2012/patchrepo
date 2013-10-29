$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class FlagContent < GlobalVariables

#Test 31735: Flag a Board as normal user
  def test01_flag_board_post
    login $user_1_email, $master_password
    $browser.goto($patch_news_post_open_article)
    sleep 4 
    $post_flag_link.click
    sleep 4 
    assert $browser.text.include? "Flag this content?"
    
    $post_flag_submit.click
    sleep 4
    assert $browser.text.include? "The post was successfully flagged."
  end

#Test 31675:  Flag post as Admin
  def test03_flag_board_post_admin
	login $admin_1_email, $master_password
	$browser.goto($patch_news_school_group)
	sleep 4 
	$news_page_top_post_link.click #select first post listed
	wait_for_ajax
	assert $post_delete_post.exists?
	@title = $post_headline_title.text

	$post_flag_link.click
    sleep 4 
    assert $browser.text.include? "Flag this content?"
     
    $post_flag_submit.click
    sleep 4
    assert !($browser.text.include? @title) #verify article is not listed in the news section anymore	
  end
  
#Test 31675:  Flag post as Editor
  def test04_flag_board_post_editor
	login $admin_1_email, $master_password
	$browser.goto($patch_news_school_group)
	sleep 4 
	$news_page_top_post_link.click #select first post listed
	wait_for_ajax
	assert $post_delete_post.exists?
	@title = $post_headline_title.text

	$post_flag_link.click
    sleep 4 
    assert $browser.text.include? "Flag this content?"
     
    $post_flag_submit.click
    sleep 4
    assert !($browser.text.include? @title) #verify article is not listed in the news section anymore	
  end
end  # end of Class