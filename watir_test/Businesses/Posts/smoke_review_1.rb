$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBusinessPageElement < GlobalVariables

#Test 1: patch.com/listings/[listing name]: Impressed review
	def test01_R1_impressed_TC_24423
		@msg = "Enjoyed my experience, I recommend times #{random}!!"
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		wait_for_ajax
		sleep 3
		$post_activate_note.when_present.fire_event("onclick")
		sleep 2
		$business_review_disappointed.click #impressed is selected as default
		sleep 2
		$business_review_impressed.click #reselecting impressed
		sleep 2
		$business_review_text.set(@msg)
		$business_review_post.fire_event("onclick")

		sleep 2
		assert $browser.text.include? "#{@msg}"
		assert $browser.text.include? "Impressed!"

	end

#Test 2: patch.com/listings/[listing name]: Disappointed review
	def test02_R1_disappointed_TC_24423
		@msg = "The office isn't open at 3 AM! I am disappointed times #{random}!!"
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		wait_for_ajax
		sleep 3
		$post_activate_note.when_present.fire_event("onclick")
		sleep 3
		$business_review_disappointed.click
		sleep 2
		$business_review_text.set(@msg)
		$business_review_post.fire_event("onclick")

		sleep 2
		assert $browser.text.include? "#{@msg}"
		assert $browser.text.include? "disappointed times"

	end

#Test 3: patch.com/listings/[listing name]: post a note
##Watir is having issues activating the post button
	def test03_R1_post_note_TC_24423
		@msg = "It's nice to see small businesses in #{$local_patch} #{random}"
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		wait_for_ajax
		sleep 4
		$post_activate_note.when_present.fire_event("onclick")
		sleep 3
		$business_review_note_button.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$business_review_text.set(@msg)

		sleep 2
		$business_review_post.fire_event("onclick")

		sleep 5
		assert $browser.text.include? "#{@msg}"
	end

#Test 4: patch.com/listings/[listing name]: post a note with a photo
	def test04_R1_post_note_photo_TC_24423
		@msg = "It's nice to see small businesses in #{$local_patch} #{random}"
		$browser.goto($patch_login)
		login $user_1_email, $master_password
		$browser.goto($patch_directory_listing)
		wait_for_ajax
		sleep 4
		$post_activate_note.when_present.fire_event("onclick")
		sleep 2
		$business_review_note_button.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$business_review_text.set(@msg)
		#$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		sleep 2
		$business_review_photo.fire_event("onclick")
		file_upload "valid.JPG"
		sleep 2
		$business_review_post.fire_event("onclick")

		sleep 10
		#should have validation for photo too
		assert $browser.text.include? "#{@msg}"
	end
end
