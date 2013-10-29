$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables
	
##Test 1: New Event: Login displays when attempting to create a new event as an anonymous user
	def test01_EventSignIn
		$browser.goto($patch_event_landing)
		$footer_post_event.when_present.click

		assert $browser.text.include?("Or sign in with your Patch account")
	end
	
#Test 2: Create New Event from homepage module. Verify is displayed on homepage module	
	#based on QAP-56
	def test02_homepage_event_module
		#define current date and time
		@c_month_full = Time.now.strftime("%B").to_i #The full month name (January)
		@c_month = Time.now.strftime("%m").to_i #01-12
		@c_day = Time.now.strftime("%d").to_i #01-31
		@c_year = Time.now.strftime("%Y").to_i  #2013
		@c_hour = Time.now.strftime("%H").to_i  #00-23
		@am_pm = ""
		
		#add one hour to current time
		@n_hour = @c_hour +1

		@day_zero = ""
		#add a zero to day if needed
		if @c_day < 10
  			@day_zero = "0"
		end
		#calculate AM or PM
		if @n_hour > 11
			@am_pm = "PM"
		else
			@am_pm = "AM"	
		end
		#change PM time to 01-11
		if @n_hour > 12
			@n_hour = @n_hour - 12
		end
		#if AM && 00 then change hour to 12
		if @n_hour == 0 && @am_pm == "AM"
			@n_hour = 12
		end
		
		login $user_1_email, $master_password
		sleep 3
		$browser.goto($patch_flatiron_event_new)
	
		$post_event_title.when_present.set("Event #{random}")
 		$post_event_calendar_start_text.when_present.set("#{@c_year}-#{@c_month}-#{@day_zero}#{@c_day}")  
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("#{@n_hour}:00 #{@am_pm}")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
 		$post_add_media_article.when_present.click
		file_upload "DungenessSpitVideo.mov"
		$post_now_event.fire_event("onclick")
		
		assert $post_new_post.exists?
		
		#go back to homepage
		$browser.goto($patch)
		#verify event exists with correct information
		sleep 3
		$browser.text.include? "Event #{random}"
		$browser.text.include? "Location #{random}"
		$browser.text.include? "#{@c_month_full} #{@c_day}, #{@c_year}, #{@n_hour}:00 #{@am_pm}"
	end
	
#Test 3: Go to Events page from Homepage, verify header of All Events, Family, Free, and This Weekend
	def test03_EventLanding_Headers #to be deprecated once page objects is complete
		login $user_1_email, $master_password
		sleep 3
		$home_see_all_events.click
		sleep 4
		
		assert $events_all_events_header.exists?
		
		$events_family.click
		sleep 1
		assert $events_family_header.exists?
		
		$events_free.click
		sleep 1
		assert $events_free_header.exists?
		
		$events_this_weekend.click
		sleep 1
		assert $events_this_weekend_header.exists?
	end
	
#Test 4:  Edit time and date of event.
	def test04_EditEvent_time_date
		@date = "#{next_year}-01-12"
		@time = "2:30 PM"
		login $user_1_email, $master_password
		$browser.goto($patch_new_event)
		create_event "Event for Edit Date/Time #{random}"
		
		$post_edit_post.click
		$post_event_calendar_start_text.when_present.set(@date)  
 		sleep 2
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select(@time)
		$post_now_event.fire_event("onclick")
		
		$browser.text.include? @date
		$browser.text.include? @time
	end
	
#Test 5: Toggle dates on Events landing page, verify the date changes respectively
	def est05_toggle_dates  #needs more debugging
		$browser.goto($patch_event_landing)
		
		current_day = Time.now.strftime("%w").to_i  #grab day of the week as a number, 0 = Sunday
        puts current_day
	    sleep 3
		$events_day_5.click #toggle date to fifth entry
		sleep 3
		@end_date = $events_date_header.text #grab date displayed on the header 
        puts @end_date
		#parse out day of the week and convert to number
		new_date = Date.parse(@end_date.split(",").first.to_s).strftime("%w").to_i 
		puts new_date
		assert current_day <= new_date #compare current day number to toggled date number

	end
end


