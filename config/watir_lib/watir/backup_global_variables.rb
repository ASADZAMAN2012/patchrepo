$LOAD_PATH << './config/watir_lib'  
require 'watir/test'
require 'watir/link_variables'

##########################################	
##Don't forget! Set the environments!   ##
##The #{$environment} and #{$local_patch}##
##variables can be found in             ##
##lib\watir\test.rb in the WatirTest    ##
##class, approximately line 64!	        ##
##########################################

class GlobalVariables < WatirTest
  def setup
    super
    $browser = driver

#Mellissa's Added Variables
	$profile_manage_groups = $browser.link(:href, /edit\/basic_information/)
	$flatiron_business = $browser.div(:class, /search-row/).link(:text, /Flatiron Lounge/)
	$post_inline_article_title = $browser.div(:id, /post_container/).text_field(:id, /post_title/)
	$flatiron_announcement_select = $browser.link(:text=> "Announcements", :index => 1 )
	$post_note_to_delete_link = $browser.div(:id, /feed/).div(:class, /postItem/).link(:text, /Note/)
	$fighting_mongooses = $browser.link(:text, /ongoose/)
	$board_opinion_category = $browser.element(:xpath, "//*[@id=\"group_form\"]/fieldset/div[5]/div[3]/ul/li[2]/a/i")
	$post_event_type_family = $browser.div(:class, /categories-list/).span(:text, /Family/)
	$post_event_type_free = $browser.div(:class, /categories-list/).span(:text, /Free/)
	$post_event_category_sport = $browser.li(:class => /pretty-checkbox/, :text => /Sports/)
	$post_event_category_government = $browser.li(:class => /pretty-checkbox/, :text => /Government/)
	$post_event_category_garage = $browser.li(:class => /pretty-checkbox/, :text => /Garage Sales/)
	$post_event_category_art = $browser.li(:class => /pretty-checkbox/, :text => /Art & Entertainment/)
	$post_event_category_charitable = $browser.li(:class => /pretty-checkbox/, :text => /Religious & Charitable/)
	$post_event_category_volunteer = $browser.li(:class => /pretty-checkbox/, :text => /Volunteer/)
	$post_event_category_school = $browser.li(:class => /pretty-checkbox/, :text => /Schools/)
	$post_event_category_food = $browser.li(:class => /pretty-checkbox/, :text => /Food & Drink/)
	$post_event_category_real = $browser.li(:class => /pretty-checkbox/, :text => /Real Estate/)
  #comments

#Asad's Added Variables
  $make_an_announcement_box = $browser.span(:class => /default-narrow-board-message/).small(:text => /Make an announcement/)
  $add_photo_video_inline_post_to_board = $browser.span(:class, "upload_cta")
  
#Stephanies's Added Variables
	$header_tools_icon = $browser.span(:text, "Tools")
	$header_tools_start_news = $browser.link(:text, "+ Start a Section") #admin/editor only
	$post_submit_approval = $browser.button(:text => /Submit For Approval/)
	
############################
##User Navigation Variables##
#############################

###################################################
##http://#{$local_patch}#{$environment}.patch.com##
###################################################
#Home Page Header
    $home = $browser.link(:id => /home_menu/)
    $cover_photo = $browser.div(:id, /js-town-cover/)   #Shamiul#
    $news = $browser.link(:id => /news_menu/)
    $boards = $browser.link(:id => /boards_menu/)
    $events = $browser.link(:id => /events_menu/)
    $business = $browser.link(:id => /listings_menu/)
    $twitter_icon_top = $browser.i(:class => /icon_twitter/)
    $facebook_icon_top = $browser.i(:class => /icon_facebook/)
    $search_box = $browser.text_field(:name => /keywords/)
    $search_icon = $browser.button(:class => /search-icon/)
    $feedback = $browser.link(:id => /feedback_callout/)
    #comments

#Home Page top
    $daily_newsletter = $browser.strong(:text => /Get the Daily Newsletter/)
    $join = $browser.strong(:text => /Join/)
    $sign_in_header = $browser.strong(:text => /Sign In/)
    $patch_logo_top = $browser.span(:class => /patch-logo/)
    $join_patch_now = $browser.link(:text => /Join Patch Now/)

#Home Page Body
    $post_button = $browser.img(:src => /post_button/)
    $add_video_icon = $browser.i(:class => /icon_add-video/)
    $add_photo_icon = $browser.i(:class => /icon_add-photo/)
    $show_me_more_news_and_blog = $browser.link(:text => /Show me more news & blogs/)
    $recommend_icon = $browser.i(:class => /recommend-icon/)
    $comment_icon = $browser.i(:class => /comment-icon/)
    $blog_icon = $browser.i(:class => /icon_blog/)
    $post_an_event = $browser.i(:class => /Post an event/)
    $more_boards = $browser.link(:text => /More Boards/)
    $see_all = $browser.link(:text => /See All/)

#Home Page Footer
    $get_the_patch_news_letter = $browser.span(:text => /Get the Patch Newsletter/)
    $email_icon = $browser.i(:class => /email-icon/)
    $follow_us_on_twitter = $browser.span(:text => /Follow us on Twitter/)
    $twitter_icon_small = $browser.i(:class => /icon_twitter-small/)
    $like_us_on_facebook = $browser.span(:text => /Like us on Facebook/)
    $facebook_icon_small = $browser.i(:class => /icon_facebook-small/)
    $post_on_the_boards = $browser.link(:text => /Post on the Boards/)
    $post_an_event = $browser.link(:text => /Post an Event/)
    $write_a_review = $browser.link(:text => /Write a Review/)
    $start_a_blog = $browser.link(:text => /Start a Blog/)
    $sign_in_footer = $browser.link(:text => /Sign In/, :index => 1)
    $join_patch = $browser.link(:text => /Join Patch/)
    $why_join = $browser.link(:text => /Why Join?/)
    $solve_a_problem = $browser.link(:text => /Solve a problem/)
    $tips_helps = $browser.link(:text => /Tips & Help/)
    $contact_us = $browser.link(:text => /Contact us/)
    $about_us = $browser.link(:text => /About us/)
    $jobs = $browser.link(:text => /Jobs/)
    $terms_of_use = $browser.link(:text, /Terms of Use/)
    $about_our_ads = $browser.link(:text => /About our Ads/)
    $privacy_policy = $browser.link(:text, /Privacy Policy/)
    $patch_blog = $browser.link(:text => /Patch Blog/)
    $advertise = $browser.link(:text => /Advertise/)
    $claim_your_listing = $browser.link(:text => /Claim your listing/)
    $add_your_business = $browser.link(:text => /Add your business/)
    $patch_u = $browser.link(:text => /PatchU/)
    $volunteer = $browser.link(:text => /Volunteer/)
    $copyright = $browser.div(:text => /Copyright/)
    $patch_editor = $browser.span(:text => /Patch Editor/)
    $patch_logo_footer = $browser.i(:class => /icon_footer-logo/)
    $find_your_patch = $browser.strong(:text => /Find your Patch/)
	$footer_start_a_blog = $browser.strong(:text => /Start a Blog/)

    #########################################################
    ##Asad Profile Variable##
    #########################################################

#Profile Links Sidebar
    $profiles_view = $browser.link(:text, /View Profile/)
    $profiles_personal = $browser.link(:text, /Personal Info/)
    $profiles_change_pass = $browser.link(:text, /Change Password/)
    $profiles_updates = $browser.link(:text, /Updates/)
    $profiles_your_posts = $browser.link(:text, /Your Posts/)
    $profiles_email_settings = $browser.link(:text, /Email Settings/)
    $profiles_manage_groups = $browser.link(:text, /Manage Groups/)
    $profiles_updates_side_link = $browser.element(:xpath, "//ul[@id='userNav']/li/a[text()='Updates']")

#Email Settings
    $profiles_daily = $browser.checkbox(:name, /newsletter/)
    $profiles_comments = $browser.checkbox(:name, /commentPreferences/)
    $profiles_post_comment = $browser.checkbox(:value, /CommentOnPost/)
    $profiles_reposted = $browser.checkbox(:value, /Repost/)
    $profiles_group_invite = $browser.checkbox(:value, /InvitationJoinGroup/)
    $profiles_group_manager = $browser.checkbox(:value, /GroupAccessModerator/)
    $profiles_group_contribute = $browser.checkbox(:value, /GroupAccessContributor/)
    $profiles_group_follower = $browser.checkbox(:value, /PrivateGroup/)
    $profile_follows = $browser.checkbox(:value, /FollowNotificationForModerator/)
    $profiles_posts = $browser.checkbox(:value, /PostForModerator/)
    $profiles_request = $browser.checkbox(:value, /RequestFollow/)
    $profiles_preferences = $browser.select_list(:name, /frequency/)
    #comments

#Profile Header
    $profiles_header_avatar = $browser.img(:id, /header-avatar/)
    $profiles_header_menu_your_profile = $browser.link(:text, /Your Profile/)

