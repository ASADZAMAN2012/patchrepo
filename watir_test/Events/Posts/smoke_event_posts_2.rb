$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables

#Test 1: Delete an event post
	def test01_delete_event_post_TC_24307
		login $user_1_email, $master_password
		$browser.goto($patch_new_event)
		create_event "Event for Delete #{random}"
		sleep 3
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		sleep 3
		assert $browser.text.include?("The post was successfully deleted.")
		#verify details?
	end
	
#Test 2: Post an event outside home community	
	def test02_post_event_outside_home_TC_27491	
		login $user_1_email, $master_password
		$browser.goto($patch_flatiron_event_new)
	
		$post_event_title.when_present.set("Super fun run #{random}")
 		$post_event_calendar_start_text.when_present.set("#{next_year}-09-03")  
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
		sleep 4
		$post_now_event.fire_event("onclick")
		sleep 3
		assert $post_edit_post.exists?
	end
	
#Test 3: Post an Event with an Event Type
	def test03_EventWithCategories
		login $user_1_email, $master_password
		$browser.goto($patch_new_event)

 		$post_event_title.when_present.set("Super fun run #{random}")
 		$post_event_calendar_start_text.when_present.set("#{next_year}-11-15")  #make dynamic?
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
		sleep 4
		$post_event_type_family.when_present.click
		$post_now_event.fire_event("onclick")
		sleep 3
		assert $post_new_post.exists?
		#verify details?
	end

#Test 4: Post an Event with Categories
	def test04_EventWithCategories
		login $user_1_email, $master_password
		$browser.goto($patch_new_event)

 		$post_event_title.when_present.set("Super fun run #{random}")
 		$post_event_calendar_start_text.when_present.set("#{next_year}-12-05")  #make dynamic?
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
		sleep 4
		$post_event_category_sport.when_present.click
		$post_now_event.fire_event("onclick")
		sleep 3
		assert $post_new_post.exists?
		#verify details?
	end

#Test 5: Post an Event with an Event Type and Category
	def test05_EventWithCategories
		login $user_1_email, $master_password
		$browser.goto($patch_new_event)

 		$post_event_title.when_present.set("Super fun run #{random}")
 		$post_event_calendar_start_text.when_present.set("#{next_year}-07-04")  #make dynamic?
 		$post_event_time_start_field.when_present.click
 		$post_event_select_time.when_present.select("8:00 AM")
 		$post_event_location.when_present.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
		sleep 4
		$post_event_type_family.when_present.click
		$post_event_category_sport.when_present.click
		$post_now_event.fire_event("onclick")
		sleep 3
		assert $post_new_post.exists?
		#verify details?
	end
end