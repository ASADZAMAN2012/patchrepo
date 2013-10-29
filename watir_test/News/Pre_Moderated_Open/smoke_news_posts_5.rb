$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNewsPageElement < GlobalVariables
	
#Test 1: Delete an article post
	def test01_pre_open_news_delete_article_post_TC_24307
    	login $editor_1_email, $master_password
		$browser.goto($patch_news_pre_open_article_new)
		
		$post_article_title.when_present.set "Article #{random}"
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
		sleep 3
		$post_now_alt_1.when_present.fire_event("onclick")
		
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		sleep 2
		assert $browser.text.include?("The post was successfully deleted.")
	end
	
#Test 2: Post a note outside home community
	def test02_pre_open_news_post_note_outside_home_TC_27491
		@msg = "Note post #{random}"
		login $editor_1_email, $master_password
		$browser.goto($patch_flatiron_news_school_news)
		
		$post_activate_note.when_present.fire_event("onclick")
		sleep 3
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{@msg}')")
		$post_inline_article_title.click #needed to click out to activiate Post Now button
		sleep 2
    	$browser.send_keys :enter

#		$browser.refresh
		wait_for_ajax
		sleep 3
    	if $environment == 'nixon'
    	  assert $browser.text.include? @msg
    	else 
    	  assert $browser.text.include? "Your draft has been submitted."
    	end
	end
	
#Test 3: Post an article outside home community	
	def test03_pre_open_news_post_article_outside_home_TC_27491
		@msg = "Article #{random}"
		login $admin_1_email, $master_password
		$browser.goto($patch_flatiron_news_school_news_article_new)
		sleep 3
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
		$post_article_title.when_present.set(@msg)
		sleep 2
		$browser.send_keys :enter
		sleep 4
		assert $browser.text.include? @msg
 	end
	
#Test 4: Post media outside home community
	def test04_pre_open_news_post_media_outside_home_TC_27491
		@msg = "Note field pictures of hiking mt. rainier #{random}."
		login $editor_1_email, $master_password
		$browser.goto($patch_flatiron_news_school_news)
		
		$post_activate_note.when_present.fire_event("onclick")
		sleep 3
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{@msg}')")
		$post_inline_article_title.click #needed to click out to activiate Post Now button
		sleep 2
		$post_add_media_note.click
		file_upload "Kemosabe.PNG"
		$post_inline_article_title.click 
		$browser.send_keys :enter
#		$browser.refresh
		sleep 2
		if $environment == 'nixon'
    	  assert $browser.text.include? @msg
    	else 
    	  assert $browser.text.include? "Your draft has been submitted."
    	end
	end
end