#Manage Groups
    $profiles_group_email = $browser.link(:text, /Email Settings/)
    $profiles_manage_group_follow = $browser.button(:class, /group-follow/)
    $group_icon_on_manage_group = $browser.element(:xpath => "//ul[@id='groupsSortable']//a/img")
    $email_settings_manage_group = $browser.element(:xpath => "//ul[@id='groupsSortable']//a[contains(text(), 'Email Settings')]")
    $profiles_manage_group_follow = $browser.button(:class, /group-follow/)


#Change Password
    $profiles_old_pass = $browser.text_field(:name, /old_password/)
    $profiles_new_pass = $browser.text_field(:name, /new_password/)
    $profiles_confirm_pass = $browser.text_field(:name, /confirm_password/)
    $profiles_incorrect_pass = $browser.div(:text, /Password incorrect/)
    $password_changed_successfully = $browser.div(:text, /Password changed successfully/)

#Personal Information
    $profiles_email = $browser.text_field(:id, /contact_email/)
    $profiles_phone = $browser.text_field(:id, /contact_phone/)
    $profiles_password = $browser.text_field(:id, /password/)
    $invalid_email_error = $browser.p(:text, /Must be a valid email/)
    $password_prompt_message = $browser.p(:text, /Enter your password before you can continue with your update/)

#Edit Profile Details
    $profiles_save_changes = $browser.button(:id, /save/)
    $profiles_picture = $browser.link(:id, /avatar_upload/)
    $profiles_name = $browser.text_field(:name, /name/)
    $profiles_gender = $browser.select_list(:name, /gender/)
    $profiles_home_patch = $browser.select_list(:name, /hometown/)
    $profiles_resident_mm = $browser.select_list(:name, /month/)
    $profiles_resident_dd = $browser.select_list(:name, /day/)
    $profiles_resident_yy = $browser.select_list(:name, /year/)
    $profiles_i_am_a = $browser.text_field(:name, /tagline/)
    $profiles_more_about = $browser.text_field(:name, "bio")
    $profiles_community = $browser.text_field(:name, "favorite")
    $profiles_cancel = $browser.link(:class, /close-cancel/)
    $save_changes_profile_pic = $browser.button(:text, /Save/)
    $image_crop = $browser.div(:class, /jcrop-tracker/)
    $close_photo_upload_dialog = $browser.button(:class, /close close-cancel/)
    $cancel_photo_upload_dialog = $browser.button(:class, /close close-cancel/)
    $profiles_edit_button = $browser.a(:href => /edit/, :class => /btn-success/)

#View Profile Page
    $profiles_picture_view = $browser.div(:class => /sidebar/)
    $group_for_guest_user = $browser.link(:href => /users/)
    $profiles_edit_link = $browser.div(:id, /edit-profile/).link(:href, /edit/)

#Your Posts
    $count_of_drafts = $browser.element(:xpath => "//a[@href= '#new_drafts']/span[@class='js-count']")
    $count_of_submitted_drafts = $browser.element(:xpath => "//a[@href= '#submitted_drafts']/span[@class='js-count']")
    $count_of_scheduled = $browser.element(:xpath => "//a[@href= '#scheduled_drafts']/span[@class='js-count']")
    $count_of_published = $browser.element(:xpath => "//a[@href= '#published_drafts']/span[@class='js-count']")
    $profiles_drafts = $browser.link(:href, /drafts/)
    $profiles_delete_icon = $browser.i(:class, /icon_delete/)
    $delete_on_modal = $browser.button(:id, /draft_delete/)
    $inline_post_form = $browser.div(:class => /group-inline-form/)
    $inline_post_title = $browser.text_field(:id => /post_title/)
    $inline_post_short_body = $browser.text_field(:id => /post_short_body/)
    $inline_post_now = $browser.button(:text => /Post now/)
    $inline_post_now_alt = $browser.button(:id => /post_submit/)
    $post_now_button = $browser.button(:text => /Post Now/)

#Edit Profile
#    $profiles_account_avatar = $browser.img(:id, /header-avatar/)
    $profiles_account_avatar = $browser.div(:id, /header-avatar/)
    
