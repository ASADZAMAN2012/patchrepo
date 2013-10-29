$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestEventPageElement < GlobalVariables
		
##Test 1: Repost an event
	def test04_repostEvent_TC_24313_243414
		login $user_1_email, $master_password
		$browser.goto($patch_event_to_edit)
		
		sleep 3
		repost "Repost text #{random}" 
		sleep 3
		
		assert $repost_confirmation.exists?
	end
	
##Test 2: Repost to a group, delete group, add new group
	def test04_GroupRepostEvent
		repostEventPop
		sleep 3
		groupAddRemoveAdd "Repost text #{random}."
 		sleep 3
		
		assert $repost_confirmation.exists?
	end

##Test 3: Repost without note text populated
	def test02_repostEvent
		repostEventPop
		sleep 3
		repost "" #No note
		sleep 3
		
		assert $repost_confirmation.exists?
	end
	
##Test 4: Repost note with exactly 250 characters
	def test01_250RepostEvent
		repostEventPop
		sleep 3
		repostPopulate250
		sleep 3
		
		assert $repost_confirmation.exists?
	end
##Test 5: Repost note with 251 characters, validate error, remove two characters, post
	def test05_251RrepostEvent
		repostEventPop
		sleep 3
		repostPopulate251
		sleep 3
		
		assert $repost_confirmation.exists?
	end		
end