$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBoardPageElement < GlobalVariables

##Test 2: New Article: Two groups, populated note, title, article field
	def test02_post_open_board_ArticleAllFields
		@article_title = "Article #{random}"
		@article_body = "lava is hot."
		@c_month = Time.now.strftime("%B") #The full month name (January)
		@c_day = Time.now.strftime("%d").to_i #01-31
		@c_year = Time.now.strftime("%Y").to_i  #2013
		@day_zero = ""
		#add a zero to day if needed
		if @c_day < 10
  			@day_zero = "0"
		end

		login $editor_1_email, $master_password
		$browser.goto($patch_boards_post_open_article_new)

 		post2ndGroupPop
 		$post_article_title.set(@article_title)
 		sleep 1
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{@article_body}')")
		sleep 2
		$post_now_alt_1.fire_event("onclick")
		
		sleep 2
		assert $post_new_post.exists?
		assert $browser.text.include?(@article_title)
		assert $browser.text.include?(@article_body)
		assert $browser.text.include? "#{@c_month} #{@day_zero}#{@c_day}, #{@c_year}"
		assert $browser.link(:text, "Post Moderated Open Board").exists?
		assert $browser.text.include? "Comment"
		assert $browser.text.include? "Recommend"
	end
		
##Test 3: Photo, video  8/26: weird issue of media not being selected: works with other media posts
	def est03_post_open_board_MediaPhotoVideo
		if $environment == 'staging'
		puts "Staging watir issue with adding media for boards 8/23"
		else
		@caption = "awesome mountain #{random}"
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_post_open_article_new)
		
		$post_article_title.set("Article #{random}")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('mt townsend is my favorite mountain #{random}.')")
		sleep 2
		$post_add_media.click
		file_upload "GlacierBasinTrailMtRainier.JPG"
		sleep 5
		
 		$post_add_media.click
 		file_upload "DungenessSpit102.26.2012.mov"
 		sleep 5
 		if $environment == 'staging'
			sleep 10 #loads 
		end
		$post_media_caption.set(@caption)
		$post_now_alt_1.fire_event("onclick")

		sleep 4
		assert $post_new_post.exists?
		assert $post_picture_caption.text.include?(@caption)
		end
	end

#Test 4: PDF	
	def est04_post_open_board_MediaPDF
		if $environment == 'staging'
		puts "Staging watir issue with adding media for boards 8/23"
		else
		@caption = "awesome mountain #{random}"
		login $editor_1_email, $master_password
		$browser.goto($patch_boards_post_open_article_new)
		
		$post_article_title.set("Article #{random}")
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('mt townsend is my favorite mountain #{random}.')")
		sleep 2
		$post_add_media.click
		sleep 4

		file_upload "PDFDocument.pdf"
		sleep 2
		$post_now_alt_1.fire_event("onclick")

		sleep 4
		assert $post_new_post.exists?
		assert $post_picture_caption.text.include?(@caption)
		end
	end
#Test 5: Post board with media from homepage module
	def test05_post_board_fromHomepage
		@msg = "awesome homepage message #{random}"
		@headline = "from the homepage"
		
		login $editor_1_email, $master_password
		
		$browser.div(:id, /lure/).span(:class, /default-narrow-board-message/).click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{@msg}')")
		$home_board_title.set(@headline)
		file_upload "GlacierBasinTrailMtRainier.JPG"
		sleep 1
		$home_board_dropdown_button.click
		sleep 2
		$home_board_dropdown_sports.click
		sleep 1 
		$post_now_alt_6.fire_event("onclick")
		sleep 4
		
		assert $browser.text.include?(@msg)
		assert $browser.text.include?(@headline)
		if $environment == 'nixon'
			assert $browser.text.include? "Sports"
		end
	end
end