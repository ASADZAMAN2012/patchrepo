require 'Utility/business_common'
include Common_Business_Methods
	#postBasicReview - post positive business review
	#if_following_unfollow - unfollow business if following
	#if_not_following_follow - follow business if not followwing

require 'Utility/common_methods'
include Common_Methods
	#maximize_browser - maximize browser window
	#random - random number generator
	#bigrandom - b("Delete post #{random}")ig random number generator
	#file_upload(fname) - upload file
	#verify_text(*args) - adjustable verify text tester
	#wait_for_ajax - wait for ajax to load on page
	#current_month_fullname - defines current month by full name
	#current_month_num - defines current month by number
	#current_day - defines current day by number
	#current_year_xxxx - defines current year with 4 digits
	#current_hour_24hr - defines current hour on a 24 hour cycle
	#next_year - current year plus one

require 'Utility/login_common'
include Login_Common_Methods
	#login(email, password) - login registered user/admin/editor
	#fb_cleanup - remove patch app from test facebook account
	#fb_login - login to test facebook account
	#fb_allow - allow patch facebook app
	#logout_common - log out method for any user from any page
	#dropdownLogout - logout via avatar dropdown
	
require 'Utility/post_common'
include Post_Common_Methods
#Events	
	#create_event(title) - Create event
#Notes	
	#postNoteSetup(title) - Create an inline note 
	#postApproveNoteSetup(note) - Create note for approval 
	#deleteNotePost - Delete note post
#Articles	
	#create_article_wGroup(title) - Create text article with Group already selected
	#create_article_1jpeg_wGroup(title) - Create article with 1 jpeg image, Group already selected
	#create_article_2png_wGroup(note) - Create article with 2 PNG images 
	#create_article_woGroup(title) - Create test article, select group
#Groups	
	#repostGroupPop - Select group for article post
	#post2ndGroupPop - Add second group for article post
	#groupAddRemoveAdd(text) - Add group, remove group, add group (entire repost)
	#twoGroupSelect - Select two groups in repost (entire repost)
#Drafts	
	#create_article_draft - Save draft of article
	#post_draft - Post a previously saved draft article
	#delete_draft - Delete previously saved draft article
	#cancel_delete - Cancel deleting previously saved draft article
	#close_delete - Close delete Article draft dialog
	#edit_draft - Edit Article draft
#Comments	
	#commentNotePop(comment) - Create inline comment
	#commentPopSubmit(comment) - Post comment on show page
	#commentDelete - Delete comment
	#commentCancelDelete - Cancel deleting comment 
	#commentCancelFlag - Cancel comment flag 
	#commentCloseFlag - Close comment flag modal
#Publish Later	
	#postPublishLater - Publish article later
#Repost	
	#repost(comment) - Repost from show page
	#repostPopulate250 - Repost with 250 character string
	#repostPopulate251 - Repost with 251 character string
#Character Strings	
	#charString(num) - character string the length of the number given
#Error Message checking
    #checkIfIncorrectErrorDisplays - check if incorrect error message displays
    
require 'Utility/profile_common'
include Profile_Common
	#go_to_edit_profile_page - edit your profile
	#navigate_to_profile - navigate to user avatar and then your profile
	#click_group_icon_verify_redirect(groupIconName) - ?Group Avatar/Icon? - Need to confirm
	#click_group_name_verify_redirect(groupName) - Check Group Name with "Back" redirect (user profile page)
include Change_Password_Methods
	#go_to_change_password_page - Go to the password change page via t4he user profile page
	#change_password_original_to_temp(original, temp) - Change password from original to temp password
	#change_password_temp_to_original(temp, original) - Change password from temp to original password
include Email_Settings
	#check_save_verify_checked(cbox) - Verify user email setting is checked
include Personal_Info
	#retain_original_email_id - Reset email back to user email
include Your_Post
	#delete_draft_profile(groupName) - user deletes a previously saved draft
include Create_New_Group
	#create_a_group_invite_others_to_join(groupType, groupCategory) - Create a new group and invite others
	#inline_posting_to_any_blog(blogName) - Post inline comment to specified blog
	#count_draft_current - Calculates the number of drafts a user has saved
	#count_post_current - Calculates the number of posts a user has published
	#count_scheduled_current - Calculates the number of posts a user has scheduled
	#create_draft(groupName) - Create note draft
	#go_to_scheduled_tab_on_your_post_page - Go to scheduled tab on user's Post page
	#go_to_draft_tab_on_your_post_page - Go to draft tab on user's Post page
	#find_a_group(groupName) - Search for group via search field in header
	#follow_a_group - Request access to follow group
	#read_all_updates - Read all updates a user has
	#verify_updates - Verify updates exist