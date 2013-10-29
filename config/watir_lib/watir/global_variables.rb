$LOAD_PATH << './config/watir_lib'  
require 'watir/test'
require 'watir/link_variables'


#Please be careful when adding new variables. 
#Check the file thoroughly before adding.
#If you have any questions about the file, feel free
#to contact Mellissa.

#Don't forget the master variables (environment,
#master user, master password, etc.) are located
#in the lib/watir/test.rb file.

#############################################
## You can search for the terms below      ## 
## to quickly jump to a section below!     ## 
##             							   ##
## Global            					   ##
##  Global > Common         			   ##
##  Global > Logged in       			   ##
##  Global > Logged out        			   ##
##  Global > Search Interactions    	   ##
##              						   ##
## User Administration        			   ##
##  User Administration > Join    		   ##
##  User Administration > Login     	   ##
##  User Administration > Profile    	   ##
##              						   ##
## Landing Pages          				   ##
##  Landing Page > Home        			   ##
##  Landing Page > News/Blogs     		   ## 
##  Landing Page > Boards      			   ##
##  Landing Page > Events      			   ##
##  Landing Page > Businesses    		   ##
##  Landing Page > Misc.       			   ##
##              						   ##
## Groups           					   ##
##  Groups > Settings        			   ##
##  Groups > New          				   ##
##              						   ##
## Businesses           				   ##
##  Businesses > Reviews       			   ##
##              						   ##
## Posts             					   ##
##  Posts > Common All      			   ##
##  Posts > Events, Articles      		   ##    
##  Posts > Notes, Articles     		   ##
##  Posts > Inline Notes, Inline Articles  ##
##  Posts > Articles        			   ##
##  Posts > Events        				   ##
##  Posts > Reviews         			   ##
#############################################

class GlobalVariables < WatirTest
  def setup
  super
  $browser = driver

##########
##Global##
##########

###################
##Global > Common##
###################

