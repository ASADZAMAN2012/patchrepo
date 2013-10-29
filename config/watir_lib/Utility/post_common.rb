require 'Utility/common_methods'
include Common_Methods

module Post_Common_Methods	
	def	create_event(title)
		$post_event_title.when_present.set(title)
 		$post_event_calendar_start_text.when_present.set("#{next_year}-12-25")  
 		sleep 2
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Super fun event.  the best ever!')")
		sleep 4
		$post_now_event.fire_event("onclick")
	end
	
	def postNoteSetup(title)
		sleep 2
 		$post_activate_note.when_present.fire_event("onclick")
 		sleep 2
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').click")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Note post #{random}')")
		$post_inline_article_title.when_present.set(title)
    	sleep 2
    	$post_inline_article_title.click 
		$browser.send_keys :enter
  	end
  	
  	def postApproveNoteSetup(note)
		sleep 2
 		$post_activate_note.when_present.fire_event("onclick")
 		sleep 4	
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').click")
 		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{note}')")
		$post_inline_article_title.when_present.set("Approval Note")
    	sleep 2
    	$post_inline_article_title.click 
    	sleep 2
		$post_submit_approval_alt2.click

    	wait_for_ajax
    	$browser.text.include? "Your draft has been submitted. To find it, click the Account button in the top menu bar and select"
  	end

	def deleteNotePost
		sleep 4
		$browser.link(:text, /Note post/).click
		sleep 2
		
		if $browser.text.include? "Our system is having trouble loading this page"
		$browser.refresh
		else nil
		end 
		
		$profile_delete_post_alt.when_present.click
		sleep 2
		$post_delete_confirm.when_present.click
	end
		
	def create_article_wGroup(title)
 		$post_article_title.set(title)
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Text only article #{random}')")
		sleep 2
		$post_now_alt_1.fire_event("onclick")
	end
	
	def create_article_1jpeg_wGroup(title)
 		$post_article_title.set(title)
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('1 image article. #{random}')")
 		$post_add_media_article.when_present.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		sleep 4
		$post_now_alt_1.fire_event("onclick")
	end
	
	def create_article_2png_wGroup(note)
		$post_activate_note.when_present.fire_event("onclick")
		$post_media_description.when_present.set(note)
		$post_add_media_note.when_present.click
		file_upload "Kemosabe.PNG"
		$post_add_media_note.when_present.click
		file_upload "Kemosabe.PNG"
		$post_now.when_present.fire_event("onclick")
	end
	
	def repostGroupPop
		sleep 2
		$post_pick_group.fire_event("onclick")
		$post_group_select.click
 		sleep 2
 	end
 	
 	def post2ndGroupPop
		$post_add_another.when_present.click
		$post_group_select_2.when_present.click
 		sleep 2
 	end
 	
 	def create_article_draft(title)
 		$post_article_title.set(title)
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Draft Article Automated Text')")
		$post_save_draft.click
		
		assert $post_draft_success.exists?
 	end
 	
 	def post_draft
 	    $browser.goto($patch_users)
        $profile_edit.click
 		$profile_your_posts.click
 		$browser.ul(:id => /new_drafts_wraper/).li(:index => 0).a(:index => 0).click
        sleep 2
        if $environment == 'staging'
        $post_submit_approval_alt.click
        else
        $post_now_alt_1.click
        end
        sleep 2
	end
	
	def post_draft #use on premoderated posts
 	    $browser.goto($patch_users)
        $profile_edit.click
 		$profile_your_posts.click
 		$browser.ul(:id => /new_drafts_wraper/).li(:index => 0).a(:index => 0).click
        sleep 2
		$post_submit_approval_alt.click
        sleep 2
	end
	
	def delete_draft
 		$browser.goto($patch_users)
        $profile_edit.click
 		$profile_your_posts.click
 		$browser.ul(:id => /new_drafts_wraper/).li(:index => 0).a(:index => 0).click
        sleep 2
		$post_delete_draft.when_present.click
	end
	
	def cancel_delete
 		$browser.goto($patch_users)
        $profile_edit.click
 		$profile_your_posts.click
 		$browser.ul(:id => /new_drafts_wraper/).li(:index => 0).a(:index => 0).click
        sleep 2
        $post_delete_draft.when_present.click
		$profile_delete_cancel.when_present.click
	end
	
	def close_delete
 		$browser.goto($patch_users)
        $profile_edit.click
 		$profile_your_posts.click
 		$browser.ul(:id => /new_drafts_wraper/).li(:index => 0).a(:index => 0).click
        sleep 2
		$post_delete_draft.when_present.click
		$profile_delete_close.when_present.click
	end
	
	def edit_draft
 		$browser.goto($patch_users)
        $profile_edit.click
 		$profile_your_posts.click
 		$browser.ul(:id => /new_drafts_wraper/).li(:index => 0).a(:index => 0).click
        sleep 5
        $post_pre_edit_post.click 
        sleep 4
		
		if $post_compose_note.exists?
			$post_compose_note.set("Note field populated by automated test.")
		else nil
		end
		
		if $post_article_title.exists?
			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		else nil
		end
		
		if $post_media_description.exists?
			$post_media_description.set("Media Description #{random}.")
		else nil
		end
		
		if $post_event_location.exists?
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")	
		else nil
		end
		
        if $environment == 'staging'
        $post_submit_approval_alt.click
        else
        $post_now.click
        end
	end

 	def commentNotePop(comment)
 		repostGroupPop
		$post_media_description.set(comment)
		$post_now_alt_1.fire_event("onclick")
 	end
 	
 	def create_article_woGroup(title)
 		repostGroupPop
 		$post_article_title.set(title)
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		sleep 2
		$post_now_alt_1.fire_event("onclick")
	end

	def commentPopSubmit(comment)
		sleep 2
		$comment_textfield.when_present.click
		$comment_textfield.when_present.set(comment)
		$comment_submit.when_present.click
		sleep 2
		assert $browser.text.include?(comment)
	end

	def commentDelete
		$comment_delete_link.when_present.click
		sleep 2
		$comment_delete_confirm_modal.click
		sleep 2
	end
	
	def commentCancelDelete
		$comment_delete_link.when_present.click
		sleep 2
		$comment_delete_cancel_modal.when_present.click
	end
	
	def commentCancelFlag
		sleep 4
		$comment_flag_link.click
		sleep 8 #when_present extends wait too long
		$comment_flag_cancel_modal.click
	end
	
	def commentCloseFlag
		sleep 2
		$comment_flag_link.click
		sleep 4 #when_present extends wait too long
		$comment_flag_close_modal.click
	end

	def postPublishLater  #refactor to make unique
		$post_advanced.when_present.click
		$post_advanced_calendar.when_present.set("#{next_year}-10-31")
		$post_advanced_time.when_present.select("8:00 AM")
	end
 	
	def repost(note)
		$repost_new_button.fire_event("onclick")
		sleep 2
		$post_pick_group.when_present.fire_event("onclick")
		$report_group_choose.when_present.click
		if "" != note
		  $browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend(note)")
		end
		$repost_button.when_present.click
	end

	def groupAddRemoveAdd(text)
		$repost_new_button.fire_event("onclick")
		$post_pick_group.when_present.fire_event("onclick")
		$post_group_select.when_present.click
		$repost_remove_group.when_present.fire_event("onclick")
		
		sleep 4
		$post_group_select_2.when_present.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{text}')")
		$repost_button.when_present.click
	end
	
	def twoGroupSelect
		$repost_new_button.fire_event("onclick")
		$post_pick_group.when_present.fire_event("onclick")
		$post_group_select.when_present.click
		sleep 2
		$post_pick_category.click
		$post_group_select.when_present.click
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Repost text #{random}.')")
		$repost_button.when_present.click
	end
	
	def charString(num)
		o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
		string  =  (0...num).map{ o[rand(o.length)] }.join
	end

	def repostPopulate250
		sleep 3
		$repost_new_button.fire_event("onclick")
		$post_pick_group.click
		$post_pick_group.click
		$repost_text.set("#{charString(250)}")
		$repost_button.click
	end

	def repostPopulate251
		sleep 3
		$repost_new_button.fire_event("onclick")
		$post_pick_group.click
		$post_pick_group.click
		$repost_text.set("#{charString(251)}")
		$repost_button.click
	end
	
	def checkIfIncorrectErrorDisplays
  		if $boards_group_check_errors.exists?
  			$group_create.click
		else nil
		end
	end
end