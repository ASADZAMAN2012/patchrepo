$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestJoinPageElement < GlobalVariables

#Test 1: Log in, search for note post
	def test01_login_search_note_TC_24325
		$browser.goto($patch)
		$search_text_field.set("automated note (search)")
		$search_button.click
		sleep 2
		$search_result_note.when_present.click
		sleep 2
		
		assert $browser.text.include?("Comment")
	end 

#Test 2: Log in, search for article post
	def test02_login_search_article_TC_24325
		$browser.goto($patch)
		$search_text_field.set("Automated article")
		$search_button.click
		$search_result_article.when_present.click
		sleep 2
		
		assert $browser.text.include?("Comment")
	end


#Test 3: Log in, search for media post
	def test03_login_search_media_TC_24325
		$browser.goto($patch)
		$search_text_field.set("Automated media")
		$search_button.click
		$search_result_media.when_present.click
		sleep 2
		
		assert $browser.text.include?("Comment")
	end

	
#Test 4: Log in, search for event post
	def test04_login_search_event_TC_24325
		$browser.goto($patch)
		$search_text_field.set("Automated event")
		$search_button.click
		$search_result_event.when_present.click
		sleep 4
		
		assert $browser.text.include?("Comment")
	end
end