#Create Post
    $profiles_pic_upload = $browser.file_field(:id, //)

    $group_select = $browser.select_list(:name, /group-chooser-select/)

    $post_now_caret = $browser.button(:id => /post_dropdown/).span(:class, /caret/)
    $save_as_draft = $browser.link(:text, /Save as draft/)
    $draft_saved_message = $browser.div(:class, /alert-post-message/)

#Business
    $share_review_text_field =   $browser.div(:class => /group-inline-form/)
    $post_compose_review =   $browser.text_field(:id => /post_body/)
    $group_post_button =   $browser.button(:id => /post_submit/)
    $leave_comment_textfield =   $browser.text_field(:id => /comment_body/)
    $group_post_comment =  $browser.button(:id => /comment_submit/)

#########################################################
##http://#{$local_patch}#{$environment}.patch.com/login##
#########################################################
#Login page (left partition) 
    $join_patch_button_left = $browser.link(:class, /btn-success/)

#Login page (right partition)
#	$signIn = $browser.button(:id, /signin/)
    $log_in_link = $browser.link(:text, /Sign in/)
    $join = $browser.link(:text, /Join now/)
    $email = $browser.text_field(:name, /email/)
    $email_placeholder = $browser.text_field(:placeholder, /email@website.com/)
    $sign_in_button = $browser.button(:id, /signin/)
    $password = $browser.text_field(:name, /password/)
    $password_confirm = $browser.text_field(:name, /confirm_password/)
    $join_patch_button_right = $browser.link(:href, /signup/)
    $sign_in_facebook = $browser.link(:class, /btn btn-facebook input-medium pull-left/)
    $remember_me = $browser.checkbox(:id, /persistent_1/)
    $forgot_password = $browser.link(:href, /forgot_password/)

#Login page error messages
    $email_error_invalid = $browser.div(:text, /Must be a valid email address/)
    $email_error_no_record = $browser.div(:text, /Password incorrect/)
#	$email_error_empty = cannot be checked. browser check, not js event.
    $password_error_invalid = $browser.div(:text, /Password incorrect/)
#	$password_error_empty = cannot be checked. browser check, not js event.
    $user_not_found_error = $browser.div(:text, /We do not have a user with that email address, please check the email you entered./)
    $login_error_check = $browser.div(:text, /Please check for errors/)

#After Login Modal
    $welcome_to_the_new_patch_dialog = $browser.button(:class, /close_modal/)
    $close_tour_dialog = $browser.link(:text, /Close tour/)

###################################################################
##http://#{$local_patch}#{$environment}.patch.com/forgot_password##
###################################################################
#Forgot Password page
    $forgot_password_email = $browser.text_field(:name, /email/)
    $forgot_password_go = $browser.button(:class, /success/)
    $forgot_password_success = $browser.div(:text, /that will enable you to reset your password/)

######################
##Subscription Box##
     #Shamiul#
######################

    $subscription_newsletter = $browser.div(:id, /js-newsletter_subscription/)
    $subscription_share_widgets = $browser.div(:class, /pull-right invisible-mobile half-headroom/)

########################################################
##http://#{$local_patch}#{$environment}.patch.com/news##
########################################################
	$news_compose_title = $browser.text_field(:name, /title/)
######################
##News Page Variables##
    #Shamiul#
######################

    $news_header = $browser.span(:text, /All News & Blogs/)
    #$news_twitter_icon = $browser.frame(:title => /Twitter Tweet/).span(:text => /Tweet/)
    $news_comment_icon = $browser.span(:class, "js-comments_count")  # icon span(:class, /icon_comment-icon/)
    $news_recommend_icon = $browser.span(:text, "Recommend")
    $news_leftnav_news_header = $browser.strong(:text, "News")
    $news_leftnav_blogs_header = $browser.strong(:text, "Blogs")
    $news_leftnav_startablog_button = $browser.link(:href, "/blogs/new")
    $news_showmore_button = $browser.link(:text, /Show More/)


########################################################
##http://#{$local_patch}#{$environment}.patch.com/boards##
########################################################

######################
##Boards Page Variables##
      #Shamiul#
######################

    $boards_header = $browser.span(:text, /All Boards/)
    $boards_inline_text = $browser.div(:text, "bd")
    #$boards_inline_image_icon = $browser.
    #$boards_inline_video_icon = $browser.
    $boards_showmore_button = $browser.link(:text, /Show More/)
    #$boards_moreboards_button = $browser
    #$boards_chains = $browser


########################################################
##http://#{$local_patch}#{$environment}.patch.com/events##
########################################################

######################
##Events Page Variables##
       #Shamiul#
######################

    #$events_header = $browser
    #$events_post_event_small = $browser
    #$events_post_event_large = $browser
    #$events_pick_date_icon = $browser
    #$events = $browser


########################################################
##http://#{$local_patch}#{$environment}.patch.com/businesses##
########################################################

######################
##Business Page Variables##
       #Shamiul#
######################

    #$business_header = $browser
    #$business_claim_listing = $browser
    #$business_carousel_left = $browser
    #$business_carousel_right = $browser


########################################################
##http://#{$local_patch}#{$environment}.patch.com/join##
########################################################
#Join page (left partition) 
    $join_patch_button_left = $browser.link(:class, /btn-success/)

#Join page (right partition)
    $sign_in = $browser.link(:class, /login/)
    $patch_home = $browser.link(:href, "/").img(:class, /login-cloud-logo/)
    $fullname = $browser.text_field(:name, /name/)
    $fullname_placeholder = $browser.text_field(:placeholder, /your username/)
    $email = $browser.text_field(:name, /email/)
    $email_placeholder = $browser.text_field(:placeholder, /username@website.com/)
    $password = $browser.text_field(:name, /password/)
    $password_confirm = $browser.text_field(:name, /confirm_password/)
    $password_placeholder = $browser.text_field(:placeholder, /password/)
    $breaking_news = $browser.element(:xpath, "//form[@id='js-signup_form']/div[2]/div[5]/div/label/i")
    $daily_newsletter_checkbox = $browser.element(:xpath, "//form[@id='js-signup_form']/div[3]/div/label/i")
    $terms_of_use = $browser.link(:text, /Terms of Use/)
    $privacy_policy = $browser.link(:text, /Privacy Policy/)
    $cancel_join = $browser.link(:text, /Cancel/)
    #$join_patch_button_right = $browser.button(:text, /Join Patch/)
    $join_patch_button_right = $browser.input(:id, /signup/) # changed by Asad
    $sign_in_facebook = $browser.link(:href, /authorize/)

#Join page error messages
    $join_error_please_check = $browser.div(:text, /Please check for errors/)
    $join_error_email_invalid = $browser.p(:text, /Must be a valid email address/)
    $join_error_email_in_use = $browser.div(:text, /email address already in use/)
    $join_error_password_length = $browser.div(:text, /Must be at least 7 characters/)

#Join Confirmation Modal Dialog
    $join_confirm_modal = $browser.div(:id, /myModal/)
    $please_check_text = $browser.div(:id, /myModal/).span(:text, /Please check your email/)
    $envelope_image = $browser.div(:id, /myModal/).image(:src, /mailbox/)
    $next_steps_text =  $browser.div(:id, /myModal/).span(:text, /We've just sent you a link to confirm your address. When you click that link, you will be registered and able to post your own stuff and create your own groups./)
    $resend_link = $browser.div(:id, /myModal/).link(:href, /confirmation_email/)
    $close_dialog_x = $browser.div(:id, /myModal/).button(:type, /button/)

######################
##Facebook Variables##
######################
    $facebook_email = $browser.text_field(:id, /email/)
    $facebook_password = $browser.text_field(:id, /pass/)
    $facebook_log_in = $browser.button(:value, /Log In/)
    $facebook_patch_sign_in = $browser.span(:text, /Sign in with Facebook/)
    $facebook_goto_app = $browser.button(:value, /Go to App/)
    $facebook_cancel_app = $browser.button(:value, /Cancel/)
    $facebook_allow = $browser.button(:value, /Allow/)
    $facebook_delete = $browser.button(:id, /u64e74v2/)
    $facebook_remove = $browser.div(:id, /app-settings/).link(:title, /Remove/)
    $facebook_remove_modal = $browser.div(:id, /dialog_1/).div(:class, /pop_container/).button(:text, /Remove/)
    $facebook_dropdown = $browser.div(:id, /userNavigationLabel/)
    $facebook_logout = $browser.button(:value, /Log Out/)
    $facebook_allow = $browser.div(:id, /content/).button(:name, /CONFIRM/)

##########################
##Show me how help links##
##########################
#Post
	$help_post_note = $browser.link(:href, /22491747/)
	$help_multiple_group_post = $browser.link(:href, /22491747#2/)
	$help_advanced_options = $browser.link(:href, /22491747#1/)
	$help_see_more = $browser.link(:href, /forums/) #same for profile and groups
	
#Profile
	$help_edit_profile = $browser.link(:href, /22491637/)
	$help_edit_account = $browser.link(:href, /22472011/)
	$help_change_password = $browser.link(:href, /22472011#1/)
	$help_about_updates = $browser.link(:href, /22491813#2/)
	$help_email_settings = $browser.link(:href, /22491813#1/)
	$help_about_posts = $browser.link(:href, /22493786/)
	$help_manage_groups = $browser.link(:href, /22503628/)
	
#Groups
	$help_edit_group_icon = $browser.link(:href, /22503628#2/)
	$help_edit_group_type = $browser.link(:href, /22503628#4/)
	$help_manage_roles = $browser.link(:href, /22503628#3/)
	$help_invite_people = $browser.link(:href, /22503628#1/)    

#######################
##Directory Variables##
#######################

##################
##Follow a Group##
##################
    $follow_group = $browser.button(:type=> /submit/, :class => /group-follow/)
    $follow_success_text = $browser.span(:class => /large-theme-header/, :text => /Great/)
    $follow_success_ok_button = $browser.link(:text => /OK/)
    $directory_review_follow_indicator = $browser.button(:class, "btn btn-with-icon group-follow following")
    $directory_review_follow = $browser.button(:class, /group-follow/) #fire_event("onclick")
    $follow_a_group = $browser.button(:text, /Follow/)
    $invite_to_group = $browser.link(:href, /invite_friends/)
    $invite_email = $browser.link(:href, /#email/)
    $contacts_email = $browser.text_field(:name, /manualEmails/)
    $invite_people = $browser.button(:id => /post_submit/)
    $invite_success = $browser.link(:text => /Ok/)
    $group_settings = $browser.link(:href, /basic_information/)
    $group_followers = $browser.link(:text, /Followers/)
    $group_access_dropdown = $browser.element(:xpath,"//div[@class='groups_followers_section']/div[contains(text(), 'Contributors')]/..//a[contains(@class, 'dropdown')]")
    $group_access_make_a_manager = $browser.link(:href, /Make a Manager/)
    $request_invite = $browser.button(:text => /Request Invite/)
    $approve_as_follower = $browser.button(:text => /Approve/)

#####################
##Featured Listings##
#####################
	$directory_scroll_left = $browser.i(:class, /scroll-left/)
	$directory_scroll_right = $browser.i(:class, /scroll-right/)
	$directory_button_1 = $browser.link(:id => /carousel/, :index => 1)
	$directory_button_2 = $browser.link(:id => /carousel/, :index => 2)
	$directory_button_3 = $browser.link(:id => /carousel/, :index => 3)
	$directory_button_4 = $browser.link(:id => /carousel/, :index => 4)
	$directory_button_5 = $browser.link(:id => /carousel/, :index => 5)
	$directory_title = $browser.div(:class, /carousel-inner/).link(:href, /listings/) #fire_event("onclick")
	$directory_image = $browser.div(:class, /carousel-inner/).div(:class, /avatar/).img(:src, //) #fire_event("onclick")

##################
##Latest Reviews##
##################
	$directory_icon = $browser.span(:class, /group-badge/)
	$directory_business = $browser.strong(:class, /group_name/).link(:href, /listings/)
	$directory_user = $browser.strong(:class, /author_name/).link(:href, /users/)
	$directory_review = $browser.div(:class, /review/).div(:class, /media/).link(:href, /groups/)
	$directory_comment = $browser.div(:id, /review_list/).div(:class, /feed-share/).link(:class, /comment/)
	$directory_comment_body = $browser.text_field(:id, /comment_body/) #to interact: click first, then set text (otherwise post comment button will not display)
	$directory_comment_post = $browser.button(:text, /Post Comment/)
	$directory_repost = $browser.div(:id, /review_list/).div(:class, /feed-share/).link(:class, /repost/)
	$repost_another_group = $browser.link(:text, /Add another group/)
	$repost_remove_group = $browser.div(:class, /add-group/).button(:class, /remove/)
	$repost_placeholder = $browser.text_field(:placeholder, /Add a message/)
	$repost_text = $browser.text_field(:id, /post_short/)
	$repost_link = $browser.i(:class => /icon_repost/)
	$repost_button = $browser.form(:id, /repost/).button(:id, /submit/)
	$repost_close = $browser.form(:id, /repost/).button(:class, /close/)
	$repost_cancel = $browser.form(:id, /repost/).button(:class, /cancel/)
	$repost_confirmation = $browser.form(:id, /edit_post_form/)

############################################################
##http://#{$local_patch}#{$environment}.patch.com/listings##
############################################################

##########
##Review##
##########
	$directory_review_flag = $browser.link(:text, /Flag/)
	$directory_flag_close_modal = $browser.div(:id, /global_modal/).button(:class, /close/)
	$directory_flag_terms_modal = $browser.div(:id, /global_modal/).link(:href, /terms/)
	$directory_flag_cancel_modal = $browser.div(:id, /global_modal/).button(:class, /cancel/)
	$directory_flag_confirm_modal = $browser.div(:id, /global_modal/).button(:id, /flag_submit/)
	$directory_flag_success = $browser.div(:class, /flash_text/)
	$directory_top = $browser.div(:class, /container_fluid/).link(:href, //)
	$directory_upcoming_events = $browser.link(:text, /Upcoming Events/)
	#$directory_review_begin must be clicked to interact with any of the following elements
	$directory_review_begin = $browser.div(:id, /lure/)
	$directory_review_close = $browser.div(:id, /inline_post/).button(:class, /close/)
	$directory_review_impressed = $browser.div(:id, /inline_post/).radio(:id, /impressed/)
	$directory_review_disappointed = $browser.div(:id, /inline_post/).radio(:id, /disappointed/)
	$directory_review_text = $browser.div(:id, /inline_post/).text_field(:id, /post_short_body/)
	$directory_review_title = $browser.text_field(:id, /post_title/)
	$directory_review_text_alt = $browser.div(:id, /inline_post/).text_field(:id, /post/)
	$directory_review_face_button = $browser.div(:id, /inline_post/).link(:id, /review/)
	$directory_review_note_button = $browser.div(:id, /inline_post/).link(:id, /note/)
	$directory_review_photo = $browser.div(:id, /inline_post/).div(:id, /post_pic/).link(:id, /pickfiles/)
	$directory_review_photo_caption = $browser.div(:id, /assets/).text_field(:class, /asset-caption/)
	$directory_review_photo_remove = $browser.div(:id, /assets/).link(:class, /close removefile/)
	$directory_review_post = $browser.div(:id, /inline_post/).button(:id, /post_submit/)
	$directory_review_photo_button = $browser.div(:id, /inline_post/).i(:class, /snapshot/)
	$directory_review_article_button = $browser.div(:id, /inline_post/).link(:id, /article/) #takes user to posts/article/new
	$directory_review_event_button = $browser.div(:id, /inline_post/).link(:id, /event/) #takes user to posts/event/new
	$directory_review_bottom_comment = $browser.text_field(:id, /comment/)
	$directory_listing_manager = $browser.div(:class, /container_fluid/).link(:href, /users/)
	$directory_review_follow_indicator = $browser.button(:class, "btn btn-with-icon group-follow following")
	$directory_review_no_follow_indicator = $browser.button(:class, "btn btn-success group-follow follow")
	$directory_first_note_review = $browser.div(:class, /feed-adj-margin/).div(:class, /note-media/).link(:href, /groups/)
	$directory_first_photo_review = $browser.div(:class, /media feed/).link(:class, /img thumbnail/)
	$directory_edit_review = $browser.div(:id, /author_controls/).form(:id, /edit_post_form/).link(:text, /Edit this Post/)
	$directory_delete_review = $browser.div(:id, /author_controls/).form(:id, /edit_post_form/).link(:text, /Delete this Post/)
	$directory_delete_close = $browser.div(:id, /delete_post_modal/).button(:class, /close/)
	$directory_delete_cancel = $browser.div(:id, /delete_post_modal/).button(:class, /cancel/)
	$directory_delete_confirm = $browser.div(:id, /delete_post_modal/).button(:id, /delete/)
	$directory_edit_note = $browser.text_field(:id, /post_short_body/)
	
##################
##Review Comment##
##################
	$directory_review_listing = $browser.div(:class, /pull-right flex1/).link(:href, /listing/)
	$directory_review_follow = $browser.div(:class, /sidebar/).button(:type, /submit/) #$browser.span(:class, /permissions-button/).button(:class, /group-follow/) #fire_event("onclick")
	$directory_group_follow_close = $browser.div(:id, /global_modal/).button(:class, /close/)
	$directory_group_follow_ok = $browser.link(:class, /btn-success btn-confirm/) #fire_event
	$directory_group_follow_updates_on = $browser.i(:class, /icon_unchecked/)
	$directory_group_follow_updates_off = $browser.i(:class, /icon_checked/)
	$directory_group_account = $browser.span(:class, /span8/).link(:href, /email/)
	$directory_review_user
	$directory_review_view
	$directory_review_fb = $browser.link(:text, /Share on Facebook/)
	$directory_review_twitter = $browser.link(:text, /Tweet/)
	$directory_review_comment = $browser.link(:text, /leave a comment/)
	$directory_review_comment_text = $browser.div(:class, /inline-comment/).text_field(:id, /comment_body/)
	$directory_review_post_comment = $browser.div(:class, /inline-comment/).button(:text, /Post Comment/)
	$directory_review_repost =  $browser.link(:text, /Repost/)

#########################
##Common Post Variables##	
#########################	
	$post_pick_group = $browser.div(:class => /post-bucket/).button(:text => /Choose/)
	$post_group_select_group = $browser.div(:class, /group-chooser-modal/).div(:class, /group-chooser-list/).div(:class, /group row/)
	$post_group_drop_down = $browser.select_list(:class, /group-choose/)
	$post_group_recent = $browser.option(:value, /recent/)
	$post_group_your = $browser.option(:value, /subscribed/)
	$post_group_arts_ent = $browser.option(:value, /entertainment/)
	$post_group_business = $browser.option(:value, /business/)
	$post_group_education = $browser.option(:value, /education/)
	$post_group_family = $browser.option(:value, /family/)
	$post_group_living = $browser.option(:value, /living/)
	$post_group_news = $browser.option(:value, /news/)
	$post_group_opinion = $browser.option(:value, /options/)
	$post_group_other = $browser.option(:value, /other/)
	$post_group_politics = $browser.option(:value, /politics/)
	$post_group_sports = $browser.option(:value, /sports/)
	$post_group_select = $browser.link(:text => /Transportation/)
	$post_group_select_2 = $browser.div(:class, /group-chooser-modal/).div(:class, /group-chooser/).div(:class, /span8 footroom half-headroom/).link(:href, /groups/)
	$post_group_new_note = $browser.div(:class, /note/)
	$post_new_post = $browser.div(:class, /full-content/).div(:id, /author_controls/)
	$post_pick_group_search = $browser.div(:class, /group-chooser/).text_field(:id, /searchText/)
	$post_pick_search_button = $browser.div(:class, /group-chooser/).i(:class, /menu-icon/)
	$post_group_close = $browser.button(:id, /chooser-close/)
	$post_add_another = $browser.strong(:text => /Add a category/)
	$post_add_media_note = $browser.div(:id, /post_pic/).link(:id, /pickfiles/)
	$post_add_media_article = $browser.div(:id, /post_pic/).link(:class, /light-link/)
	$post_add_media = $browser.i(:class, /camera/)
	$post_media_caption = $browser.text_field(:class, /asset-caption/)
	$post_media_delete = $browser.link(:class, /removefile/)
	$post_fb_share = $browser.i(:class, /facebook-small/)
	$post_tw_share =  $browser.i(:class, /twitter-small/)
	$post_cancel = $browser.link(:text, /Cancel/)
	$post_note_cancel = $browser.div(:id, /post_form/).button(:id, /form-close/)
	$post_now = $browser.div(:class, /publish-tools-action/).button(:text, /Post Now/) #$browser.div(:class, /publish-tools-action/).button(:id, /post_submit/) #fire_event("onclick")
	$post = $browser.div(:class, /button-stuff/).div(:id, /moderation_btns/).button(:id, /post_submit/)
	$post_now_alt = $browser.button(:id, /post_submit/)
	$post_now_alt_alt = $browser.div(:class, /inline-block pull-right headroom mobile-no-float js-publish-tools-action/).button(:id, /post_submit/)
	$post_now_text = $browser.button(:text, /Post Now/)
	$post_now_xpath = $browser.element(:xpath, "//form[@id='article_post']/fieldset/div[5]/div[2]/div[2]/span[3]/div/button")
	$post_now_edit = $browser.button(:text => /Post Now/) #fire_event("onclick")
	$post_now_event = $browser.div(:class, /publish-tools/).div(:class, /inline-block/).button(:class, /post_submit/) #fire_event("onclick")
	$post_now_article = $browser.div(:class, "inline-block content-middle").button(:id => "post_submit", :name => "commit")
	$post_draft_dropdown = $browser.form(:id, /post/).div(:class, /btn-group/).button(:id, /post_dropdown/)
	$post_save_draft = $browser.link(:class=> /post_draft/, :text => /Save as draft/)
	$post_draft_success = $browser.div(:class, /post-message/)
	$post_draft_error = $browser.div(:id, /alert-post/)
	$post_group_error_check = $browser.div(:class, /full-content/).div(:text, /Please pick a group to post in./) 
	$post_group_error_invalid = $browser.div(:class, /post-bucket/).p(:text, /Must be a valid group/)

########################################
##Event, Article Shared Post Variables##	
########################################	
	$post_advanced =  $browser.link(:text, /Advanced Options/)
	$post_advanced_calendar = $browser.text_field(:name, /publish_at/)
	$post_advanced_time = $browser.select_list(:name, /publish_at.time/) #.select("8:00 AM")
	$post_scheduled_post = $browser.link(:text, /Scheduled Posts/)
	$post_calendar_textfield = $browser.text_field(:name, /publish/)
	$post_time_textfield = $browser.div(:class, /combobox/).span(:class, /dropdown/)
	$post_advanced_time_drop_down = $browser.div(:id, /advanced_options/).span(:class, /dropdown/)

##################################################################
##http://#{$local_patch}#{$environment}.patch.com/posts/note/new##
##################################################################
	$post_activate_note = $browser.div(:id, /lure/).span(:class, /prompt/)
	$post_compose_note = $browser.text_field(:id, /post_short/) #maxlength = 250 chars
	$post_compose_title = $browser.text_field(:id, /post_title/)
	$post_compose_title_alt = $browser.text_field(:class, /input-xxlarge/)
	
#######################################################################
##http://#{$local_patch}#{$environment}.patch.com/posts/article/new##
#######################################################################
	#$post_article_title = $browser.text_field(:name, /title/) #maxlength = 250 chars
    $post_article_title = $browser.text_field(:name, /title/)
	$post_article_compose = $browser.text_field(:id, /post_body/)

#####################################################################
##http://#{$local_patch}#{$environment}.patch.com/posts/media/new##
#####################################################################
	$post_media_description = $browser.text_field(:id, /post_short/)
    $post_media_description_alt = $browser.element(:xpath, "//div[@id='lure']/div/span/span[2]") 
    $post_media_description_blog = $browser.element(:xpath, "//div[@id='lure']/div/div/span/span[2]") 
	$post_media_body = $browser.text_field(:id, /post_short_body/)
	$post_media_button =  $browser.element(:text, "Add photos/videos")
	$choose_a_file =  $browser.i(:class, /icon_camera/)
	$post_media_file_upload = $browser.file_field(:id, //)

#####################################################################
##http://#{$local_patch}#{$environment}.patch.com/posts/event/new##
#####################################################################
	$post_event_title = $browser.text_field(:name, /title/)
	$post_event_calendar_start_text = $browser.text_field(:name, /start.date/)
	$post_event_time_start_field = $browser.div(:class => /control-group/, :index => 2).span(:class, /caret/)
	$post_event_select_time = $browser.select_list(:name, /start.time/) #.select("8:00 AM")
	$post_event_end_time = $browser.link(:text, /Add end/)
	$post_event_calendar_end_text = $browser.text_field(:name, /end.date/)
	$post_event_time_end_text = $browser.select_list(:name, /end.time/)
	$post_event_remove_end = $browser.link(:text, /Remove/)
	$post_event_location = $browser.text_field(:name, /location/)
	
#advanced options
	$post_event_sports = $browser.ul(:class, /more-footroom headroom/).li(:text, /Sports & Recreation/)
	$post_event_art = $browser.ul(:class, /more-footroom headroom/).li(:text, /Art & Entertainment/)
	$post_event_schools = $browser.ul(:class, /more-footroom headroom/).li(:text, /Schools/)
	$post_event_fairs = $browser.ul(:class, /more-footroom headroom/).li(:text, /Fairs & Festivals/)
	$post_event_food = $browser.ul(:class, /more-footroom headroom/).li(:text, /Food & Drink/)
	$post_event_garage = $browser.ul(:class, /more-footroom headroom/).li(:text, /Garage Sales/)
	$post_event_religious = $browser.ul(:class, /more-footroom headroom/).li(:text, /Religious/)
	$post_event_family = $browser.ul(:class, /more-footroom headroom/).li(:text, /Family/)
	$post_event_volunteer = $browser.ul(:class, /more-footroom headroom/).li(:text, /Volunteer/)
	$post_event_theater = $browser.ul(:class, /more-footroom headroom/).li(:text, /Theater/)
	$post_event_classes = $browser.ul(:class, /more-footroom headroom/).li(:text, /Classes & Lectures/)
	$post_event_government = $browser.ul(:class, /more-footroom headroom/).li(:text, /Government/)
	$post_event_charitable = $browser.ul(:class, /more-footroom headroom/).li(:text, /Charitable/)
	$post_event_organizations = $browser.ul(:class, /more-footroom headroom/).li(:text, /Organizations/)
	$post_event_music = $browser.ul(:class, /more-footroom headroom/).li(:text, /Music/)
	$post_event_graduation = $browser.ul(:class, /more-footroom headroom/).li(:text, /Graduation/)
	$post_event_outdoors = $browser.ul(:class, /more-footroom headroom/).li(:text, /Outdoors/)
	$post_event_real_estate = $browser.ul(:class, /more-footroom headroom/).li(:text, /Real Estate/)

####################
##Repost Variables##	
####################
	$repost_new_button = $browser.div(:class, /sharebar bottom/).div(:class, /post-social-toolbar/).i(:class, /icon_repost/) #fire_event("onclick")
	$repost_another_group = $browser.link(:text, /Add a category/)
	$repost_remove_group = $browser.button(:class, "remove light-link small")
	$repost_placeholder =  $browser.text_field(:placeholder, /Add a message/)
	$repost_text = $browser.text_field(:id, /post_short/)
	$repost_button = $browser.button(:text => /Repost/)
	$repost_close = $browser.form(:id, /repost/).button(:class, /close/)
	$repost_cancel = $browser.form(:id, /repost/).button(:class, /cancel/)
	$repost_confirmation = $browser.form(:id, /edit_post_form/)
	$repost_new_post = $browser.button(:class, /post-menu/)
	#$directory_review_begin must be clicked to interact with any of the following elements
	$directory_review_begin = $browser.div(:id, /lure/)
	$directory_review_article_button = $browser.div(:id, /inline_post/).link(:id, /article/) #takes user to posts/article/new

############################
##Inline Comment Variables##	
############################
	$comment_leave_comment = $browser.div(:class, /post-social-toolbar/).link(:href, /new_comment/)
	$comment_textfield = $browser.div(:id, /comments_wrapper/).text_field(:id, /comment_body/)
	$comment_submit = $browser.button(:id, /comment_submit/)
	$comment_text_visible = $browser.p(:text, /Test Comment/)
	$comment_delete_link = $browser.link(:text, /Delete/)
	$comment_delete_close_modal = $browser.div(:class, "modal hide fade in modal_confirm").div(:class, "modal-header").button(:class, "close")
	$comment_delete_cancel_modal = $browser.button(:text, /Cancel/)
	$comment_delete_confirm_modal = $browser.button(:text, /Delete/) #$browser.div(:id, /global_modal/).div(:class, /modal_confirm/).div(:class, /modal-footer/).button(:id, /comment_delete/)
	$comment_flag_link = $browser.link(:text, /Inappropriate/)
	$comment_flag_close_modal = $browser.div(:id, /flag_modal/).button(:class, /close/)
	$comment_flag_terms_modal = $browser.div(:id, /flag_modal/).link(:href, /terms/)
	$comment_flag_cancel_modal = $browser.div(:id, /global_modal/).div(:class, /modal_confirm/).div(:class, /modal-footer/).button(:class, /close-cancel/)
	$comment_flag_confirm_modal = $browser.div(:class, /modal_confirm/).button(:id, /flag_submit/)
	$comment_flag_success = $browser.div(:class, /flash_text/)

######################################
##Group Variables for Inline Posting##
######################################
	$patch_new_group = "http://#{$local_patch}#{$environment}.patch.com/blogs/new"
	$open_group = $browser.radio(:value, /open/)
	$group_name = $browser.text_field(:name => /name/)
	$group_nickname = $browser.text_field(:name => /tagline/)
	$group_description = $browser.text_field(:index, 2)
	$category_arts = $browser.span(:text, "Arts & Entertainment")
	$choose_icon = $browser.div(:class => /icon-page/).div(:index => 1)
	$arts_ent_drop = $browser.link(:text, /Entertainment Icons/)
	$arts_ent_image = $browser.element(:xpath, "//*[@id=\"icon_carousel\"]/div[1]/div/div[1]/div/img")
	$group_check_errors = $browser.div(:class, /alert-error/)
	$create_group = $browser.button(:id, /create_group/)
	$save_changes = $browser.button(:id, /edit_group_btn/)
	$post_group_error = $browser.p(:text, "Please pick a group to post in.")
	$post_text_error = $browser.p(:text, "Please fill out this field")
	$directory_review_photo_button = $browser.div(:id, /inline_post/).i(:class, /snapshot/)
	$directory_review_photo_caption = $browser.div(:id, /assets/).text_field(:class, /asset-caption/)
	$directory_review_post = $browser.div(:id, /inline_post/).button(:id, /post/)
    $profile_notification_num = $browser.span(:class => /notification-num/, :index => 1)
    $see_all_updates = $browser.link(:text => /See all updates/)
    $inline_blogs_div = $browser.div(:id, /inline_post_form/)
	
########################
##Draft Post Variables##
########################
	$profile_current = $browser.link(:href, /drafts/)
	$profile_edit_post =  $browser.div(:id, /draftTabContent/).link(:href, /edit/) #fire_event, same across post pages
	$profile_goto_draft = $browser.div(:id, /draftTabContent/).link(:href, /edit/)
	$profile_delete_draft = $browser.div(:id, /draftTabContent/).link(:href, /delete_draft/)
	$profile_delete_close = $browser.div(:id, /delete_draft/).button(:class, /close/) #same across post pages
	$profile_delete_cancel = $browser.div(:id, /delete_draft/).button(:class, /cancel/) #same across post pages
	$profile_delete_delete = $browser.div(:id, /delete_draft/).button(:id, /delete/) #same across post pages
	$profile_scheduled = $browser.link(:href, /scheduled/)
	$profile_edit_post =  $browser.link(:text, "Edit") #fire_event, same across post pages 
	$profile_published = $browser.link(:href, /published/)
	$profile_p_gicon = $browser.link(:class, /group_avatar/).img(:src, //)
	$profile_p_group = $browser.div(:class, /post-credit/).link(:href, /groups/)
	$proflie_p_user = $browser.div(:class, /post-credit/).link(:href, /users/)
	$profile_p_article = $browser.div(:class, /bd note/)
	$profile_p_calendar = $browser.div(:class, /event-info/).link(:href, /calendar/) #event_only
	$profile_p_map = $browser.link(:text, /See Map/) #event only 

################################
##Edit, Delete, and Flag Posts##
################################
	$post_edit_post = $browser.div(:id, /author_controls/).link(:href, /edit/)
	$post_delete_post = $browser.div(:id, /author_controls/).link(:href, /delete/)
	$post_delete_close = $browser.div(:id, /delete_post_modal/).button(:class, /close/)
	$post_delete_cancel = $browser.div(:id, /delete_post_modal/).button(:class, /cancel/)
	$post_delete_confirm = $browser.div(:id, /delete_post_modal/).button(:id, /delete/)
	$post_edit_note = $browser.text_field(:id, /post_short_body/)
	$post_repost_flag = $browser.link(:href, /flag_modal/)
	$file_field = $browser.file_field(:id, //)

#######################
##Search Interactions##
#######################
	$search_text_field = $browser.form(:id, /searchForm/).text_field(:class, /search/)
	$search_button = $browser.form(:id, /searchForm/).i(:class, /search/)
	$search_result_note = $browser.div(:class, /search-row/).link(:text, /search/)
	$search_result_article = $browser.link(:text, /Article/)
	$search_result_media = $browser.link(:text, /Automated media/)
	$search_result_event = $browser.link(:text, /vent/)
	$search_user_keelawn = $browser.link(:text, /eelawn/)
	
###################
##Login Variables##
###################
#Login page
	$sign_in = $browser.link(:class, /login/)
	$log_in = $browser.link(:href, /login/)
	$email = $browser.text_field(:name, /email/)
	$sign_in_button = $browser.button(:id, /signin/)
	$password = $browser.text_field(:name, /password/)
	$logged_in_avatar = $browser.div(:id, /nav_personalize/).div(:id, "header-avatar")
	$your_profile = $browser.link(:text, "Your Profile")
	$login_via_facebook = $browser.link(:text, /Facebook/)#(:href, /users\/authorize/).i(:class, /icon_facebook/)
	
#Login Items created by Shamiul#
    $join_patch_now = $browser.link(:text => /Join Patch Now/)
    $facebook_login_icon = $browser.i(:class => /icon_facebook/)
    $facebook_login_text = $browser.span(:text => /Sign in with Facebook/)
    $forgot_password_login = $browser.link(:text => /Forgot Password?/)
    $cancel_login = $browser.link(:text => /Cancel/)
    $keep_logged_checkbox = $browser.checkbox(:id => /persistent/)
 
########################################
##Blog, Board, News Settings Variables##
########################################
	$group_settings_save = $browser.button(:id, /edit_group_btn/)

#####################################################################
##http://#{$local_patch}#{$environment}.patch.com/users/groupManage##
#####################################################################
	$group_1 = $browser.div(:class, /span4/).link(:href, /groups/) #fire_event("onclick")
	$email_pref_button = $browser.link(:text, /Email Pref/)
	$following_button = $browser.button(:class, /btn/)
	
#################################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/edit/basic_information##
#################################################################################################
	$group_name_bi = $browser.text_field(:name, /name/)
	$group_description_bi = $browser.text_field(:name, /tagline/)
	$group_arts_bi = $browser.div(:class, /group-edit/).span(:text, /Arts & Entertainment/)
	$group_business_bi = $browser.div(:class, /group-edit/).span(:text, /Business/)
	$group_education_bi = $browser.div(:class, /group-edit/).span(:text, /Education/)
	$group_family_bi = $browser.div(:class, /group-edit/).span(:text, /Family/)
	$group_living_bi = $browser.div(:class, /group-edit/).span(:text, /Living/)
	$group_news_bi = $browser.div(:class, /group-edit/).span(:text, /News/)
	$group_opinion_bi = $browser.div(:class, /group-edit/).span(:text, /Opinion/)
	$group_other_bi = $browser.div(:class, /group-edit/).span(:text, /Other/)
	$group_politics_bi = $browser.div(:class, /group-edit/).span(:text, /Politics/)
	$group_sports_bi = $browser.div(:class, /group-edit/).span(:text, /Sports/)
	$group_type_save_bi = $browser.link(:text, /Save Changes/)

##########################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/edit/group_logo##
##########################################################################################
	$group_logo_business = $browser.link(:text, "Choose One")
	#$group_logo_upload = $browser.form(:id, /edit_group_form/).link(:id, /avatar_upload/)
	$group_logo_change = $browser.div(:id, /icon_carousel/).div(:class, /pretty-radio/).button(:value, /30000243/) #fire_event("onclick") #might not be a button
	$group_logo_upload = $browser. div(:id, /avatar_upload/).i(:class, /icon_camera/)
	$group_media_file_upload = $browser.file_field(:id, //)
	$group_media_save_upload = $browser.div(:class, /modal-upload/).div(:class, /modal-footer/).button(:id, /avatar-generate/)

##########################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/edit/group_type##
##########################################################################################
	$group_anyone_setting = $browser.ul(:class, /js-pretty-radios/).img(:src, /open-group-small/)
	$group_private_setting = $browser.ul(:class, /js-pretty-radios/).img(:src, /approved-people/)
	$group_type_cancel = $browser.link(:text, /Cancel/)

##########################################################
##http://#{$local_patch}#{$environment}.patch.com/groups##
##########################################################
  
#Find a group elements, These must be selected as: $blogGroup.fire_event("onclick")
    $manage_groups = $browser.div(:class, /sidebar/).link(:href, /edit\/basic_information/)
    $group_email_settings = $browser.div(:id, /group_btns/).link(:text, /Email Settings/)
    $group_group_icon = $browser.div(:class, /sidebar overflow/).link(:href, /edit\/group_logo/)
    $group_group_type = $browser.div(:class, /sidebar overflow/).link(:href, /edit\/group_type/)
    $group_group_followers = $browser.div(:class, /sidebar overflow/).link(:href, /edit\/followers/)
    $group_check_errors = $browser.div(:class, /alert-error/)
    $create_groups = $browser.link(:href, /groups\/new/)
    $featured_other = $browser.link(:href, /other/)
    $featured_family = $browser.link(:href, /family/)
    $featured_opinion = $browser.link(:href, /opinion/)
    $featured_sports = $browser.link(:href, /sports/)
    $featured_news = $browser.link(:href, /news/)
    $featured_arts_ent = $browser.link(:href, /entertainment/)
    $featured_business = $browser.link(:href, /business/)
    $featured_education = $browser.link(:href, /education/)
    $featured_politics = $browser.link(:href, /politics/)
    $featured_living = $browser.link(:href, /living/)
    $request_invite = $browser.span(:class, /permissions/).button(:class, /request_permission/) #fire_event("onclick")
       
##############################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/new##
##############################################################

#New Group Page variables, These must be selected as: $blogGroup.fire_event("onclick")
    $blog_group = $browser.radio(:value, /blog/)
    $open_group = $browser.radio(:value, /open/)
    $private_group = $browser.radio(:value, /private/)
    $group_name = $browser.text_field(:index, 1)
    $group_name_placeholder = $browser.text_field(:placeholder, "Group name")
    $group_nickname = $browser.text_field(:index, 2)
    $group_nicknamePlaceholder = $browser.text_field(:placeholder, "Nickname")
    $group_description = $browser.text_field(:index, 2)
    $category_arts = $browser.span(:text, "Arts & Entertainment")
    $category_business = $browser.span(:text, "Business")
    $category_education = $browser.span(:text, "Education")
    $category_family = $browser.element(:xpath, "//*[@id=\"group_form\"]/fieldset/div[5]/div[2]/ul/li[4]/a/i")
    $category_family_blog = $browser.element(:xpath, "//*[@id=\"edit_group_form\"]/fieldset/div[3]/div/ul/li[4]/a/i")  
    $category_living = $browser.span(:text, "Living")
    $category_news = $browser.span(:text, "News")
    $category_opinion = $browser.span(:text, "Opinion")
    $category_other = $browser.span(:text, "Other")
    $category_politics = $browser.span(:text, "Politics")
    $category_sports = $browser.element(:xpath, "//*[@id=\"group_form\"]/fieldset/div[5]/div[3]/ul/li[5]/a/i")
    $arts_ent_drop = $browser.link(:text, /Entertainment Icons/)
    $arts_ent_image = $browser.element(:xpath, "//*[@id=\"icon_carousel\"]/div[1]/div/div[1]/div/img")
    $upload_icon = $browser.link(:id, /avatar_upload/)
    $arts_icon = $browser.link(:text, "Arts & Entertainment")
    $business_icon = $browser.link(:text, "Business")
    $education_icon = $browser.link(:text, "Education")
    $family_icon = $browser.link(:text, "Family")
    $living_icon = $browser.link(:text, "Living")
    $news_icon = $browser.link(:text, "News")
    $opinion_icon = $browser.link(:text, "Opinion")
    $other_icon = $browser.link(:text, "Other")
    $politics_icon = $browser.link(:text, "Politics")
    $sports_icon = $browser.link(:text, "Sports")
    $create_group = $browser.button(:id, /create_group/)
    $group_create_success = $browser.div(:text, /Group created successfully/)

################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/share##
################################################################################
	$group_successful = $browser.div(:class, /flash_text/)
	$close_group_message = $browser.button(:class, /flash_close/)
	$invite_facebook = $browser.div(:id, /share/).link(:href, /facebook/)

############################
##Group Settings Variables##
############################
	$group_settings_save = $browser.button(:id, /edit_group_btn/)

#########################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/edit/followers##
#########################################################################################
	$manager_profile_link = $browser.link(:href, /users/) #fire_event("click")
	$group_manager_drop_down = $browser.div(:class, /follower_body manager/).span(:class, /btn-small/)
	$group_follower_drop_down = $browser.div(:class => /media group-follower/, :index => 4).span(:class, /btn-small/)
	$group_make_manager = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Manager/)
	$group_make_follower = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Follower/)
	$group_make_removed = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Remove/)

#######################
##Upload Photo Modals##
#######################

	$group_image_1 = $browser.link(:id, /group_photo1/) #fire_event("onclick")
	$group_image_2 = $browser.link(:id, /group_photo2/) #fire_event("onclick")
	$group_image_3 = $browser.link(:id, /group_photo3/) #fire_event("onclick")
	$group_image_1_delete = $browser.link(:id, /group_photo1/).i(:class, /icon_x-white/) #fire_event("onclick")
	$group_image_2_delete = $browser.link(:id, /group_photo2/).i(:class, /icon_x-white/) #fire_event("onclick")
	$group_image_3_delete = $browser.link(:id, /group_photo3/).i(:class, /icon_x-white/) #fire_event("onclick")
	$span_3_frames = $browser.div(:class, /modal-footer/).i(:class, /inline-icon/)
	$upload_frames_cancel = $browser.div(:class, /modal-footer/).button(:class, /close-cancel/)
	$upload_frames_save = $browser.div(:class, /modal-footer/).button(:id, /avatar/)
	$upload_frames_close = $browser.div(:class, /modal-footer/).button(:class, "close")
	$delete_image_yes = $browser.div(:class, /modal-footer/).link(:class, /btn-confirm/)
	$delete_image_no = $browser.div(:class, /modal-footer/).link(:text, /No/)	
	$group_manager_drop_down = $browser.div(:class => /media group-follower/, :index => 1).span(:class, /btn-small/)	
	$group_follower_drop_down = $browser.div(:class => /media group-follower/, :index => 4).span(:class, /btn-smal/)
	$group_make_manager = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Manager/)
	$group_make_follower = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Follower/)
	$group_make_removed = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Remove/)
	$post_media_file_upload = $browser.file_field(:id, //)	
	
	end
end
__END__
#Deprecated Variables Below

#######################
##Directory Link List##
#######################
#Health
	$directory_health = $browser.link(:text, /Health/)
	$directory_nursing = $browser.link(:text, /Nursing Services/)
	$directory_testing = $browser.link(:text, /Testing & Diagnostics/)
	$directory_clinics = $browser.link(:text, /Clinics/)
	$directory_medical = $browser.link(:text, /Medical Professionals/)
	$directory_optometrists = $browser.link(:text, /Optometrists/)
	$directory_drug_stores = $browser.link(:text, /Drug Stores & Pharmacies/)
	$directory_mental_health = $browser.link(:text, /Mental Health/)
	$directory_health_services = $browser.link(:text, /Health Services/)
	$directory_nutritionists = $browser.link(:text, /Nutritionists/)
	$directory_hospitals = $browser.link(:text, /Hospitals/)
	$directory_chiropractors = $browser.link(:text, /Chiropractors/)
	$directory_alternative = $browser.link(:text, /Alternative Medicine/)
	$directory_ambulance = $browser.link(:text, /Ambulance/)
	$directory_dentists = $browser.link(:text, /Dentists/)
	$directory_assisted = $browser.link(:text, /Assisted Living/)
	$directory_doctors = $browser.link(:text, /Doctors & Group Practices/)
	$directory_physical = $browser.link(:text, /Physical & Occupational Therapists/)

#Beauty & Spas
	$directory_beauty = $browser.link(:text, /Beauty & Spas/)
	$directory_tattoos = $browser.link(:text, /Tattoos & Piercing/)
	$directory_tanning = $browser.link(:text, /Tanning/)
	$directory_massage = $browser.link(:text, /Massage/)
	$directory_hair = $browser.link(:text, /Hair Salons & Barbers/)
	$directory_nail = $browser.link(:text, /Nail Salons/)
	$directory_spas = $browser.link(:text, /Spas/)
	
#Home Services
	$directory_home_services = $browser.link(:text, /Home Services & Repairs/)
	$directory_architects = $browser.link(:text, /Architects/)
	$directory_locksmiths = $browser.link(:text, /Locksmiths & Home Security/)
	$directory_contractors = $browser.link(:text, /General Contractors/)
	$directory_pest_control = $browser.link(:text, /Pest Control/)
	$directory_gardening = $browser.link(:text, /Lawn & Gardening/)
	$directory_cleaning = $browser.link(:text, /Cleaning Services/)
	
#Services
	$directory_services = $browser.link(:text, /Services/)
	$directory_utilities = $browser.link(:text, /Utilities/)
	$directory_printing = $browser.link(:text, /Printing & Copying/)
	$directory_employment = $browser.link(:text, /Employment/)
	$directory_tailors = $browser.link(:text, /Tailors/)
	$directory_business = $browser.link(:text, /Business to Business/)
	$directory_child_care = $browser.link(:text, /Child Care/)
	$directory_funeral = $browser.link(:text, /Funeral Services/)
	$directory_laundry = $browser.link(:text, /Dry Cleaning & Laundry/)
	$directory_storage = $browser.link(:text, /Moving & Storage/)
	$directory_pet_services = $browser.link(:text, /Pet Services/)
	$directory_mail = $browser.link(:text, /Mail & Shipping/)
	$directory_electronic = $browser.link(:text, /Photo & Electronic Services/)
	$directory_parking = $browser.link(:text, /Parking Lots & Garages/)
	$directory_party_services = $browser.link(:text, /Party & Event Services/)

#Financial & Legal
	$directory_financial = $browser.link(:text, /Financial & Legal/)
	$directory_banking = $browser.link(:text, /Banking/)
	$directory_accounting = $browser.link(:text, /Accounting & Financial Planners/)
	$directory_notaries = $browser.link(:text, /Notaries/)
	$directory_attorneys = $browser.link(:text, /Attorneys/)
	$directory_insurance = $browser.link(:text, /Insurance/)

#Government
	$directory_government = $browser.link(:text, /Government/)
	$directory_post_offices = $browser.link(:text, /Post Offices/)
	$directory_police = $browser.link(:text, /Police/)
	$directory_courts = $browser.link(:text, /Courts/)
	$directory_fire = $browser.link(:text, /Fire/)
	$directory_government_offices = $browser.link(:text, /Government Offices/)
	
#Travel & Transportation
	$directory_transportation = $browser.link(:text, /Travel & Transportation/)
	$directory_airports = $browser.link(:text, /Airports/)
	$directory_car_rental = $browser.link(:text, /Car Rental/)
	$directory_ferry = $browser.link(:text, /Ferry & Water Travel/)
	$directory_hotels = $browser.link(:text, /Hotels & Lodging/)
	$directory_taxis = $browser.link(:text, /Taxis & Limousines/)
	$directory_travel = $browser.link(:text, /Travel Agencies/)
	$directory_train = $browser.link(:text, /Train Stations/)
	$directory_bus_stations = $browser.link(:text, /Bus Stations & Services/)

#Arts & Entertainment
	$directory_entertainment = $browser.link(:text, /Arts & Entertainment/)
	$directory_nightlife = $browser.link(:text, /Nightlife/)
	$directory_performing = $browser.link(:text, /Performing Arts/)
	$directory_karaoke = $browser.link(:text, /Karaoke/)
	$directory_nightclubs = $browser.link(:text, /Nightclubs/)
	$directory_astrologer = $browser.link(:text, /Astrologer/)
	$directory_pool_halls = $browser.link(:text, /Pool Halls/)
	$directory_art_galleries = $browser.link(:text, /Art Galleries/)
	$directory_zoos = $browser.link(:text, /Zoos & Aquariums/)
	$directory_amusement = $browser.link(:text, /Amusement Parks/)
	$directory_arcades = $browser.link(:text, /Arcades & Games/)
	$directory_movies = $browser.link(:text, /Movies/)
	$directory_museums = $browser.link(:text, /Museums & Historic Sites/)
	$directory_casinos = $browser.link(:text, /Casinos/)
	
#Automotive & Boating
	$directory_automotive = $browser.link(:text, /Automotive & Boating/)
	$directory_boat_repair = $browser.link(:text, /Boat Repair & Service/)
	$directory_towing = $browser.link(:text, /Towing/)
	$directory_boating_parts = $browser.link(:text, /Boating Parts & Accessories/)
	$directory_tires = $browser.link(:text, /Tires/)
	$directory_car_wash = $browser.link(:text, /Car Wash/)
	$directory_stereos = $browser.link(:text, /Stereos & Alarms/)
	$directory_boat_dealers = $browser.link(:text, /Boat Dealers/)
	$directory_auto_dealers = $browser.link(:text, /Auto Dealers/)
	$directory_marinas = $browser.link(:text, /Marinas/)
	$directory_auto_repair = $browser.link(:text, /Auto Repair & Service/)
	$directory_auto_parts = $browser.link(:text, /Auto Parts & Accessories/)
	$directory_gas_stations = $browser.link(:text, /Gas Stations/)
	
#Sports & Fitness
	$directory_sports_fitness = $browser.link(:text, /Sports & Fitness/)
	$directory_ski_resorts = $browser.link(:text, /Ski Resorts/)
	$directory_horse_riding = $browser.link(:text, /Horse Riding/)
	$directory_dance_studios = $browser.link(:text, /Dance Studios/)
	$directory_athletic = $browser.link(:text, /Athletic Complexes/)
	$directory_golf = $browser.link(:text, /Golf Courses/)
	$directory_gyms = $browser.link(:text, /Gyms/)
	$directory_personal_trainers = $browser.link(:text, /Personal Coaches\/Trainers/)
	$directory_sports_leagues = $browser.link(:text, /Sports Leagues/)
	$directory_sports_teams = $browser.link(:text, /Sports Teams/)
	$directory_private_clubs = $browser.link(:text, /Private Clubs/)
	$directory_stadiums_arenas = $browser.link(:text, /Stadiums & Arenas/)
	$directory_skating = $browser.link(:text, /Roller & Ice Skating Rinks/)
	$directory_trails = $browser.link(:text, /Trails/)
	$directory_pools = $browser.link(:text, /Pools/)
	$directory_yoga = $browser.link(:text, /Yoga & Pilates Studios/)
	$directory_martial_arts = $browser.link(:text, /Martial Arts/)

#Financial Services
	$directory_financial = $browser.link(:text, /Financial Services/)

#Real Estate
	$directory_real_estate = $browser.link(:text, /Real Estate/)
	$directory_appraiser = $browser.link(:text, /Appraiser/)
	$directory_retirement = $browser.link(:text, /Retirement Communities/)
	
#Hometown Partners
	$directory_hometown = $browser.link(:text, /Hometown Partners/)
	
#Schools
	$directory_schools = $browser.link(:text, /Schools/)
	$directory_vocational = $browser.link(:text, /Vocational Schools/)
	$directory_junior_high = $browser.link(:text, /Junior High Schools/)
	$directory_specialty = $browser.link(:text, /Specialty Schools/)
	$directory_middle_schools = $browser.link(:text, /Middle Schools/)
	$directory_tutoring = $browser.link(:text, /Tutoring & Private Lessons/)
	$directory_colleges = $browser.link(:text, /Colleges & Universities/)
	$directory_pre_schools = $browser.link(:text, /Pre-Schools/)
	$directory_high_schools = $browser.link(:text, /High Schools/)
	$directory_elementary_schools = $browser.link(:text, /Elementary Schools/)

#Shopping
	$directory_shopping = $browser.link(:text, /Shopping/)
	$directory_home_furnishings = $browser.link(:text, /Home Furnishings/)
	$directory_music_video = $browser.link(:text, /Music & Video/)
	$directory_nurseries = $browser.link(:text, /Nurseries & Gardening/)
	$directory_toys_games = $browser.link(:text, /Toys & Games/)
	$directory_hobbies = $browser.link(:text, /Hobbies & Crafts/)
	$directory_office_supplies = $browser.link(:text, /Office Supplies/)
	$directory_sporting_goods = $browser.link(:text, /Sporting Goods & Recreation/)
	$directory_antiques = $browser.link(:text, /Antiques & Collectibles/)
	$directory_home_garden = $browser.link(:text, /Home & Garden/)
	$directory_consignment = $browser.link(:text, /Consignment & Thrift Stores/)
	$directory_web_retailers = $browser.link(:text, /Web Retailers/)
	$directory_computers = $browser.link(:text, /Computers & Electronics/)
	$directory_books = $browser.link(:text, /Books & Magazines/)
	$directory_pet_shops = $browser.link(:text, /Pet Shops/)
	$directory_shoes = $browser.link(:text, /Shoes/)
	$directory_jewelry = $browser.link(:text, /Jewelry & Watches/)
	$directory_framing = $browser.link(:text, /Framing Stores/)
	$directory_shopping_centers = $browser.link(:text, /Shopping Centers/)
	$directory_luggage = $browser.link(:text, /Luggage/)
	$directory_eyewear = $browser.link(:text, /Eyewear & Opticians/)
	$directory_appliances = $browser.link(:text, /Appliances/)
	$directory_gifts = $browser.link(:text, /Gifts & Stationery/)
	$directory_beauty = $browser.link(:text, /Beauty Products/)
	$directory_clothing = $browser.link(:text, /Clothing & Accessories/)
	$directory_florists = $browser.link(:text, /Florists/)
	$directory_baby_products = $browser.link(:text, /Baby Products/)
	$directory_cell_phones = $browser.link(:text, /Cell Phones & Wireless/)
	$directory_hardware = $browser.link(:text, /Hardware & Paint/)
	$directory_kitchen = $browser.link(:text, /Kitchen & Bath/)

#Readers' Choice
	$directory_rc = $browser.link(:text, /Readers' Choice/)
	$directory_rc_2012_nominee = $browser.link(:text, /Readers' Choice 2012 Nominee/)
	$directory_rc_2012_winner = $browser.link(:text, /Readers' Choice 2012 Winner/)
	
#Community Resources
	$directory_community = $browser.link(:text, /Community Resources/)
	$directory_chambers = $browser.link(:text, /Chambers & Business Associations/)
	$directory_camps = $browser.link(:text, /Camps/)
	$directory_local_media = $browser.link(:text, /Local Media/)
	$directory_cemeteries = $browser.link(:text, /Cemeteries/)
	$directory_libraries = $browser.link(:text, /Libraries/)
	$directory_associations = $browser.link(:text, /Associations/)
	$directory_charitable = $browser.link(:text, /Charitable & Civic Organizations/)
	$directory_parks = $browser.link(:text, /Parks & Gardens/)
	$directory_religious = $browser.link(:text, /Religious Institutions/)
	$directory_community = $browser.link(:text, /Community Centers/)
	$directory_playgrounds = $browser.link(:text, /Playgrounds/)
	$directory_beaches = $browser.link(:text, /Beaches/)
	
#Seasonal Businesses
	$directory_seasonal = $browser.link(:text, /Seasonal Businesses/)
	
#Food & Beverage
	$directory_food = $browser.link(:text, /Food & Beverage/)
	$directory_health_food = $browser.link(:text, /Health Food Stores/)
	$directory_cheese = $browser.link(:text, /Cheese Shops/)
	$directory_butchers = $browser.link(:text, /Butchers/)
	$directory_bakeries = $browser.link(:text, /Bakeries/)
	$directory_farmers_markets = $browser.link(:text, /Farmers Markets/)
	$directory_fish = $browser.link(:text, /Fish & Seafood Shops/)
	$directory_ice_cream = $browser.link(:text, /Ice Cream & Candy Stores/)
	$directory_juice = $browser.link(:text, /Juice & Smoothie Bars/)
	$directory_specialty = $browser.link(:text, /Specialty Foods/)
	$directory_wineries = $browser.link(:text, /Wineries/)
	$directory_deli = $browser.link(:text, /Deli & Convenience Stores/)
	$directory_grocery = $browser.link(:text, /Grocery Stores/)
	$directory_beer_wine = $browser.link(:text, /Beer Wine & Liquor/)

#Restaurants & Bars
	$directory_restaurant_bars = $browser.link(:text, /Restaurants & Bars/)
	$directory_coffee_tea = $browser.link(:text, /Coffee and Tea Shops/)
	$directory_bars_pubs = $browser.link(:text, /Bars & Pubs/)
	$directory_restaurants = $browser.link(:text, /Restaurants/)
	$directory_catering = $browser.link(:text, /Catering/)