#File Upload Dialog
  $file_upload = $browser.file_field(:id, //) #profiles_pic_upload, $post_media_file_upload, $file_field
  
###################################################
##http://#{$local_patch}#{$environment}.patch.com##
###################################################
#Home Page Header
  $header_patch_logo = $browser.span(:class => /patch-logo/) #$patch_logo_top
  $header_cover_photo = $browser.div(:id, /js-town-cover/) #NA, new variable
  $header_home = $browser.link(:id => /home_menu/) #$home
  $header_news = $browser.link(:id => /news_menu/) #$news
  $header_boards = $browser.link(:id => /boards_menu/) #$boards
  $header_events = $browser.link(:id => /events_menu/) #$events, $post_an_event
  $header_business = $browser.link(:id => /listings_menu/) #$business
  $header_twitter_icon = $browser.i(:class => /icon_twitter/) #$twitter_icon_top
  $header_facebook_icon = $browser.i(:class => /icon_facebook/) #$facebook_icon_top
  $header_search_box = $browser.text_field(:name => /keywords/) #$search_box
  $header_search_icon = $browser.button(:class => /search-icon/) #$search_icon

#Right Sidebar
  $side_feedback = $browser.link(:id => /feedback_callout/) #$feedback

#Home Page Footer > Top Row
  $footer_copyright = $browser.div(:text => /Copyright/) #$copyright
  $footer_patch_editor = $browser.span(:text => /Patch Editor/) #$patch_editor
  $footer_patch_logo_footer = $browser.i(:class => /icon_footer-logo/) #$patch_logo_footer
  $footer_find_your_patch = $browser.strong(:text => /Find your Patch/) #$find_your_patch

#Home Page Footer > Connect with Patch
  $footer_patch_newsletter = $browser.span(:text => /Get the Patch Newsletter/) #$get_the_patch_news_letter
  $footer_email_icon = $browser.i(:class => /email-icon/) #$email_icon
  $footer_follow_us_on_twitter = $browser.span(:text => /Follow us on Twitter/) #$follow_us_on_twitter
  $footer_twitter_icon_small = $browser.i(:class => /icon_twitter-small/) #$twitter_icon_small
  $footer_like_us_on_facebook = $browser.span(:text => /Like us on Facebook/) #$like_us_on_facebook
  $footer_facebook_icon_small = $browser.i(:class => /icon_facebook-small/) #$facebook_icon_small

#Home Page Footer > Post Something
  $footer_post_on_boards = $browser.link(:text => /Post on the Boards/) #$post_on_the_boards
  $footer_post_event = $browser.link(:text => /Post an Event/) #$post_an_event
  $footer_write_review = $browser.link(:text => /Write a Review/) #$write_a_review
  $footer_start_a_blog = $browser.link(:text => /Start a Blog/) #$start_a_blog
 
#Home Page Footer > Help
  $footer_solve_a_problem = $browser.link(:text => /Solve a problem/) #$solve_a_problem
  $footer_tips_helps = $browser.link(:text => /Tips & Help/) #$tips_helps
  $footer_contact_us = $browser.link(:text => /Contact us/) #$contact_us
 
#Home Page Footer > Patch Info
  $footer_about_us = $browser.link(:text => /About us/) #$about_us
  $footer_jobs = $browser.link(:text => /Jobs/) #$jobs
  $footer_terms_of_use = $browser.link(:text, /Terms of Use/) #$terms_of_use
  $footer_about_our_ads = $browser.link(:text => /About our Ads/) #$about_our_ads
  $footer_privacy_policy = $browser.link(:text, /Privacy Policy/) #$privacy_policy
  $footer_patch_blog = $browser.link(:text => /Patch Blog/) #$patch_blog

#Home Page Footer > Partner with Us
  $footer_advertise = $browser.link(:text => /Advertise/) #$advertise
  $footer_claim_your_listing = $browser.link(:text => /Claim your listing/) #$claim_your_listing
  $footer_add_your_business = $browser.link(:text => /Add your business/) #$add_your_business
  $footer_patch_u = $browser.link(:text => /PatchU/) #$patch_u
  $footer_volunteer = $browser.link(:text => /Volunteer/) #$volunteer

######################
##Global > Logged in##
######################

#Home Page Header
  $header_notification_icon = 
  $header_notification_update =
  $header_notification_go_to_update_link = 
  $header_tools_icon = $browser.div(:id, /header-menu/).div(:class, /gears img/)
  $header_tools_post_article = 
  $header_tools_admin_link = #admin/editor only
  $header_tools_board_link = #admin/editor only
  $header_tools_news_link = #admin/editor only
  $header_tools_blog_link = #admin/editor only
  $header_tools_start_blog = $browser.link(:text, "+ Start a Blog") #admin/editor only
  $header_tools_start_news = $browser.link(:text, "+ Start a Section") #admin/editor only
  $header_tools_start_board = $browser.link(:text, "+ Start a Board") #admin/editor only
  $header_profile_avatar = $browser.div(:id, /header-avatar/) #$profiles_account_avatar
  $header_profile_your_profile = $browser.link(:text, /Your Profile/) #$profiles_header_menu_your_profile
  $header_profile_edit_profile = 
  $header_profile_your_posts = 
  $header_profile_email_settings = 
  $header_profile_sign_out = 
  
#Home Page Footer > Your Account
  $footer_your_profile =
  $footer_edit_profile = 
  $footer_updates =
  $footer_your_posts = 
  $footer_email_settings = 

#######################
##Global > Logged out##
#######################
#Home Page Footer > Your Account
  $footer_sign_in = $browser.link(:text => /Sign In/, :index => 1) #$sign_in_footer
  $footer_join_patch = $browser.link(:text => /Join Patch/) #$join_patch
  $footer_why_join = $browser.link(:text => /Why Join?/) #$why_join

#######################
##Search Interactions##
#######################
  $search_text_field = $browser.form(:id, /searchForm/).text_field(:class, /search/)
  $search_button = $browser.form(:id, /searchForm/).i(:class, /search/)
  $search_result_note = $browser.div(:class, /search-row/).link(:text, /search/)
  $search_result_article = $browser.link(:text, /Article/)
  $search_result_media = $browser.link(:text, /Automated media/)
  $search_result_event = $browser.link(:text, /vent/)
  $search_result_fighting_mongooses = $browser.link(:text, /ongoose/)
  $search_result_flatiron_business = $browser.div(:class, /search-row/).link(:text, /Flatiron Lounge/)
  $search_result_keelawn = $browser.div(:class, /search-row/).link(:text, /eelawn/)

#######################
##User Administration##
#######################

###################################
##User Administration > Join Page##
###################################

#Join Page: http://bellmore.nixon.i.patch.com/join
  $join_page_log_in = $browser.input(:id, /signup/) #$log_in_link, $sign_in, $join_patch_button_right
  $join_page_fullname = $browser.text_field(:name, /name/)
  $join_page_email = $browser.text_field(:name, /email/)
  $join_page_password = $browser.text_field(:name, /password/)
  $join_page_password_confirm = $browser.text_field(:name, /confirm_password/)
  $join_page_sign_in_facebook = $browser.link(:class, /btn btn-facebook input-medium pull-left/)
  $join_page_breaking_news = $browser.element(:xpath, "//form[@id='js-signup_form']/div[2]/div[5]/div/label/i")
  $join_page_daily_newsletter = $browser.element(:xpath, "//form[@id='js-signup_form']/div[3]/div/label/i")
  $join_page_terms_of_use = $browser.link(:text, /Terms of Use/)
  $join_page_privacy_policy = $browser.link(:text, /Privacy Policy/)
  $join_page_cancel = $browser.link(:text, /Cancel/)
  $join_page_join_button = $browser.input(:id, /signup/)
  
#Join Modal
  $join_modal = $browser.div(:id, /myModal/)
  $join_modal_close = $browser.div(:id, /myModal/).button(:type, /button/) #$close_dialog_x
  $join_modal_facebook = 
  $join_modal_full_name = 
  $join_modal_email = 
  $join_modal_password = 
  $join_modal_password_confirm =
  $join_modal_breaking =
  $join_modal_newsletter =
  $join_modal_terms =
  $join_modal_privacy =
  $join_modal_cancel = 
  $join_modal_join =
  
#Join page error messages
  $join_error_please_check = $browser.div(:text, /Please check for errors/)
  $join_error_email_invalid = $browser.p(:text, /Must be a valid email address/)
  $join_error_email_in_use = $browser.div(:text, /email address already in use/)
  $join_error_password_length = $browser.div(:text, /Must at least 7 characters/)

#Join Confirmation Modal Dialog
  $join_please_check_text = $browser.div(:id, /myModal/).span(:text, /Please check your email/)
  $join_envelope_image = $browser.div(:id, /myModal/).image(:src, /mailbox/)
  $join_next_steps_text =  $browser.div(:id, /myModal/).span(:text, /We've just sent you a link to confirm your address. When you click that link, you will be registered and able to post your own stuff and create your own groups./)
  $join_resend_link = $browser.div(:id, /myModal/).link(:href, /confirmation_email/)
  
####################################
##User Administration > Login Page##
####################################

#Login Page: http://bellmore.nixon.i.patch.com/login
  $login_page_join = $browser.link(:text, /Join now/) #$join, $join_patch_button_right 
  $login_page_email = $browser.text_field(:name, /email/) #$email
  $login_page_password = $browser.text_field(:name, /password/) #$password
  $login_page_password_confirm = $browser.text_field(:name, /confirm_password/) #$password_confirm 
  $login_page_sign_in = $browser.button(:id, /signin/) #$sign_in_button
  $login_page_sign_in_facebook = $browser.a(:href, "/users/authorize") #$sign_in_facebook
  $login_page_remember_me = $browser.checkbox(:id, /persistent_1/) #$remember_me
  $login_page_forgot_password = $browser.link(:href, /forgot_password/) #$forgot_password
  $login_page_cancel = 
  
#Login Modal
  $login_modal_close =
  $login_modal_facebook = 
  $login_modal_email = 
  $login_modal_password =
  $login_modal_cancel =
  $login_modal_sign_in = 
  $login_modal_  = 

#Login page error messages
  $login_email_error_invalid = $browser.div(:text, /Must be a valid email address/)
  $login_email_error_no_record = $browser.div(:text, /Password incorrect/)
  $login_password_error_invalid = $browser.div(:text, /Password incorrect/)
  $login_user_not_found_error = $browser.div(:text, /We do not have a user with that email address, please check the email you entered./)
  $login_error_check = $browser.div(:text, /Please check for errors/)

#Facebook Login Variables
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

##############################################
##User Administration > Forgot Password Page##
##############################################

###################################################################
##http://#{$local_patch}#{$environment}.patch.com/forgot_password##
###################################################################
#Forgot Password page
  $forgot_password_email = $browser.text_field(:name, /email/)
  $forgot_password_go = $browser.button(:class, /success/)
  $forgot_password_success = $browser.div(:text, /that will enable you to reset your password/)

#################################
##User Administration > Profile##
#################################
#Profile Common > Buttons
  $profile_cancel = $browser.link(:class, /close-cancel/) 
  $profile_save_changes = $browser.button(:id, /save/)

#Profile Common > Links Sidebar
  $profile_view = $browser.link(:text, /View Profile/) #$profiles_view
  $profile_edit = $browser.link(:text, /Edit Profile/) #
  $profile_personal = $browser.link(:text, /Personal Info/) #$profiles_personal
  $profile_change_password = $browser.link(:text, /Change Password/) #$profiles_change_pass
  $profile_updates = $browser.link(:text, /Updates/) #$profiles_updates
  $profile_updates_side_link = $browser.element(:xpath, "//ul[@id='userNav']/li/a[text()='Updates']")
  $profile_your_posts = $browser.link(:text, /Your Posts/) #$profiles_your_posts
  $profile_email_settings = $browser.link(:text, /Email Settings/) #$profiles_group_email
  $profile_manage_groups = $browser.link(:text, /Manage Groups/) #$profiles_manage_group_follow

#Profile View Page: http://#{$local_patch}#{$environment}.patch.com/users/[unique_string]
  $profile_edit = $browser.a(:href => /edit/, :class => /btn-success/) #$profiles_edit_link 
  $profile_group_news = #$group_for_guest_user
  $profile_group_icon =  #$profiles_picture_view
  $profile_help_edit_profile = $browser.link(:text, /How to edit your profile/)
  $profile_help_edit_account = $browser.link(:text, /How to edit your account details/)
  $profile_help_change_password = $browser.link(:text, /How to change your password/)
  $profile_help_about_updates = $browser.link(:text, /About updates/)
  $profile_help_email_settings = $browser.link(:text, /How to edit your email settings/)
  $profile_help_about_posts = $browser.link(:text, /About your posts/)
  $profile_help_manage_groups = $browser.link(:href, /How-to-manage-your-blog-group/)

#Profile View Page: http://#{$local_patch}#{$environment}.patch.com/users/[unique_string]/edit
  $profile_account = $browser.span(:text, /Account/)
  $profile_picture = $browser.link(:id, /avatar_upload/)
  $profile_crop_image = $browser.div(:class, /jcrop-tracker/) #$image_crop\
  $profile_image_dialog_close = $browser.button(:class, /close close/)
  $profile_image_dialog_cancel = $browser.button(:class, /close close-cancel/)
  $profile_name = $browser.text_field(:name, /name/)
  $profile_choose_a_file = $browser.link(:id, /avatar_upload/)
  $profile_gender = $browser.select_list(:name, /gender/)
  $profile_home_patch = $browser.select_list(:name, /hometown/)
  $profile_resident_mm = $browser.select_list(:name, /month/)
  $profile_resident_dd = $browser.select_list(:name, /day/)
  $profile_resident_yy = $browser.select_list(:name, /year/)
  $profile_i_am_a = $browser.text_field(:name, /tagline/)
  $profile_more_about = $browser.text_field(:name, "bio")
  $profile_community = $browser.text_field(:name, "favorite")
  $save_changes_profile_pic = $browser.button(:text, /Save/)

#Profile Personal Info Page: http://#{$local_patch}#{$environment}.patch.com/users/[unique_string]/account_contact
  $profile_email = $browser.text_field(:id, /contact_email/)
  $profile_phone = $browser.text_field(:id, /contact_phone/)
  $profile_password = $browser.text_field(:id, /password/)
  $profile_invalid_email_error = $browser.p(:text, /Must be a valid email/) #$invalid_email_error
  $profile_password_prompt_message = $browser.p(:text, /Enter your password before you can continue with your update/)

#Profile Change Password Page: http://#{$local_patch}#{$environment}.patch.com/users/[unique_string]/account_password
  $profile_password_old = $browser.text_field(:name, /old_password/) #$profiles_old_pass
  $profile_password_new = $browser.text_field(:name, /new_password/) #$profiles_new_pass
  $profile_password_confirm = $browser.text_field(:name, /confirm_password/) #$profiles_confirm_pass
  $profile_password_no_match = $browser.span(:text, /Please make sure that your passwords match./) #$profiles_incorrect_pass
  $profile_password_incorrect = $browser.div(:text, /Password incorrect/) #$password_changed_successfully
  $profile_password_check_error = $browser.div(:text, /Please check for errors/)
  $profile_password_invalid = $browser.p(:text, /Must be at least 7 characters/) #error message incorrect, JIRA #3211
  $profile_password_changed = $browser.div(:text => /Password changed successfully/)  

#Profile Updates Page: http://#{$local_patch}#{$environment}.patch.com/users/[unique_string]/notification
  #these variables seem to be missing
  $profile_notification_num = $browser.span(:class => /notification-num/, :index => 1)
  $profile_see_all_updates = $browser.link(:text => /See all updates/)

#Profile Your Posts Page: http://#{$local_patch}#{$environment}.patch.com/users/[unique_string]/draft
  $profile_current = $browser.link(:href, /drafts/) #$profiles_drafts
  $profile_edit_post =  $browser.link(:text, "Edit") #fire_event, same across post pages
  $profile_post_now = $browser.button(:text => "Post Now", :index => 1)
  $profile_delete = $browser.element(:xpath, "//div[@id='draft_preview_btns']//a[@href='#delete_draft_modal']")
  $profile_new_draft = $browser.element(:xpath, "//ul[@id='new_drafts_wraper']/li[1]/a")
  $profile_published_post = $browser.element(:xpath, "//ul[@id='published_drafts_wrapper']/li[1]/a")
  $profile_delete_post = $browser.link(:href => /delete_post_modal/) #$profiles_delete_icon
  $profile_delete_post_alt = $browser.element(:xpath, "//form[@id='edit_post_form']/span[2]/a/i")
  $profile_delete_on_scheduled_post = $browser.element(:xpath, "//div[@id='scheduled_drafts']/section[1]//a[text()='Delete'][1]")
  $profile_delete_close = $browser.div(:id, /delete_draft/).button(:class, /close/) #same across post pages
  $profile_delete_cancel = $browser.div(:id, /delete_draft/).button(:class, /cancel/) #same across post pages
  $profile_delete_delete = $browser.div(:id, /delete_draft/).button(:id, /delete/) #same across post pages
  $profile_delete_alt = $browser.button(:id, /draft_delete/)
  $profile_scheduled = $browser.link(:href, /scheduled/)
  $profile_edit_post =  $browser.link(:text, "Edit") #fire_event, same across post pages
  $profile_published = $browser.link(:href, /published/)
  $profile_p_gicon = $browser.link(:class, /group_avatar/).img(:src, //)
  $profile_p_group = $browser.strong(:class => /group_name/).link(:text => //)
  $proflie_p_user = $browser.strong(:class => /author_name/).link(:text => //)
  $profile_p_article = $browser.div(:class, /bd note/).link(:text => //)
  $profile_p_calendar = $browser.div(:class, /event-info/).link(:href, /calendar/) #event_only
  $profile_p_map = $browser.link(:text, /See Map/) #event only
  $profile_count_of_submitted_drafts = $browser.element(:xpath => "//a[@href= '#submitted_drafts']/span[@class='js-count']")
  $profile_count_of_drafts = $browser.element(:xpath => "//a[@href= '#new_drafts']/span[@class='js-count']")
  $profile_count_of_scheduled = $browser.element(:xpath => "//a[@href= '#scheduled_drafts']/span[@class='js-count']")
  $profile_count_of_published = $browser.element(:xpath => "//a[@href= '#published_drafts']/span[@class='js-count']")
  $profile_time_stamp_on_published_post = $browser.time(:text => /ago/)
  $profile_repost_link_on_post = $browser.link(:text => /Repost/)
  $profile_post_successfully_deleted = $browser.div(:class => /flash_text/, :text => /The post was successfully deleted/)

#Profile Your Posts Page: http://#{$local_patch}#{$environment}.patch.com/users/[unique_string]/email
  $profile_daily = $browser.checkbox(:name, /newsletter/)
  $profile_comments = $browser.checkbox(:name, /commentPreferences/)
  $profile_post_comment = $browser.checkbox(:value, /CommentOnPost/)
  $profile_reposted = $browser.checkbox(:value, /Repost/)
  $profile_group_invite = $browser.checkbox(:value, /InvitationJoinGroup/)
  $profile_group_manager = $browser.checkbox(:value, /GroupAccessModerator/)
  $profile_group_contribute = $browser.checkbox(:value, /GroupAccessContributor/)
  $profile_group_follower = $browser.checkbox(:value, /PrivateGroup/)
  $profile_follows = $browser.checkbox(:value, /NotificationForModerator/)
  $profile_posts = $browser.checkbox(:value, /PostForModerator/)
  $profile_request = $browser.checkbox(:value, /RequestFollow/)
  $profile_preferences = $browser.select_list(:name, /frequency/)
  
#################
##Landing Pages##
#################

#Landing Page Common
  $landing_get_newsletter = $browser.strong(:text => /Get the Daily Newsletter/) #$daily_newsletter
  $landing_facebook_like =
  $landing_tweet =
  $landing_article = 
  $landing_note =
  $landing_user_profile =
  $landing_show_more =

#######################
##Landing Page > Home##
#######################
#Please note all elements related to posts located on the 
#landing pages can be found below in the Posts > Common All area.

#http://#{$local_patch}#{$environment}.patch.com/
#Top left pane, News & Blogs
  $home_news_blogs_link = 
  $home_editor_image =
  $home_editor_pick_link = 
  $home_note_link =
  $home_article_link = 
  $home_blog_link =
  $home_user_profile_link = 
  $home_editor_profile_link = 
  $home_show_more =

#Bottom left pane, Upcoming Events
  $home_see_all_events = $browser.div(:id, /upcoming_events_wrapper/).link(:text => /See all/) #$see_all
  $home_event_link =
  $home_post_event = 

#Right pane, Boards
  $home_all_boards = 
  $home_board_note =
  $home_board_article = 
  $home_board_user_profile =
  $home_more_boards = $browser.link(:text => /More Boards/) #$more_boards
  $home_board_body = $browser.div(:id, /lure/).span(:class, /default-narrow-board-message/)
  $home_board_title = $browser.text_field(:id, /post_title/)
  $home_board_dropdown_button = $browser.element(:xpath, "//div[@id='js-ie-change']/div/div/span")
  $home_board_dropdown_sports = $browser.element(:xpath, "//ul[2]/li[2]/a")
  
#############################
##Landing Page > News/Blogs##
#############################
#Please note all elements related to posts located on the 
#landing pages can be found below in the Posts > Common All area.
#Ex: Post now button, comment button, recommend button, etc. 
#Please review Post section before adding variables related to posts.

#Page Objects: Use Merrick to validate news links

#http://#{$local_patch}#{$environment}.patch.com/news

#Left pane, news list
  $news_all_news_blogs =
  $news_breaking_news =
  $news_business_news =
  $news_editors_picks = 
  $news_police_fire =
  $news_politics_elections =
  $news_school_news =
  $news_transportation = 
  
#Left pane, blog list
  $news_blog_group =
  $news_more_blogs = 
  $news_start_blog =

#Right pane, All News & Blogs
#These elements can be found in Landing Page Common
  $news_comment_icon = $browser.i(:class => /comment-icon/)
  $news_leave_comment_textfield =  $browser.text_field(:id => /comment_body/)
  $news_post_comment =  $browser.button(:id => /comment_submit/)
  $news_article_headline = $browser.h3(:class, /feed-headline/)

#Landing page for new/blog pages
	$news_page_headline = $browser.div(:id, "feed").h3(:class => "feed-headline", :index => 0).a(:href, /groups/) 
	$news_page_next_story = $browser.link(:text, /Next Story/)
	$news_page_read_now = $browser.link(:text, /Read Now/)
	$news_page_top_post_link = $browser.element(:xpath, "//div[@id='feed']/div/div/div/h3/a")
	

#########################
##Landing Page > Boards##
#########################
#Please note all elements related to posts located on the 
#landing pages can be found below in the Posts > Common All area.
#Ex: Post now button, comment button, recommend button, etc. 
#Please review Post section before adding variables related to posts.

#http://#{$local_patch}#{$environment}.patch.com/boards

#Left Pane, Boards
  $boards_all_boards =
  $boards_buy_sell_trade =
  $boards_business_updates =
  $boards_announcements = $browser.element(:xpath => "//ul[@id='boardsActive']/li/a/span[2]") #$flatiron_announcement_select
  $boards_more_boards =
  
#Right Pane, All Boards
  $boards_patch_new_group = "http://#{$local_patch}#{$environment}.patch.com/groups/new"
  $boards_open_group = $browser.radio(:value, /open/)
  $boards_group_name = $browser.text_field(:index, 1)
  $boards_group_nickname = $browser.text_field(:index, 2)
  $boards_group_description = $browser.text_field(:index, 2)
  $boards_category_arts = $browser.span(:text, "Arts & Entertainment")
  $boards_choose_icon = $browser.span(:text, /View All/)
  $boards_arts_ent_drop = $browser.link(:text, /Entertainment Icons/)
  $boards_arts_ent_image = $browser.element(:xpath, "//*[@id=\"icon_carousel\"]/div[1]/div/div[1]/div/img")
  $boards_group_check_errors = $browser.div(:class, /alert-error/)
  $boards_create_group = $browser.button(:id, /create_group/)
  $boards_save_changes = $browser.link(:text, /Save Changes/)
  $boards_post_group_error = $browser.p(:text, "Please pick a group to post in.")
  $boards_post_text_error = $browser.p(:text, "Please fill out this field")
  $boards_newsletter_subscribe = $browser.div(:class, /news-feed-social-tools/).button(:class, /group-subscribe subscribe /)
  $boards_newsletter_unsubscribe = $browser.div(:class, /news-feed-social-tools/).button(:class, /group-subscribe subscribed /)
  

#########################
##Landing Page > Events##
#########################
#Please note all elements related to posts located on the 
#landing pages can be found below in the Posts > Common All area.
#Ex: Post now button, comment button, recommend button, etc. 
#Please review Post section before adding variables related to posts.

#http://#{$local_patch}#{$environment}.patch.com/events

#Left pane, All Events
  $events_all_events = $browser.link(:text, /All Events/)
  $events_family = $browser.link(:text, /Family/)
  $events_free = $browser.link(:text, /Free/)
  $events_this_weekend = $browser.link(:text, /This Weekend/)

#Left pane, Categories
  $events_sports_rec =
  $events_art_ent =
  $events_schools =
  $events_religious =
  $events_food_drink =
  $events_garage_sales =
  $events_volunteer =
  $events_real_estate =
  $events_post_event =

#Right pane, All Events
#These elements can be found in Landing Page Common
  $events_post_event =
  $events_calendar_icon =
  $events_pick_date =
  $events_today =
  $events_day_2 =
  $events_day_3 =
  $events_day_4 =
  $events_day_5 = $browser.element(:xpath, "//div[@id='the_content']/div/div/div[2]/div/div[2]/div[2]/div/ul/li[5]/a/div[2]")
  $events_day_6 =
  $events_day_7 =
  $events_add_to_calendar =
  $events_see_map =
  $events_user_account =
  $events_all_events_header = $browser.span(:id => "feed-header", :text => /All Events/)
  $events_family_header = $browser.span(:id => "feed-header", :text => /Family/)
  $events_free_header = $browser.span(:id => "feed-header", :text => /Free/)
  $events_this_weekend_header = $browser.span(:id => "feed-header", :text => /Events this weekend/)
  $events_comment_icon_1st_event = $browser.i(:class, /icon_comment-icon/)
  $events_comment_body = $browser.text_field(:id, /comment_body/)
  $events_comment_submit = $browser.button(:id, /comment_submit/)
  $events_date_header = $browser.div(:class, /day-header/)


#############################
##Landing Page > Businesses##
#############################
#Please note all elements related to posts located on the 
#landing pages can be found below in the Posts > Common All area.
#Ex: Post now button, comment button, recommend button, etc. 
#Please review Post section before adding variables related to posts.

#http://#{$local_patch}#{$environment}.patch.com/directory

#Left pane, Categories
  $business_new_reviews =
  $business_restaurants_bars =
  $business_internet =
  $business_claim_listing = 
  
#Right pane, New Reviews & Posts
  $business_scroll_left = $browser.i(:class, /scroll-left/)
  $business_scroll_right = $browser.i(:class, /scroll-right/)
  $business_button_1 = $browser.link(:id => /carousel/, :index => 1)
  $business_button_2 = $browser.link(:id => /carousel/, :index => 2)
  $business_button_3 = $browser.link(:id => /carousel/, :index => 3)
  $business_button_4 = $browser.link(:id => /carousel/, :index => 4)
  $business_button_5 = $browser.link(:id => /carousel/, :index => 5)
  $business_title = $browser.div(:class, /carousel-inner/).link(:href, /listings/) #fire_event("onclick")
  $business_image = $browser.div(:class, /carousel-inner/).div(:class, /avatar/).img(:src, //) #fire_event("onclick")
  $business_address =
  
  $business_top = $browser.div(:class, /container_fluid/).link(:href, //)
  $business_upcoming_events = $browser.link(:text, /Upcoming Events/)
  $business_listing_manager = $browser.div(:class, /container_fluid/).link(:href, /users/)
  $business_review_follow_indicator = $browser.button(:class, "btn btn-with-icon group-follow following") #$profiles_manage_group_follow 
  $business_review_no_follow_indicator = $browser.button(:class, "btn btn-success group-follow follow")
  $business_first_note_review = $browser.div(:class, /feed-adj-margin/).div(:class, /note-media/).link(:href, /groups/)
  $business_first_photo_review = $browser.div(:class, /media feed/).link(:class, /img thumbnail/)

#Business page
  $business_settings_link = $browser.link(:href, /basic_information/)

########################
##Landing Page > Misc.##
########################

#http://#{$local_patch}#{$environment}.patch.com/contact
  $contact_visit_help =
  $contact_visit_advertising =
  $contact_jobs = 
  $contact_partnerships = 
  $contact_media = 

#http://#{$local_patch}#{$environment}.patch.com/about
  $about_great_team =
  $about_advisory =
  $about_let_us_know =
  $about_give_five =

#http://#{$local_patch}#{$environment}.patch.com/terms
  $terms_support_one = 
  $terms_privacy =
  $terms_aol_copy =
  $terms_support_two =
  
#http://#{$local_patch}#{$environment}.patch.com/privacy
  $privacy_opt_out =
  $privacy_ftc =
  $privacy_terms =
  $privacy_privacy_email =
  
#http://#{$local_patch}#{$environment}.patch.com/claim
  $claim_support = 
  $claim_advertising =

#http://#{$local_patch}#{$environment}.patch.com/patch-u
  $university_internship = 
  $univeristy_patch = 
  $university_patch_u_one =
  $university_patch_u_two =
  $university_patch_u_three =
  $univeristy_twitter = 
  $university_facebook =

##########
##Groups##
##########

#####################
##Groups > Settings##
#####################

#Group Common
  $group_basic_information_link = $browser.link(:text, /Settings/)
  $group_group_icon =
  $group_group_type = $browser.link(:text, /Group Type/)
  $group_group_followers = $browser.link(:text, /Followers/)
  $group_back_group = $browser.link(:text, /Back to Group/)
  $group_help_edit_group_icon = $browser.link(:text, /edit your group logo/)
  $group_help_edit_group_type = $browser.link(:text, /edit group type/)
  $group_help_manage_roles = $browser.link(:text, /manage roles and followers/)
  $group_help_invite_people = $browser.link(:text, /invite people/) 
  $group_help_see_more_topics =
  $group_settings_save = $browser.button(:id, /edit_group_btn/)
  $group_settings_cancel = $browser.link(:text, /Cancel/)

#http://#{$local_patch}#{$environment}.patch.com/groups/[unique_string]/edit/basic_information
  $group_name = $browser.text_field(:name, /name/)
  $group_description = $browser.text_field(:name, /tagline/)
  $group_arts = $browser.div(:class, /group-edit/).span(:text, /Arts & Entertainment/)
  $group_business = $browser.div(:class, /group-edit/).span(:text, /Business/)
  $group_education = $browser.div(:class, /group-edit/).span(:text, /Education/)
  $group_family = $browser.div(:class, /group-edit/).span(:text, /Family/)
  $group_living = $browser.div(:class, /group-edit/).span(:text, /Living/)
  $group_news = $browser.div(:class, /group-edit/).span(:text, /News/)
  $group_opinion = $browser.div(:class, /group-edit/).span(:text, /Opinion/)
  $group_other = $browser.div(:class, /group-edit/).span(:text, /Other/)
  $group_politics = $browser.div(:class, /group-edit/).span(:text, /Politics/)
  $group_sports = $browser.div(:class, /group-edit/).span(:text, /Sports/)
  
#http://#{$local_patch}#{$environment}.patch.com/groups/[unique_string]/edit/group_icon
  $group_icon_business = $browser.link(:text, "Choose One")
  $group_icon_upload = $browser. div(:id, /avatar_upload/).i(:class, /icon_camera/)
  $group_media_save_upload = $browser.div(:class, /modal-upload/).div(:class, /modal-footer/).button(:id, /avatar-generate/)
  $group_image_1 = $browser.link(:id, /group_photo1/) #fire_event("onclick")
  $group_image_2 = $browser.link(:id, /group_photo2/) #fire_event("onclick")
  $group_image_3 = $browser.link(:id, /group_photo3/) #fire_event("onclick")
  $group_image_1_delete = $browser.link(:id, /group_photo1/).i(:class, /icon_x-white/) #fire_event("onclick")
  $group_image_2_delete = $browser.link(:id, /group_photo2/).i(:class, /icon_x-white/) #fire_event("onclick")
  $group_image_3_delete = $browser.link(:id, /group_photo3/).i(:class, /icon_x-white/) #fire_event("onclick")
  $group_span_3_frames = $browser.div(:class, /modal-footer/).i(:class, /inline-icon/)
  $group_upload_frames_cancel = $browser.div(:class, /modal-footer/).button(:class, /close-cancel/)
  $group_upload_frames_save = $browser.div(:class, /modal-footer/).button(:id, /avatar/)
  $group_upload_frames_close = $browser.div(:class, /modal-footer/).button(:class, "close")
  $group_delete_image_yes = $browser.div(:class, /modal-footer/).link(:class, /btn-confirm/)
  $group_delete_image_no = $browser.div(:class, /modal-footer/).link(:text, /No/)  
  $group_manager_drop_down = $browser.div(:class => /media group-follower/, :index => 1).span(:class, /btn-small/)  
  $group_follower_drop_down = $browser.div(:class => /media group-follower/, :index => 4).span(:class, /btn-smal/)
  $group_make_manager = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Manager/)
  $group_make_follower = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Follower/)
  $group_make_removed = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Remove/)
  
#Group Icons
#The following variables correspond to the patch provided icons. 
#The icons will be numbered horizontally from left to right, then vertically.
#Ex:
#Set 1:
#    1  2  3  4
#    5  6  7  8
#    9 10 11 12
#Set 2:
#   13 14

  $group_icon_1 =
  $group_icon_2 =
  $group_icon_3 =
  $group_icon_4 =
  $group_icon_5 =
  $group_icon_6 =
  $group_icon_7 =
  $group_icon_8 =
  $group_icon_9 =
  $group_icon_10 =
  $group_icon_11 =
  $group_icon_12 =
  $group_icon_13 =
  $group_icon_14 =
  $group_icon_left_arrow =
  $group_icon_right_arrow =
  $group_icon_left_button =
  $group_icon_right_arrow =

#http://#{$local_patch}#{$environment}.patch.com/groups/[unique_string]/edit/group_type
  $group_setting_open = $browser.ul(:class, /js-pretty-radios/).img(:src, /open-group-small/)
  $group_setting_closed = $browser.ul(:class, /js-pretty-radios/).img(:src, /approved-people/)
  $group_setting_post_moderated = $browser.li(:class, /js-pretty-radio/).div(:class, /more-headroom/).img(:src, /post-moderated/)
  $group_setting_pre_moderated = $browser.element(:xpath, "//form[@id='edit_group_form']/fieldset/ul[2]/li[2]/a/div/img")
  
#http://#{$local_patch}#{$environment}.patch.com/groups/[unique_string]/edit/followers
  $group_manager_profile_link = $browser.link(:href, /users/) #fire_event("click")
  $group_manager_drop_down = $browser.div(:class, /follower_body manager/).span(:class, /btn-small/)
  $group_follower_drop_down = $browser.div(:class => /media group-follower/, :index => 4).span(:class, /btn-small/)
  $group_make_manager = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Manager/)
  $group_make_follower = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Follower/)
  $group_make_removed = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Remove/)

################
##Groups > New##
################
#Common New Boards, Blogs, News
  $group_name = $browser.text_field(:name, /name/)
  $group_description = $browser.text_field(:index, 2)
  $group_create = $browser.button(:id, /create_group/)
  $group_create_success = $browser.div(:text, /Group created successfully/)
  $group_save_changes = $browser.button(:id, /edit_group_btn/)
  
#Common New Boards, News  
  $group_category_arts = $browser.span(:text, /Art/)
  $group_category_business = $browser.span(:text, "Business")
  $group_category_education = $browser.span(:text, "Education")
  $group_category_schools = $browser.span(:text, "Schools")
  $group_category_family = $browser.element(:xpath, "//*[@id=\"group_form\"]/fieldset/div[3]/div/div[3]/div[1]/ul/li[4]/a/span") 
  $group_category_family_alt_1 = $browser.div(:class, /group-edit/).div(:class, /controls/).span(:text, "Family")
  $group_category_family_span = $browser.span(:text, "Family")
  $group_category_living = $browser.span(:text, "Living")
  $group_category_news = $browser.span(:text, "News")
  $group_category_opinion =$browser.span(:text, "Opinion")
  $group_category_opinion_alt_1 = $browser.div(:class, /group-edit/).div(:class, /controls/).span(:text, "Opinion")
  $group_category_board_opinion = $browser.element(:xpath, "//*[@id=\"group_form\"]/fieldset/div[5]/div[3]/ul/li[2]/a/i")
  $group_category_other = $browser.span(:text, "Other")
  $group_category_politics = $browser.span(:text, "Politics")
  $group_category_sports = $browser.element(:xpath, "//*[@id=\"group_form\"]/fieldset/div[3]/div/div[3]/div[2]/ul/li[5]/a/span")

#Follow a Group
  $group_follow_group = $browser.button(:type=> /submit/, :class => /group-follow/)
  $group_follow_success_text = $browser.span(:class => /large-theme-header/, :text => /Great/)
  $group_follow_success_ok_button = $browser.link(:text => /OK/)
  $group_follow_a_group = $browser.button(:text, /Follow/)
  $group_follow_invite_to_group = $browser.link(:href, /invite_friends/)
  $group_follow_invite_email = $browser.link(:href, /#email/)
  $group_follow_contacts_email =$browser.text_field(:name, /manualEmails/)
  $group_follow_invite_people = $browser.button(:id => /post_submit/)
  $group_follow_invite_success = $browser.link(:text => /Ok/)
  $group_follow_group_settings = $browser.div(:class, /news-feed-social-tools/).link(:href, /edit/)
  $group_follow_group_followers = $browser.link(:text, /Followers/)
  $group_follow_group_access_dropdown = $browser.element(:xpath,"//div[@class='groups_followers_section']/div[contains(text(), 'Contributors')]/..//a[contains(@class, 'dropdown')]")
  $group_follow_group_access_make_a_manager = $browser.link(:href, /Make a Manager/)
  $group_follow_request_invite = $browser.button(:text => /Request Invite/)
  $group_follow_approve_as_follower = $browser.button(:text => /Approve/)

##############
##Businesses##
##############

########################
##Businesses > Reviews##
########################
#Review New
  #$business_review_begin must be clicked to interact with any of the following elements
  $business_review_begin = $browser.div(:id, /lure/)
  $business_review_close = $browser.div(:id, /inline_post/).button(:class, /close/)
  $business_review_impressed = $browser.div(:id, /inline_post/).label(:class, /impressed/)
  $business_review_disappointed = $browser.div(:id, /inline_post/).label(:class, /btn-disappointed/)
  $business_review_text = $browser.div(:id, /inline_post/).text_field(:id, /post/) #$share_review_text_field, $post_compose_review
  $business_review_face_button = $browser.div(:id, /inline_post/).link(:id, /review/)
  $business_review_note_button = $browser.div(:id, /inline_post/).link(:id, /note/)
  $business_review_photo = $browser.div(:id, /inline_post/).div(:id, /post_pic/).link(:id, /pickfiles/)
  $business_review_photo_caption = $browser.div(:id, /assets/).text_field(:class, /asset-caption/)
  $business_review_photo_remove = $browser.div(:id, /assets/).link(:class, /close removefile/)
  $business_review_title = $browser.text_field(:id, /post_title/)
  $business_review_post = $browser.div(:id, /inline_post/).button(:id, /post/)
  $business_review_photo_button = $browser.div(:id, /inline_post/).i(:class, /snapshot/)
  $business_review_article_button = $browser.div(:id, /inline_post/).link(:id, /article/) #takes user to posts/article/new
  $business_review_event_button = $browser.div(:id, /inline_post/).link(:id, /event/) #takes user to posts/event/new
  $business_review_photo_caption = $browser.div(:id, /assets/).text_field(:class, /asset-caption/)
  $business_review_post = $browser.div(:id, /inline_post/).button(:id, /post/) #$group_post_button
  
#Review Existing
  $business_icon = $browser.span(:class, /group-badge/)
  $business_business = $browser.strong(:class, /group_name/).link(:href, /listings/)
  $business_user = $browser.strong(:class, /author_name/).link(:href, /users/)
  $business_review = $browser.div(:class, /review/).div(:class, /media/).link(:href, /groups/)
  $business_comment = $browser.div(:id, /review_list/).div(:class, /feed-share/).link(:class, /comment/)
  $business_repost = $browser.div(:id, /review_list/).div(:class, /feed-share/).link(:class, /repost/)
  $business_edit_review = $browser.div(:id, /author_controls/).form(:id, /edit_post_form/).link(:text, /Edit this Post/)
  $business_delete_review = $browser.div(:id, /author_controls/).form(:id, /edit_post_form/).link(:text, /Delete this Post/)
  $business_delete_close = $browser.div(:id, /delete_post_modal/).button(:class, /close/)
  $business_delete_cancel = $browser.div(:id, /delete_post_modal/).button(:class, /cancel/)
  $business_delete_confirm = $browser.div(:id, /delete_post_modal/).button(:id, /delete/)
  $business_edit_note = $browser.text_field(:id, /post_short_body/)
  $business_review_flag = $browser.link(:text, /Flag/)
  $business_flag_close_modal = $browser.div(:id, /global_modal/).button(:class, /close/)
  $business_flag_terms_modal = $browser.div(:id, /global_modal/).link(:href, /terms/)
  $business_flag_cancel_modal = $browser.div(:id, /global_modal/).button(:class, /cancel/)
  $business_flag_confirm_modal = $browser.div(:id, /global_modal/).button(:id, /flag_submit/)
  $business_flag_success = $browser.div(:class, /flash_text/)
  
#Review Comment
  $business_review_bottom_comment = $browser.text_field(:id, /comment/)
  $business_review_listing = $browser.div(:class, /pull-right flex1/).link(:href, /listing/)
  $business_review_follow = $browser.div(:class, /sidebar/).button(:type, /submit/) #$browser.span(:class, /permissions-button/).button(:class, /group-follow/) #fire_event("onclick")
  $business_group_follow_close = $browser.div(:id, /global_modal/).button(:class, /close/)
  $business_group_follow_ok = $browser.link(:class, /btn-success btn-confirm/) #fire_event
  $business_group_follow_updates_on = $browser.i(:class, /icon_unchecked/)
  $business_group_follow_updates_off = $browser.i(:class, /icon_checked/)
  $business_group_account = $browser.span(:class, /span8/).link(:href, /email/)
  $business_review_user
  $business_review_view
  $business_review_fb = $browser.link(:text, /Share on Facebook/)
  $business_review_twitter = $browser.link(:text, /Tweet/)
  $business_review_comment = $browser.link(:text, /leave a comment/)
  $business_review_post_comment = $browser.div(:class, /inline-comment/).button(:text, /Post Comment/)
  
#########
##Posts##
#########

######################
##Posts > Common All##
######################

#Common Add
  $post_new_post = $browser.div(:class, /full-content/).div(:id, /author_controls/)
  $post_pick_group_search = $browser.div(:class, /group-chooser/).text_field(:id, /searchText/)
  $post_pick_search_button = $browser.div(:class, /group-chooser/).i(:class, /menu-icon/)
  $post_group_close = $browser.button(:id, /chooser-close/)
  $post_add_another = $browser.div(:class, /group-chooser/).link(:class, /add-group/) #$group_select
  $post_add_media_note = $browser.div(:id, /post_pic/).link(:id, /pickfiles/)
  $post_group_new_note = $browser.div(:class, /note/)
  $post_new_post = $browser.div(:class, /full-content/).div(:id, /author_controls/)
  $post_pick_search_button = $browser.div(:class, /group-chooser/).i(:class, /menu-icon/)
  $post_group_close = $browser.button(:id, /chooser-close/)
  $post_add_another = $browser.link(:class, /js-add-group/)
  $post_add_media = $browser.i(:class, /camera/)
  $post_media_caption = $browser.text_field(:class, /asset-caption/)
  $post_media_delete = $browser.link(:class, /removefile/)
  $post_fb_share = $browser.i(:class, /facebook-small/)
  $post_tw_share =  $browser.i(:class, /twitter-small/)
  $post_cancel = $browser.link(:text, /Cancel/)
  $post_note_cancel = $browser.div(:id, /post_form/).button(:id, /form-close/)

#Post Now Variants
  $post_now = $browser.button(:id, /post_submit/) #fire_event("onclick")
  $post_now_moderation_control = $browser.element(:xpath,"//div[contains(@class,'moderation-control-tools')]//button[@type='submit' and contains(text(),'Post')]")
  $post_now_alt_1 = $browser.button(:text => /Post Now/) #$post_now_button
  $post_now_alt_2 = $browser.div(:class, /publish-tools-action/).button(:text, /Post Now/) #fire_event("onclick")
  $post_now_alt_3 = $browser.div(:class, /publish-tools-action/).button(:id, /post_submit/) 
  $post_now_alt_4 = $browser.div(:class, /button-stuff/).div(:id, /moderation_btns/).button(:id, /post_submit/)
  $post_now_alt_5 = $browser.div(:class, /inline-block pull-right headroom mobile-no-float js-publish-tools-action/).button(:id, /post_submit/)
  $post_now_alt_6 = $browser.element(:xpath, "//*[@id=\"post_submit\"]")
  $post_now_alt_7 = $browser.element(:xpath, "//div[@id='moderation_btns']/div[2]/button")
  $post_now_event = $browser.div(:class, /publish-tools/).div(:class, /inline-block/).button(:class, /post_submit/) #fire_event("onclick")
  $post_now_article = $browser.div(:class, "inline-block content-middle").button(:id => "post_submit", :name => "commit")
  $post_submit_approval = $browser.div(:class, /publish-tools/).button(:name, /commit/)
  $post_submit_approval_draft = $browser.div(:class, /draft_preview/).button(:name, /commit/)
  $post_submit_approval_alt = $browser.button(:text => /Submit For Approval/)
  $post_submit_approval_alt2 = $browser.button(:id => /submit_for_approval/)
  
#Common Add, Draft Interactions
  $post_save_draft = $browser.button(:text, /Save Draft/)
  $post_draft_confirmation = $browser.div(:class, /alert-post-message/) #$draft_saved_message
  
#Common View
  $post_now_edit = $browser.div(:class, /publish-tools/).button(:id, /post/) #fire_event("onclick")
  $post_now_edit_alt1 = $browser.button(:id, /post_submit/)
  $post_now_edit_event = $browser.div(:class, /publish-tools/).button(:id, /post/)

#Common Edit/Delete
  $post_edit_post = $browser.div(:id, /author_controls/).link(:href, /edit/)
  $post_delete_post = $browser.div(:id, /author_controls/).link(:href, /#delete_post_modal/) 
  $post_delete_close = $browser.div(:id, /delete_post_modal/).button(:class, /close/)
  $post_delete_cancel = $browser.div(:id, /delete_post_modal/).button(:class, /cancel/)
  $post_delete_confirm = $browser.div(:id, /delete_post_modal/).button(:id, /draft_delete/)
  $post_edit_note = $browser.text_field(:id, /post_short_body/) #$inline_post_short_body
  $post_repost_flag = $browser.link(:href, /flag_modal/)

#Post Preview 
  $post_pre_edit_post = $browser.div(:id, /draft_preview_btns/).link(:href, /edit/)
  $post_pre_delete_post = $browser.div(:id, /draft_preview_btns/).link(:href, /delete/) 
  $post_pre_post_now = $browser.div(:id, /draft_preview_btns/).button(:text, "Post Now")
  
#Inline Comments
  $comment_leave_comment = $browser.div(:class, /vertical-box wrap feed-content-image/).a(:index => 3)  ##First article on the list
  $comment_hp_featured_comment = $browser.div(:id, "news").div(:class, /featured/).span(:index => 4) #Featured article on the homepage
  $comment_hp_board_comment = $browser.div(:id, "board_feed").div(:index => 0).i(:class, /icon_comment/) 
  $comment_textfield = $browser.form(:id, /new_comment/).text_field(:id, /comment_body/) #$business_comment_body, $business_review_comment_text, $business_comment_body, $leave_comment_textfield
  $comment_submit = $browser.button(:id, /comment_submit/) #$business_comment_post, $group_post_comment
  $comment_text_visible = $browser.p(:text, /Test Comment/)
  $comment_delete_link = $browser.div(:id, /comments_list/).link(:text, /Delete/)
  $comment_delete_close_modal = $browser.div(:class, "modal hide fade in modal_confirm").div(:class, "modal-header").button(:class, "close")
  $comment_delete_cancel_modal = $browser.div(:id, /global_modal/).div(:class, /modal-footer/).button(:text, /Cancel/)
  $comment_delete_confirm_modal = $browser.button(:text, /Delete/) #$browser.div(:id, /global_modal/).div(:class, /modal_confirm/).div(:class, /modal-footer/).button(:id, /comment_delete/)
  $comment_flag_link = $browser.link(:text, /Inappropriate/)
  $comment_flag_close_modal = $browser.div(:id, /global_modal/).div(:class, /modal_confirm/).div(:class, /modal-header/).button(:class, /close/)
  $comment_flag_terms_modal = $browser.div(:id, /flag_modal/).link(:href, /terms/)
  $comment_flag_cancel_modal = $browser.div(:id, /global_modal/).div(:class, /modal_confirm/).div(:class, /modal-footer/).button(:class, /close-cancel/)
  $comment_flag_confirm_modal = $browser.div(:class, /modal_confirm/).button(:id, /flag_submit/)
  $comment_flag_success = $browser.div(:class, /flash_text/)
  $comment_count_total = $browser.a(:href, "#new_comment")
  
#Repost
  $repost_new_button = $browser.div(:class, /post-social-tools/).link(:href, /repost/)
  $repost_group_select = $browser.button(:text, /Choose a group/)
  $report_group_choose = $browser.div(:class, /group-chooser/).div(:class, /span/) #can be used to select any number of groups
  $repost_another_group = $browser.link(:text, /Add another group/)
  $repost_remove_group = $browser.form(:id, /repost_form/).div(:class, /chooser-btn/).button(:class, /remove light/)
  $repost_placeholder =  $browser.text_field(:placeholder, /Add a message/)
  $repost_text = $browser.text_field(:id, /post_short/)
  $repost_button = $browser.form(:id, /repost/).button(:id, /submit/)
  $repost_close = $browser.form(:id, /repost/).button(:class, /close/)
  $repost_cancel = $browser.form(:id, /repost/).button(:class, /cancel/)
  $repost_confirmation = $browser.form(:id, /edit_post_form/)
  $repost_new_post = $browser.button(:class, /post-menu/)
  #$repost_directory_review_begin must be clicked to interact with any of the following elements
  $repost_directory_review_begin = $browser.div(:id, /lure/)
  $repost_directory_review_article_button = $browser.div(:id, /inline_post/).link(:id, /article/) #takes user to posts/article/new
  $repost_group_select = $browser.button(:text, /Choose a group/)
  $report_group_choose = $browser.div(:class, /group-chooser/).div(:class, /span/) #can be used to select any number of groups
  $repost_another_group = $browser.link(:text, /Add another group/)
  $repost_remove_group = $browser.button(:class, /remove/) #$browser.div(:class, /add-group/).link(:class, /remove/)
  $repost_placeholder = $browser.text_field(:placeholder, /Add a message/)
  $repost_text = $browser.text_field(:id, /post_short/)
  $repost_link = $browser.link(:text => /Repost/)
  $repost_button = $browser.form(:id, /repost/).button(:id, /submit/)
  $repost_close = $browser.form(:id, /repost/).button(:class, /close/)
  $repost_cancel = $browser.form(:id, /repost/).button(:class, /cancel/)
  $repost_confirmation = $browser.form(:id, /edit_post_form/)
  $repost_confirmation_article = $browser.div(:class, /repost-post/)
  
#Recommend
  $post_recommend_icon = $browser.i(:class => /recommend-icon/) #$recommend_icon
  $post_recommend_link = $browser.span(:xpath, "/html/body/div[2]/div[5]/div[3]/div/div/div[2]/div/div/div[6]/div/div/span[2]/span/a/span")
  $post_recommend_flash_modal = $browser.div(:class, /flash_container/)
  $post_recommend_flash_close = $browser.button(:class, /flash_close/)
  $post_recommend_landing = $browser.div(:class, /headroom horizontal-box/).a(:index => 5)  ##First article on the list
  $post_recommend_homepage_feed = $browser.div(:id, "feed").div(:class => /feed-row/, :index => 5).span(:text, "Recommend") #last article in the feed
  $post_recommend_hp_boards = $browser.div(:id, "board_feed").div(:class => /feed-row/, :index => 4).span(:class, /like_button/) #fifth board in feed
  
#Approval
  $post_wait_approval_icon = $browser.span(:id, /submitted_drafts_count/)
  $post_for_approval_icon = $browser.div(:id, /submitted_drafts/).i(:class, /icon_moderation-article/)
  $post_reject_icon = $browser.element(:xpath, "//a[contains(@href,'rejectModal')]")
  $post_reject_reason = $browser.text_field(:id, /reject_reason/)
  $post_reject_button = $browser.button(:id, /reject_draft/)
  

############################
##Posts > Events, Articles##
############################

#Common Add  
  $post_pick_group = $browser.div(:class, /post-bucket controls/).button(:text, /Choose/)
  $post_pick_category = $browser.form(:id, /repost_form/).link(:text, /Add a category/)
  $post_group_drop_down = $browser.select_list(:class, /group-choose/)
  $post_group_select = $browser.div(:class, /group-chooser-modal/).div(:class, /group-chooser/).div(:class, /span8 footroom half-headroom/).link(:href, /groups/)
  $post_group_select_2 = $browser.div(:class, /group-chooser-modal/).div(:class, /group-chooser/).div(:class, /span8 footroom half-headroom/).link(:href, /groups/)
  $post_pick_group_search = $browser.div(:class, /group-chooser/).text_field(:id, /searchText/)
  $post_pick_search_button = $browser.div(:class, /group-chooser/).i(:class, /menu-icon/)
  $post_group_close = $browser.button(:id, /chooser-close/)
  $post_add_another = $browser.div(:class, /group-chooser/).link(:class, /add-group/)
  $post_group_error_check = $browser.div(:class, /full-content/).div(:text, /Please pick a group to post in./) 
  $post_group_error_invalid = $browser.div(:class, /post-bucket/).p(:text, /Must be a valid group/)
  $post_add_media_article = $browser.div(:id, /post_pic/).link(:class, /light-link/)
  $post_media_caption = $browser.text_field(:class, /asset-caption/)
  $post_media_delete = $browser.link(:class, /removefile/)
  $post_fb_share = $browser.i(:class, /facebook-small/)
  $post_tw_share =  $browser.i(:class, /twitter-small/)
  $post_cancel = $browser.link(:text, /Cancel/)

#Common Advanced Settings
  $post_advanced =  $browser.link(:text, /Advanced Options/)
  $post_advanced_calendar = $browser.text_field(:name, /publish_at/)
  $post_advanced_time = $browser.select_list(:name, /publish_at.time/) #.select("8:00 AM")
  $post_scheduled_post = $browser.link(:text, /Scheduled Posts/)
  $post_calendar_textfield = $browser.text_field(:name, /publish/)
  $post_time_textfield = $browser.div(:class, /combobox/).span(:class, /dropdown/)
  $post_advanced_time_drop_down = $browser.div(:id, /advanced_options/).span(:class, /dropdown/)  
  
#To be organized:
  $post_draft_dropdown = $browser.form(:id, /post/).div(:class, /btn-group/).button(:id, /post_dropdown/)
  $post_note_cancel = $browser.div(:id, /post_form/).button(:id, /form-close/)  
  $post_draft_success = $browser.div(:class, /post-message/)
  $post_draft_error = $browser.div(:id, /alert-post/)
  $post_group_error_check = $browser.div(:class, /full-content/).div(:text, /Please pick a group to post in./) 
  $post_group_error_invalid = $browser.div(:class, /post-bucket/).p(:text, /Must be a valid group/)
  
#Common Drafts
  $profile_current = $browser.link(:href, /drafts/)
  $profile_edit_post =  $browser.div(:id, /draftTabContent/).link(:href, /edit/) #fire_event, same across post pages
  $profile_goto_draft = $browser.div(:id, /draftTabContent/).link(:href, /edit/)
  $post_delete_draft = $browser.div(:class, /moderation-box/).link(:href, /delete_draft/)
  $profile_delete_close = $browser.div(:id, /delete_draft/).button(:class, /close/) #same across post pages
  $profile_delete_cancel = $browser.div(:id, /delete_draft/).button(:class, /cancel/) #same across post pages
  $profile_delete_delete = $browser.div(:id, /delete_draft/).button(:id, /delete/) #same across post pages
  $profile_delete_delete_alt = $browser.element(:xpath, "//form[@id='reject_form']/button")
  $profile_scheduled = $browser.link(:href, /scheduled/)
  $profile_edit_post =  $browser.link(:text, "Edit") #fire_event, same across post pages 
  $profile_published = $browser.link(:href, /published/)
  $profile_p_gicon = $browser.link(:class, /group_avatar/).img(:src, //)
  $profile_p_group = $browser.div(:class, /post-credit/).link(:href, /groups/)
  $proflie_p_user = $browser.div(:class, /post-credit/).link(:href, /users/)
  $profile_p_article = $browser.div(:class, /bd note/)
  $profile_p_calendar = $browser.div(:class, /event-info/).link(:href, /calendar/) #event_only
  $profile_p_map = $browser.link(:text, /See Map/) #event only 
  
###########################
##Posts > Notes, Articles##
###########################

#Common View 
  $post_picture_caption = $browser.div(:id, /asset-image-holder/).span
          
#Common Edit
  $post_note_to_delete_link = $browser.div(:id, /feed/).div(:class, /postItem/).link(:text, /Note/)

################################################
##Posts > Common Inline Notes, Inline Articles##
################################################

#Common Add
  $post_media_description = $browser.text_field(:id, /post_short/)
  $post_media_button =  $browser.div(:id, /inline_post_container/).link(:id, /pickfiles/)
  $post_media_button_alt = $browser.element(:xpath, "//a[@id='pickfiles']/span")
  
#Common View

#Common Edit

################
##Posts > Note##
################

#Note New
  $post_activate_note = $browser.div(:id, /lure/).span(:class, /prompt/)
  $post_compose_note = $browser.text_field(:id, /post_short/) #maxlength = 250 chars
  
#Note Existing

####################
##Posts > Articles##
####################

#Article New
  $post_inline_article_title = $browser.div(:id, /post_container/).text_field(:id, /post_title/) #$inline_post_title
  $post_article_title = $browser.text_field(:name, /title/) #maxlength = 250 chars
  $post_article_compose = $browser.text_field(:id, /post_body/)
  $post_pick_group = $browser.div(:class, /post-bucket controls/).button(:text, /Choose/)
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
  $post_group_select = $browser.div(:class, /group-chooser-modal/).div(:class, /group-chooser/).div(:class, /span8 footroom half-headroom/).link(:href, /groups/)
  $post_group_select_2 = $browser.div(:class, /group-chooser-modal/).div(:class, /group-chooser/).div(:class, /span8 footroom half-headroom/).link(:href, /groups/)
  
#Article Existing
	$post_headline_title = $browser.h1(:class, /large-theme-header/)
	$post_flag_link = $browser.link(:text, /Flag as Inappropriate/)
	$post_flag_icon = $browser.a(:class, /icon_flag_new/)
	$post_flag_submit = $browser.button(:id, /flag_submit/)
	
##################
##Posts > Events##
##################

#Event New
  $post_event_title = $browser.text_field(:name, /title/)
  $post_event_calendar_start_text = $browser.text_field(:name, /start.date/)
  $post_event_time_start_field = $browser.div(:class => /control-group/, :index => 2).span(:class, /caret/)
  $post_event_select_time = $browser.select_list(:name, /start.time/) #.select("8:00 AM")
  $post_event_end_time = $browser.link(:text, /Add end/)
  $post_event_calendar_end_text = $browser.text_field(:name, /end.date/)
  $post_event_time_end_text = $browser.select_list(:name, /end.time/)
  $post_event_remove_end = $browser.link(:text, /Remove/)
  $post_event_location = $browser.text_field(:name, /location/)
  
#Event New Advanced Options
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

#Event Existing
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

  end  # end of setup method

end # end of class

__END__

#The following variables are not implemented

############
##Security##
############

####################
##Security > Admin##
####################

#Area 1

#Area 2

#Area 3

#####################
##Security > Editor##
#####################

#Area 1

#Area 2

#Area 3
