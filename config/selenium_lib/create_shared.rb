module Selenium_Creation_Methods
##DATA CREATION##
	def create_blog(name)
  		@page.open "/blogs/new"
  		@page.type "name=name", name
  		@page.type "name=tagline", name
  		@page.click "//div[@id='icon_carousel']/div/div/div/div/img" #asterick icon
  		sleep 1
  		@page.click "id=create_group_btn", :wait_for => :page
  		sleep 3
  		assert_equal name, @page.get_text("//h1")
  		puts @page.get_location
  		return @page.get_location
	end

	def create_board(name)
		@page.open "/boards/new"
    	sleep 4
    	@page.type "name=name", name
    	@page.type "name=tagline", name
    	@page.click "//form[@id='group_form']/fieldset/div[5]/div[3]/ul/li[3]/a/i" #Opinion
    	@page.click "//form[@id='group_form']/fieldset/div[5]/div[3]/ul/li[4]/a/i" #Other
    	@page.click "//div[5]/div/img" #icon
    	sleep 1
    	@page.click "id=create_group_btn", :wait_for => :page
    	sleep 3
    	assert_equal name, @page.get_text("//h1")
    	puts @page.get_location
    	return @page.get_location
	end

	def create_news(name)
		@page.open "/news/new"
    	sleep 4
    	@page.type "name=name", name
    	@page.type "name=tagline", name
    	@page.click "//form[@id='group_form']/fieldset/div[6]/div[3]/ul/li[2]/a/i" #Opinion
    	@page.click "//form[@id='group_form']/fieldset/div[6]/div[3]/ul/li[3]/a/i" #Other
    	@page.click "//div[5]/div/img" #icon
    	sleep 1
    	@page.click "id=create_group_btn", :wait_for => :page
    	sleep 3
    	assert_equal name, @page.get_text("//h1")
    	puts @page.get_location
    	return @page.get_location
	end

	def create_event(name)  #needs debugging
		@page.open "/posts/event/new"
		sleep 3
    	@page.type "name=title", name
    	@page.type "name=start.date", "2016-06-08"
    	sleep 2
    	@page.click "//ul[2]/li[8]/a" #select time
    	sleep 1
    	@page.type "name=end.date", "2016-06-09"
    	sleep 2
    	@page.click "//ul[3]/li[16]/a" #select time
    	sleep 1
    	@page.type "name=location", "Anywhere"
    	@page.run_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Describing the event')")
    	@page.click "//form[@id='event_post']/fieldset/div[7]/div/ul/li[2]/a/i" #Free
    	@page.click "//div[2]/span[4]/div/button", :wait_for => :page
    	sleep 5
    	assert_equal name, @page.get_text("//div[@id='js-prepend_author_controls']/h1")
    	puts @page.get_location
	end

	def blog_board_news_settings(mod, type) #needs debugging
  		#starts from blog main page 
  		sleep 3
  		@page.click "link=Settings", :wait_for => :page
  		sleep 3
  		@page.click "link=Group Type", :wait_for => :page
  		sleep 4
  		if mod == 'post'
  	  		@page.click "//form[@id='edit_group_form']/fieldset/ul/li/a/i"  
  		elsif mod == 'pre'
  			@page.click "//form[@id='edit_group_form']/fieldset/ul/li[2]/a/i"
  		end
  	
  		if type == 'open'
  	  		@page.click "//form[@id='edit_group_form']/fieldset/ul[2]/li/a/i"
  		elsif type == 'closed'
      		@page.click "//form[@id='edit_group_form']/fieldset/ul[2]/li[2]/a/i"
    	end
    
    	@page.click "id=edit_group_btn", :wait_for => :page
    	sleep 2
    	assert_equal "group updated successfully", @page.get_text("css=div.flash_text")
    	@page.click "link=Back to Group", :wait_for => :page
    	sleep 3
	end

	def post_blog_note(text) #needs debugging
		num = 1
		while @page.is_visible("//div[@id='lure']/div/div") == false && num != 8
		 sleep 1
		 puts num
		 num +=1
		end
		@page.click "//div[@id='lure']/div/div"
		sleep 2
		
    	@page.run_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{text}')")
    	#@page.fire_event "id=post_title", "change"
    	@page.type_keys "id=post_title", text
		sleep 1
    	#@page.double_click "id=post_title"
    	#@page.key_press_native("\t")
    	#@page.key_press_native("09") #TAB key to move focus to Post Now button
    	#@page.key_press_native("10")
    	sleep 2
	    @page.fire_event "//div[@id='moderation_btns']/div[2]/button", "onclick"
	    @page.click "//div[@id='moderation_btns']/div[2]/button"
    	sleep 5
    	assert @page.is_element_present("link=#{text}")
    	@page.click "link=#{text}"
    	puts @page.get_location
	end

	def post_blog_board_news_article(url, text)
		@page.open "#{url}/posts/article/new"
    	sleep 1
    	@page.run_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('#{text}')")
    	sleep 1
    	@page.type "name=title", text
    	@page.click "xpath=(//input[@name='submitButton'])[2]", :wait_for => :page
    	sleep 3
    	assert_equal text, @page.get_text("//div[@id='js-prepend_author_controls']/h1")
    	puts @page.get_location
	end
end
