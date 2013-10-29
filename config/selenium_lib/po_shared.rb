module Selenium_PageObject_Methods
##PAGE OBJECT HEADERS AND FOOTER
  def verify_page_object(name, obj)
    begin
      assert @page.is_element_present(obj)
    rescue Test::Unit::AssertionFailedError
      @verification_errors << "Not Found: #{name}"
    end
  end

  def verify_text_present(text)
    begin
      assert @page.is_text_present(text)
    rescue Test::Unit::AssertionFailedError
      @verification_errors << "Text Not Found: #{text}"
    end
  end

  def old_header
    verify_page_object "Town name", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@class,'patch-name')]//div[@class='town-name']"
    verify_page_object "Patch logo", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@class,'patch-name')]//div[contains(@class,'patch-logo')]"
    verify_page_object "Weather icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@id,'weather')]//a[contains(@href,\"#\") and contains(@data-sub,'weather:dropdown')]/i[contains(@class,'icon')]"
    verify_page_object "Current temp", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@id,'weather')]//a[contains(@href,\"#\")]/span[contains(@class,'current_temp')]"
    verify_page_object "Nearby link", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@class,'nearby')]/a[contains(@href,\"#\")]/span[contains(@class,'nearby_label')]"
    verify_page_object "Arrow icon next to nearby link", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@class,'nearby')]/a[contains(@href,\"#\")]/i[contains(@class,'icon_arrow')]"
    verify_page_object "Twitter Icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//ul[contains(@id,'nav_messages')]//div[contains(@id,\"twitter_tooltip\") and @target='_blank']/i[contains(@class,'icon_twitter')]"
    verify_page_object "Facebook Icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//ul[contains(@id,'nav_messages')]//div[contains(@id,\"facebook_tooltip\") and @target='_blank']/i[contains(@class,'icon_facebook')]"
    
    verify_page_object "Header Menu - Home", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//a[contains(@id,'home_menu') and @target='_parent' and text()='Home']"
    
    verify_page_object "Header Menu - News & Features", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News & Features')]"
    verify_page_object "Header Menu - 'All text' text under News & Features", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News & Features')]/..//ul[@id='main_nav_news']/li[@class='list-header' and contains(text(),'All News')]"
    verify_page_object "Header Menu - 'See All News link' under News & Features", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News & Features')]/..//ul[@id='main_nav_news']//a[contains(@href,'/news')]/strong[contains(text(),'See All News')]"
    verify_page_object "Header Menu - 'Features' text under News & Features", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News & Features')]/..//ul[@id='main_nav_news']/li[@class='list-header' and contains(text(),'Features')]"
    verify_page_object "Header Menu - 'See All Features' link under News & Features", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News & Features')]/..//ul[@id='main_nav_news']//a[contains(@href,'/news')]/strong[contains(text(),'See All Features')]"
    
    verify_page_object "Header Menu - Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]"
    
    verify_page_object "Header Menu - Boards", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'boards_menu') and @target='_parent' and contains(@href,'/boards') and contains(text(),'Boards')]"
    verify_page_object "Header Menu - 'All Boards' text under Boards", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'boards_menu') and @target='_parent' and contains(@href,'/boards') and contains(text(),'Boards')]/..//ul[@id='main_nav_boards']/li[@class='list-header' and contains(text(),'All Boards')]"
    verify_page_object "Header Menu - 'See All Boards' link under Boards", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'boards_menu') and @target='_parent' and contains(@href,'/boards') and contains(text(),'Boards')]/..//ul[@id='main_nav_boards']//a[contains(@href,'/boards')]/strong[contains(text(),'See All Boards')]"
    verify_page_object "Header Menu - 'Post to Boards' link under Boards", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'boards_menu') and @target='_parent' and contains(@href,'/boards') and contains(text(),'Boards')]/..//ul[@id='main_nav_boards']//a[contains(@href,'/boards')]/strong[contains(text(),'Post to Boards ')]"
    
    verify_page_object "Header Menu - Events", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='dropdown']//a[contains(@id,'events_menu') and @target='_parent' and contains(@href,'/events') and contains(text(),'Events')]"
    verify_page_object "Header Menu - 'Upcoming Events' text under Events", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'events_menu') and @target='_parent' and contains(@href,'/events') and contains(text(),'Events')]/..//ul[@id='main_nav_events']/li[@class='list-header' and contains(text(),'Upcoming Events')]"
    verify_page_object "Header Menu - 'See All Events' link under Events", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'events_menu') and @target='_parent' and contains(@href,'/events') and contains(text(),'Events')]/..//ul[@id='main_nav_events']//a[contains(@href,'/events')]/strong[contains(text(),'See All Events')]"
    verify_page_object "Header Menu - 'Post an Event' link under Events", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'events_menu') and @target='_parent' and contains(@href,'/events') and contains(text(),'Events')]/..//ul[@id='main_nav_events']//a[contains(@href,'/posts/event/new')]/strong[contains(text(),'Post an Event')]"
    
    verify_page_object "Header Menu - Businesses", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'listings_menu') and @target='_parent' and contains(@href,'/directory') and contains(text(),'Businesses')]"
    verify_page_object "Header Menu - 'All Businesses' text under Businesses", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'listings_menu') and @target='_parent' and contains(@href,'/directory') and contains(text(),'Businesses')]/..//ul[@id='main_nav_businesses']/li[@class='list-header' and contains(text(),'All Businesses')]"
    verify_page_object "Header Menu - 'See All Businesses' link under Businesses", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'listings_menu') and @target='_parent' and contains(@href,'/directory') and contains(text(),'Businesses')]/..//ul[@id='main_nav_businesses']//a[contains(@href,'/directory')]/strong[contains(text(),'See All Businesses')]"
    verify_page_object "Header Menu - 'Claim your Business' link under Businesses", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'listings_menu') and @target='_parent' and contains(@href,'/directory') and contains(text(),'Businesses')]/..//ul[@id='main_nav_businesses']//a[contains(@href,'/claim')]/strong[contains(text(),'Claim your Business')]"
    
    verify_page_object "Header Menu - Real Estate", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='invisible-mobile']//a[contains(@id,'realestate_menu') and @target='_parent' and contains(@href,'/news/real-estate') and contains(text(),'Real Estate')]"
    
    if false == @page.is_element_present("id=pnlJobResultsCount")  #object is identified different on Jobs landing page
       verify_page_object "Header Menu - Jobs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='invisible-mobile']//a[contains(@id,'jobs_menu') and @target='_parent' and contains(@href,'/jobs/careerbuilder') and contains(text(),'Jobs')]"
    else
       verify_page_object "Header Menu - Jobs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='invisible-mobile active']//a[contains(@id,'jobs_menu') and @target='_parent' and contains(@href,'/jobs/careerbuilder') and contains(text(),'Jobs')]"
    end
    
    verify_page_object "Search text box", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//form[@id='searchForm']/div[contains(@class,'search-box')]/input[contains(@class,'search-query') and @type='text' and @name='keywords']"
    verify_page_object "Search icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//form[@id='searchForm']/div[contains(@class,'search-box')]/button[contains(@class,'search-icon') and @type='submit']/i[contains(@class,'icon_search')]"
    verify_page_object "Town cover photo", "//div[@id='mainPage']//div[contains(@id,'town-cover')]/div[contains(@class,'town-cover-photo')]"
    verify_page_object "Advertise on Patch link", "//div[@id='mainPage']//div[contains(@id,'all-content')]/div[contains(@id,'adv-on-patch')]/a[contains(text(),'Advertise on Patch')]"
    verify_page_object "Arrows icon next to Advertise on Patch link", "//div[@id='mainPage']//div[contains(@id,'all-content')]/div[contains(@id,'adv-on-patch')]/a[contains(text(),'Advertise on Patch')]/i[contains(@class,'icon_arrows')]"
    verify_page_object "Feedback link", "//div[@id='mainPage']//a[contains(@id,'feedback_callout') and contains(@href,'feedback')]"
  end
  
  def header
    verify_page_object "Town name", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@class,'patch-name')]//div[@class='town-name']"
    verify_page_object "Patch logo", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@class,'patch-name')]//div[contains(@class,'patch-logo')]"
    verify_page_object "Weather icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@id,'weather')]//a[contains(@href,\"#\") and contains(@data-sub,'weather:dropdown')]/i[contains(@class,'icon')]"
    verify_page_object "Current temp", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@id,'weather')]//a[contains(@href,\"#\")]/span[contains(@class,'current_temp')]"
    verify_page_object "Nearby link", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@class,'nearby')]/a[contains(@href,\"#\")]/span[contains(@class,'nearby_label')]"
    verify_page_object "Arrow icon next to nearby link", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//div[contains(@class,'nearby')]/a[contains(@href,\"#\")]/i[contains(@class,'icon_arrow')]"
    verify_page_object "Twitter Icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//ul[contains(@id,'nav_messages')]//div[contains(@id,\"twitter_tooltip\") and @target='_blank']/i[contains(@class,'icon_twitter')]"
    verify_page_object "Facebook Icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//ul[contains(@id,'nav_messages')]//div[contains(@id,\"facebook_tooltip\") and @target='_blank']/i[contains(@class,'icon_facebook')]"
    
    verify_page_object "Header Menu - Home", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//a[contains(@id,'home_menu') and @target='_parent' and text()='Home']"
    
    verify_page_object "Header Menu - News", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News')]"
    verify_page_object "Header Menu - 'News text' text under News", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News')]/..//ul[@id='main_nav_news']/li[@class='list-header' and contains(text(),'News')]"
    verify_page_object "Header Menu - 'See All News link' under News", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News')]/..//ul[@id='main_nav_news']//li[@class='highlight-link']//a[contains(text(), 'See All News')]"
    verify_page_object "Header Menu - 'Features' text under News", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News')]/..//ul[@id='main_nav_news']/li[@class='list-header' and contains(text(),'Features')]"
    verify_page_object "Header Menu - 'See All Features' link under News", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'news_menu') and @target='_parent' and contains(@href,'/news') and contains(text(),'News')]/..//ul[@id='main_nav_news']//li[@class='highlight-link']//a[contains(text(), 'See All Features')]"
    
    verify_page_object "Header Menu - Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]"

    verify_page_object "Header Menu - Conversations", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'boards_menu') and contains(@href,'/boards') and contains(text(),'Conversations')]"
    verify_page_object "Header Menu - 'See All Boards' link under Boards", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'boards_menu') and @target='_parent' and contains(@href,'/boards') and contains(text(),'Conversations')]/..//ul[@id='main_nav_boards']//li[@class='highlight-link']/a[contains(text(),'See All Boards')]"
    verify_page_object "Header Menu - 'Post to Boards' link under Boards", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'boards_menu') and @target='_parent' and contains(@href,'/boards') and contains(text(),'Conversations')]/..//ul[@id='main_nav_boards']//li[@class='highlight-link dotted-line-bottom']/a[contains(text(),'Post to Boards ')]"
    
    verify_page_object "Header Menu - Events", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='dropdown']//a[contains(@id,'events_menu') and @target='_parent' and contains(@href,'/events') and contains(text(),'Events')]"
    verify_page_object "Header Menu - 'Upcoming Events' text under Events", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'events_menu') and @target='_parent' and contains(@href,'/events') and contains(text(),'Events')]/..//ul[@id='main_nav_events']/li[@class='list-header' and contains(text(),'Upcoming Events')]"
    verify_page_object "Header Menu - 'See All Events' link under Events", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'events_menu') and @target='_parent' and contains(@href,'/events') and contains(text(),'Events')]/..//ul[@id='main_nav_events']//li[@class='data-tag-index highlight-link headroom']//a[contains(text(),'See All Events')]"
    verify_page_object "Header Menu - 'Post an Event' link under Events", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'events_menu') and @target='_parent' and contains(@href,'/events') and contains(text(),'Events')]/..//ul[@id='main_nav_events']//li[@class='data-tag-index highlight-link headroom']/a[contains(text(),'Post an Event')]"
    
    verify_page_object "Header Menu - Real Estate", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='invisible-mobile']//a[contains(@id,'realestate_menu') and @target='_parent' and contains(@href,'/news/real-estate') and contains(text(),'Real Estate')]"
    

    verify_page_object "Header Menu - Buy/Sell/Trade", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='invisible-mobile']//a[contains(@id,'buy-sell-trade_menu') and @target='_parent' and contains(@href,'/boards/buy-sell-trade') and contains(text(),'Buy/Sell/Trade')]"

    verify_page_object "Header Menu - Weekender", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='invisible-mobile']//a[contains(@id,'weekender_menu') and @target='_parent' and contains(@href,'/news/weekend-planner') and contains(text(),'Weekender')]"
    
    if false == @page.is_element_present("id=pnlJobResultsCount")  #object is identified different on Jobs landing page
       verify_page_object "Header Menu - Jobs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='invisible-mobile']//a[contains(@id,'jobs_menu') and @target='_parent' and contains(@href,'/jobs/careerbuilder') and contains(text(),'Jobs')]"
    else
       verify_page_object "Header Menu - Jobs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[@class='invisible-mobile active']//a[contains(@id,'jobs_menu') and @target='_parent' and contains(@href,'/jobs/careerbuilder') and contains(text(),'Jobs')]"
    end
    
    verify_page_object "Header Menu - Business Listings", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'listings_menu') and @target='_parent' and contains(@href,'/directory') and contains(text(),'Business Listings')]"
    verify_page_object "Header Menu - 'See All Businesses' link under Businesses", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'listings_menu') and @target='_parent' and contains(@href,'/directory') and contains(text(),'Business Listings')]/..//ul[@id='main_nav_businesses']//li[@class='highlight-link']//a[contains(text(),'See All Businesses')]"
    verify_page_object "Header Menu - 'Claim your Business' link under Businesses", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'listings_menu') and @target='_parent' and contains(@href,'/directory') and contains(text(),'Business Listings')]/..//ul[@id='main_nav_businesses']//li[@class='highlight-link headroom']//a[contains(text(),'Claim your Business')]"
    
    verify_page_object "Search text box", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//form[@id='searchForm']/div[contains(@class,'search-box')]/input[contains(@class,'search-query') and @type='text' and @name='keywords']"
    verify_page_object "Search icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//form[@id='searchForm']/div[contains(@class,'search-box')]/button[contains(@class,'search-icon') and @type='submit']/i[contains(@class,'icon_search')]"
    verify_page_object "Town cover photo", "//div[@id='mainPage']//div[contains(@id,'town-cover')]/div[contains(@class,'town-cover-photo')]"
    verify_page_object "Advertise on Patch link", "//div[@id='mainPage']//div[contains(@id,'all-content')]/div[contains(@id,'adv-on-patch')]/a[contains(text(),'Advertise on Patch')]"
    verify_page_object "Arrows icon next to Advertise on Patch link", "//div[@id='mainPage']//div[contains(@id,'all-content')]/div[contains(@id,'adv-on-patch')]/a[contains(text(),'Advertise on Patch')]/i[contains(@class,'icon_arrows')]"
    verify_page_object "Feedback link", "//div[@id='mainPage']//a[contains(@id,'feedback_callout') and contains(@href,'feedback')]"
  end
  
  def anonymous_header
    header
    verify_page_object "Email icon next Get the newsletter link", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//ul[contains(@class,'newsletter_subscription')]//a[contains(@href,\"/login\")]/i[contains(@class,'email-icon')]"
    verify_page_object "Get the newsletter link", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//ul[contains(@class,'newsletter_subscription')]//a[contains(@href,\"/login\")]/strong[contains(text(),'Get the newsletter')]"
    verify_page_object "Join link", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//ul[contains(@id,'nav_messages')]//a[contains(@href,\"/join\")]/strong[contains(text(),'Join')]"
    verify_page_object "Sign In link", "//div[@id='mainPage']//div[@id='navbar']//div[@id='navbar_top']//ul[contains(@id,'nav_messages')]//a[contains(@href,\"/login\")]/strong[contains(text(),'Sign In')]"
    
    verify_page_object "Header Menu - 'See All Blogs' link under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//..//ul[@id='main_nav_blogs']//li[@class='highlight-link']//a[contains(text(),'See All Blogs')]"
    verify_page_object "Header Menu - 'Become a Patch Blogger' text under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//..//ul[@id='main_nav_blogs']/li[@class='list-header' and contains(text(),'Become a Patch Blogger')]"
    verify_page_object "Header Menu - 'Start your own Blog' link under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']//li[@class='highlight-link']//a[contains(text(),'Start your own Blog')]"
    verify_page_object "Header Menu - 'Already have a Patch Blog?' text under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']/li[@class='list-header' and contains(text(),'Already have a Patch Blog?')]"
    verify_page_object "Header Menu - 'Sign in to Post' link under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']//li[@class='highlight-link']//a[contains(text(),'Sign in to Post')]"
  end

  def user_header
    header
    verify_page_object "Notification Icon", "//div[@id='mainPage']//div[@id='navbar']//span[@id='user_notifications']//span[contains(@class,'icon_notifications')]"
    verify_page_object "Notification Num", "//div[@id='mainPage']//div[@id='navbar']//span[@id='user_notifications']//span[contains(@class,'icon_notifications')]/span[contains(@class,'notification-num')]"
    verify_page_object "Header avatar", "//div[@id='mainPage']//div[@id='navbar']//div[@id='nav_personalize']//div[contains(@id,'header-avatar')]/img"
    verify_page_object "Arrow Icon next to header avatar", "//div[@id='mainPage']//div[@id='navbar']//div[@id='nav_personalize']//i[contains(@class,'icon_arrow')]"
    verify_page_object "'Your Profile link' under header avatar menu", "//div[@id='mainPage']//div[@id='navbar']//div[@id='nav_personalize']//a[contains(@href,'/users') and contains(text(),'Your Profile')]"
    verify_page_object "'Edit Profile' link under header avatar menu", "//div[@id='mainPage']//div[@id='navbar']//div[@id='nav_personalize']//a[contains(@href,'/users') and contains(text(),'Edit Profile')]"
    verify_page_object "'Your Posts' link under header avatar menu", "//div[@id='mainPage']//div[@id='navbar']//div[@id='nav_personalize']//a[contains(@href,'/users') and contains(text(),'Your Posts')]"
    verify_page_object "'Email Settings' link under header avatar menu", "//div[@id='mainPage']//div[@id='navbar']//div[@id='nav_personalize']//a[contains(@href,'/users') and contains(text(),'Email Settings')]"
    verify_page_object "'Sign Out' link under header avatar menu", "//div[@id='mainPage']//div[@id='navbar']//div[@id='nav_personalize']//a[contains(@href,'/logout') and contains(text(),'Sign Out')]"
    verify_page_object "Your Blogs Icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//div[contains(@class,'tools')]"
    verify_page_object "'Post to your Blogs' button under Your Blog Icon", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(@href,'/posts/article/new') and text()='Post to your Blog']"
    verify_page_object "Header Menu - 'Your Blogs' text under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']/li[@class='list-header' and contains(text(),'Your Blogs')]"
    verify_page_object "Header Menu - 'Post to your Blog link under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']//a[contains(@href,'/posts/article/new')]//strong[contains(text(),'Post to your Blog')]"
    verify_page_object "Header Menu - 'All Blogs' text under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']/li[@class='list-header' and contains(text(),'All Blogs')]"
    verify_page_object "Header Menu - 'See All Blogs' link under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']//a[contains(@href,'/blogs')]/strong[contains(text(),'See All Blogs')]"

  end

  def editor_header
    header
    verify_page_object "Tools icon ", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//div[contains(@class,'tools')]"
    verify_page_object "'Post an article' button under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(@href,'/posts/article/new') and text()='Post an article']"
    verify_page_object "'Admin' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(@href,'/admin') and text()='Admin']"
    verify_page_object "'Upload Cover Photo' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(@href,'/cover') and contains(text(),'Upload Cover Photo')]"
    verify_page_object "'Sections' text under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//li[contains(text(),'SECTIONS')]"
    verify_page_object "'Blogs' text under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//li[contains(text(),'BLOGS')]"
    verify_page_object "'Start a Blog' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(text(),'Start a Blog') and @href='/blogs/new']"
    verify_page_object "'Start a Section' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(text(),'Start a Section') and @href='/news/new']"
    verify_page_object "'Start a Board' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(text(),'Start a Board') and @href='/boards/new']"
    verify_page_object "Header Menu - 'Your Blogs' text under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']/li[@class='list-header' and contains(text(),'Your Blogs')]"
    verify_page_object "Header Menu - 'Post to your Blog link under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']//a[contains(@href,'/posts/article/new')]//strong[contains(text(),'Post to your Blog')]"
    verify_page_object "Header Menu - 'All Blogs' text under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']/li[@class='list-header' and contains(text(),'All Blogs')]"
    verify_page_object "Header Menu - 'See All Blogs' link under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']//a[contains(@href,'/blogs')]/strong[contains(text(),'See All Blogs')]"

  end

  def admin_header
    header
    verify_page_object "Tools icon ", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//div[contains(@class,'tools')]"
    verify_page_object "'Post an article' button under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(@href,'/posts/article/new') and text()='Post an article']"
    verify_page_object "'Admin' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(@href,'/admin') and text()='Admin']"
    verify_page_object "'Upload Cover Photo' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(@href,'/cover') and contains(text(),'Upload Cover Photo')]"
    verify_page_object "'Sections' text under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//li[contains(text(),'SECTIONS')]"
    verify_page_object "'Blogs' text under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//li[contains(text(),'BLOGS')]"
    verify_page_object "'Start a Blog' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(text(),'Start a Blog') and @href='/blogs/new']"
    verify_page_object "'Start a Section' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(text(),'Start a Section') and @href='/news/new']"
    verify_page_object "'Start a Board' link under Tools", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//div[@id='tools']//a[contains(text(),'Start a Board') and @href='/boards/new']"
    verify_page_object "Header Menu - 'Your Blogs' text under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']/li[@class='list-header' and contains(text(),'Your Blogs')]"
    verify_page_object "Header Menu - 'Post to your Blog link under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']//a[contains(@href,'/posts/article/new')]//strong[contains(text(),'Post to your Blog')]"
    verify_page_object "Header Menu - 'All Blogs' text under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']/li[@class='list-header' and contains(text(),'All Blogs')]"
    verify_page_object "Header Menu - 'See All Blogs' link under Blogs", "//div[@id='mainPage']//div[@id='navbar']//div[@id='header-menu']//ul[@class='nav']//li[contains(@class,'dropdown')]//a[contains(@id,'blogs_menu') and @target='_parent' and contains(@href,'/blogs') and contains(text(),'Blogs')]/..//ul[@id='main_nav_blogs']//a[contains(@href,'/blogs')]/strong[contains(text(),'See All Blogs')]"

  end

  def footer
    verify_page_object "Footer - Patch logo", "//div[contains(@id,'mainPage')]//div[contains(@class,'foot-top')]//a[contains(@href,'www.patch.com')]/i[contains(@class,'footer-logo')]"
    verify_page_object "Footer - 'Find your Patch' link ", "//div[contains(@id,'mainPage')]//div[contains(@class,'foot-top')]//a[contains(@href,'www.patch.com')]/strong[contains(text(),'Find your Patch')]"
    verify_page_object "Footer - 'Start a Blog' link ", "//div[contains(@id,'mainPage')]//div[contains(@class,'foot-top')]//a[contains(@href,'blogs/new')]/strong[contains(text(),'Start a Blog')]"
    verify_page_object "Footer - Patch editor image", "//div[contains(@id,'mainPage')]//div[contains(@class,'foot-top')]//div[contains(@class,'media headroom')]/a[contains(@href,'users')]/img"
    verify_page_object "Footer - Patch Editor name", "//div[contains(@id,'mainPage')]//div[contains(@class,'foot-top')]//a[contains(@data-ctrl,'footer:editor:name')]"
    verify_page_object "Footer - Patch editor email", "//div[contains(@id,'mainPage')]//div[contains(@class,'foot-top')]//a[contains(@data-ctrl,'footer:editor:email')]"
    verify_page_object "Footer - Feedback buble image", "//div[contains(@id,'mainPage')]//div[contains(@class,'foot-bottom')]//i[contains(@class,'icon_feedback-bubble')]"
    verify_text_present "What do you think of the New Patch?"
    verify_text_present "Let us know."
    verify_text_present "All rights reserved."
    verify_text_present "Connect with Patch"
    verify_page_object "Footer - Email Icon", "css=i.inline-icon.icon_email-icon"
    verify_page_object "Footer - Twitter Icon", "css=i.inline-icon.icon_twitter-small"
    verify_page_object "Footer - Follow us on Twitter link", "//a[contains(@data-ctrl,'footer:twitter') and contains(@href,'twitter')]"
    verify_page_object "Footer - Facebook Icon", "css=i.inline-icon.icon_facebook-small"
    verify_page_object "Footer - Like us on Facebook link", "//a[contains(@data-ctrl,'footer:facebook') and contains(@href,'facebook')]"
    verify_text_present "Post Something"
    verify_page_object "Footer - Post on the Boards link", "link=Post on the Boards"
    verify_page_object "Footer - Post an Event link", "link=Post an Event"
    verify_page_object "Footer - Write a Review link", "link=Write a Review"
    verify_page_object "Footer - Start a Blog link", "//li[contains(@class,'footer-post')]//a[contains(@data-ctrl,'footer:start:blog') and contains(@href,'/blogs/new')]"
    verify_text_present "Your Account"
    verify_text_present "Help"
    verify_page_object "Footer - Solve a problem link", "link=Solve a problem"
    verify_page_object "Footer - Tips & Help link", "link=Tips & Help"
    verify_page_object "Footer - Contact us", "link=Contact us"
    verify_text_present "Patch Info"
    verify_page_object "Footer - About us link", "link=About us"
    verify_page_object "Footer - Jobs link", "link=Jobs"
    verify_page_object "Footer - Terms of Use link", "//div[contains(@class,'foot-bottom')]//li[contains(@class,'mobile')]//a[contains(@data-ctrl,'footer:terms') and contains(@href,'/terms')]"
    verify_page_object "Footer - About our Ads link", "link=About our Ads"
    verify_page_object "Footer - Privacy Policy link", "//div[contains(@class,'foot-bottom')]//li[contains(@class,'mobile')]//a[contains(@data-ctrl,'footer:privacy') and contains(@href,'/privacy')]"
    verify_page_object "Footer - Patch Blog", "link=Patch Blog"
    verify_text_present "Partner with Us"
    verify_page_object "Footer - Advertise link", "link=Advertise"
    verify_page_object "Footer - Claim your listing link", "link=Claim your listing"
    verify_page_object "Footer - Add your business link", "link=Add your business"
    verify_page_object "Footer - ", "link=Add your business"
    verify_page_object "Footer - PatchU link", "link=PatchU"
    verify_page_object "Footer - Volunteer link", "link=Volunteer"

  end

  def anonymous_footer
    footer
    verify_page_object "Footer - Get the Patch Newsletter link", "//a[contains(@data-ctrl,'footer:newsletter') and contains(@href,'join')]"
    verify_page_object "Footer - Sign In link", "//div[contains(@class,'foot-bottom')]//a[contains(text(),'Sign In')]"
    verify_page_object "Footer - Join Patch link", "link=Join Patch"
    verify_page_object "Footer - Why Join link", "link=exact:Why Join?"
  end

  def user_footer
    footer
    verify_page_object "Footer - Get the Patch Newsletter link", "//a[contains(@data-ctrl,'footer:newsletter') and contains(@href,'users')]"
    verify_page_object "Footer - Your Profile link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Your Profile')]"
    verify_page_object "Footer - Edit Profile link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Edit Profile')]"
    verify_page_object "Footer - Updates link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Updates')]"
    verify_page_object "Footer - Your Posts link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Your Posts')]"
    verify_page_object "Footer - Email Settings link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Email Settings')]"

  end

  def admin_footer
    footer
    verify_page_object "Footer - Get the Patch Newsletter link", "//a[contains(@data-ctrl,'footer:newsletter') and contains(@href,'users')]"
    verify_page_object "Footer - Your Profile link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Your Profile')]"
    verify_page_object "Footer - Edit Profile link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Edit Profile')]"
    verify_page_object "Footer - Updates link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Updates')]"
    verify_page_object "Footer - Your Posts link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Your Posts')]"
    verify_page_object "Footer - Email Settings link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Email Settings')]"

  end

  def editor_footer
    footer
    verify_page_object "Footer - Get the Patch Newsletter link", "//a[contains(@data-ctrl,'footer:newsletter') and contains(@href,'users')]"
    verify_page_object "Footer - Your Profile link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Your Profile')]"
    verify_page_object "Footer - Edit Profile link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Edit Profile')]"
    verify_page_object "Footer - Updates link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Updates')]"
    verify_page_object "Footer - Your Posts link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Your Posts')]"
    verify_page_object "Footer - Email Settings link", "//div[contains(@id,'footer_links')]//a[contains(text(),'Email Settings')]"

  end

  def like_tweet_bar
    verify_page_object "Facebook icon like_tweet bar","//button[@type='submit']/i[contains(@class,'like')]"
    verify_page_object "Like link at like tweet bar","//button[@type='submit']/i[contains(@class,'like')]/../span[text()='Like']"
    verify_page_object "Like count text box at like tweet bar","//div[contains(@class,'pluginCountButton')]"
    #Twitter button and count not displayed when run through selenium - 9/12
    #verify_page_object "Tweet button at like tweet bar","//span[@id='l' and contains(text(), 'Tweet')]"
    #verify_page_object "Like count text box at like tweet bar","//a[@id='count']"
  end

  def whats_up_box
    verify_page_object "User Image - Whats up box","//div[@id='inline_post_form']//div[contains(@id,'user-img')]"
    verify_page_object "Default board message - Whats up box","//div[@id='inline_post_form']//span[contains(@class,'default-board-message')]"
    verify_page_object "Inline text box - Whats up box","//div[@id='inline_post_form']//div[contains(@class,'group-inline-form')]"
    verify_page_object "Add video icon - Whats up box","//div[@id='inline_post_form']//div[contains(@class,'group-inline-form')]//i[contains(@class,'icon_add-video')]"
    verify_page_object "Add photo icon - Whats up box","//div[@id='inline_post_form']//div[contains(@class,'group-inline-form')]//i[contains(@class,'icon_add-photo')]"
  end
  
  def post_show_pages_common_objects
     url = @page.get_location
     verify_page_object "Flag Option- Top Right of post, next to breadcrumbs", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'editor-tools')]//a[@href = '#flag_modal']"
     #Can't identify the text value 'Flag as Inappropriate' in above
     if true == @page.is_element_present("//h1[contains(@class, 'x-large-theme-header')]")
       verify_page_object "Title- Headline check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//h1[contains(@class, 'x-large-theme-header')]"
     end
     verify_page_object "Byline - Author Name & Publish Date container check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'byline')]"
     #verify_page_object "Byline - Author Name-- Can't identify 'Posted by' absolute text'
     verify_page_object "Byline - Author Name user link check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'byline')]//a[contains(@href, 'users')]"
     verify_page_object "Byline - Publish Date check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'byline')]//span[contains(@class, 'muted')]/time"
     if true == @page.is_element_present("//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id= 'asset-block']")
       verify_page_object "Asset Block- Media Display Check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id= 'asset-block']//div[@id= 'asset-image-holder']//div[contains(@class, 'the-asset')]"
       #Need to make sure that the post this script is running on contains atleast 1 asset
     end
     #verify_page_object "Asset Block- Caption Check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id= 'asset-block']//div[@id= 'asset-image-holder']//div[contains(@class, 'asset-caption')]"
     #Need to make sure that the featured asset block contains caption
     verify_page_object "Post body, content check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'post-body')]"
     verify_page_object "Comment Wrapper on bottom- Comments label", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id='comments_wrapper']//div[contains(@class, 'darker-solid-line-bottom headroom clear-fix')]//span[contains(text(), 'Comments')]"
     verify_page_object "Comment Wrapper on bottom- Leave comment link", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id='comments_wrapper']//div[contains(@class, 'darker-solid-line-bottom headroom clear-fix')]//a[@href='#new_comment' and contains(text(), '+ Leave a Comment')]"
     verify_page_object "Comment Wrapper on bottom- New comment form", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id='comments_wrapper']//div[contains(@class, 'media')]//div[@id='new_comment_form']//div[contains(@class, 'control-group')]//div[contains(@class,'controls')]//textarea[@id='comment_body' and contains(@placeholder, 'Leave a comment')]"
     verify_page_object "Comment Wrapper on bottom- Comment button", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id='comments_wrapper']//div[contains(@class, 'media')]//div[@id='new_comment_form']//form[@id='new_comment']//div[contains(@class,'form-actions')]//button[@id='comment_submit' and contains(text(), 'Post comment')]"
     verify_page_object "Boards Module- Container/Module check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='boards_center']"
     verify_page_object "Boards Module- Inline Post Form check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='boards_center']//div[@id='inline_post_form']"
     verify_page_object "Boards Module- Feeds block check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='boards_center']//div[@id='board_feed']"
     verify_page_object "Boards Module- check if atleast 1 feed at top displays", "//div[@id='board_feed']//div[@class='feed-row data-tag-index']//div[@class='horizontal-box postItem article-post']"
     verify_page_object "Advertise on Patch- tab check above right ad rail", "//div[@id='mainPage']//div[@id='js-all-content']//div[@id='adv-on-patch']//a[contains(@href,'javascript:void()') and contains(text(),'Advertise on Patch')]"
     if true == @page.is_element_present("//div[@id='ad-slot_4']")
       verify_page_object "Right Rail- Ad slot1", "//div[@id='mainPage']//div[@id='js-all-content']//div[@id='the_content']//div[contains(@class,'container')]//div[contains(@class,'row')]//div[contains(@class,'right-rail invisible-mobile')]//div[@id='ad-slot_1']"
       verify_page_object "Right Rail-Ad slot2", "//div[@id='mainPage']//div[@id='js-all-content']//div[@id='the_content']//div[contains(@class,'container')]//div[contains(@class,'row')]//div[contains(@class,'right-rail invisible-mobile')]//div[@id='ad-slot_2']"
       verify_page_object "Right Rail-Ad slot3", "//div[@id='mainPage']//div[@id='js-all-content']//div[@id='the_content']//div[contains(@class,'container')]//div[contains(@class,'row')]//div[contains(@class,'right-rail invisible-mobile')]//div[@id='ad-slot_3']"
       verify_page_object "Right Rail-Ad slot4", "//div[@id='mainPage']//div[@id='js-all-content']//div[@id='the_content']//div[contains(@class,'container')]//div[contains(@class,'row')]//div[contains(@class,'right-rail invisible-mobile')]//div[@id='ad-slot_4']"
       verify_page_object "Bottom - Ad slot5", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id='ad-slot_5']"
     end
     #verify_page_object "Feedback tab".. this is pending
     #Share Toolbar is going to change soon. Below will be revisited once new toolbar is implemented
     #verify_page_object "Social Toolbar- Sharebar Top- Comment", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='headroom post-social-toolbar footroom']//div[@class='post-social-tools mobile-more-footroom']//a[@href='#new_comment']"
     #verify_page_object "Social Toolbar- Sharebar Top- Recommend", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='headroom post-social-toolbar footroom']//div[@class='post-social-tools mobile-more-footroom']//span[@class='js-like_button']//i[@class='icon_recommend-icon inline-icon']"
     #verify_page_object "Social Toolbar- Sharebar Top- Repost", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='headroom post-social-toolbar footroom']//div[@class='post-social-tools mobile-more-footroom']//a[@href= '#repost_form']//i[contains(@class, 'icon_repost')]"
     #verify_page_object "Social Toolbar- Sharebar Top- Dot separator", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'headroom post-social-toolbar footroom')]//div[@class='post-social-tools mobile-more-footroom']//i[@class='icon_dot-separator']"
     #verify_page_object "Social Toolbar- Sharebar Top- FB check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='headroom post-social-toolbar footroom']//div[@class='pull-right mobile-no-float mobile-headroom']//div[@class='fb-like']//iframe[@title='Like this content on Facebook.']"
     #verify_page_object "Social Toolbar- Sharebar Top- Twitter check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='headroom post-social-toolbar footroom']//div[@class='pull-right mobile-no-float mobile-headroom']//div[@class='pull-left']//iframe[@title='Twitter Tweet Button']"
     #verify_page_object "Social Toolbar- Sharebar Top- Flag as Inappropriate", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='sharebar top']//span[@class='flag-link']//a[@href='#flag_modal']"
     #verify_page_object "AOL Share options- FB Share", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'post-body')]//div[contains(@class, 'aol-share')]//a[contains(@class, 'aol-share-facebook') and contains(@href, 'facebook')]"
     #verify_page_object "AOL Share options- EMail Share", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'post-body')]//div[contains(@class, 'aol-share')]//a[contains(@class, 'aol-share-email') and contains(@href, 'sendmail')]"
     #verify_page_object "AOL Share options- Print", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'post-body')]//div[contains(@class, 'aol-share')]//a[contains(@class, 'aol-share-print') and contains(@href, '#')]"
     #verify_page_object "Social Toolbar- Sharebar Bottom- Comment", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'invisible-mobile sharebar bottom')]//div[contains(@class, 'headroom post-social-toolbar footroom')]//div[contains(@class, 'post-social-tools mobile-more-footroom')]//a[@href='#new_comment']"
     #verify_page_object "Social Toolbar- Sharebar Bottom- Reccomend", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'invisible-mobile sharebar bottom')]//div[contains(@class, 'headroom post-social-toolbar footroom')]//div[contains(@class, 'post-social-tools mobile-more-footroom')]//span[contains(@class, 'like_button')]//a[contains(@href, '#')]"
     #verify_page_object "Social Toolbar- Sharebar Bottom- Repost", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'invisible-mobile sharebar bottom')]//div[contains(@class, 'headroom post-social-toolbar footroom')]//div[contains(@class, 'post-social-tools mobile-more-footroom')]//a[@href= '#repost_form']//i[contains(@class, 'icon_repost')]"
     #verify_page_object "Social Toolbar- Sharebar Bottom- Dot separator", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'invisible-mobile sharebar bottom')]//div[contains(@class, 'headroom post-social-toolbar footroom')]//div[contains(@class, 'post-social-tools mobile-more-footroom')]//i[contains(@class, 'icon_dot-separator')]"
     #verify_page_object "Social Toolbar- Sharebar Bottom- FB check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'invisible-mobile sharebar bottom')]//div[contains(@class, 'headroom post-social-toolbar footroom')]//div[contains(@class, 'social-tools small-social-tools clear-fix half-footroom')]//div[contains(@class, 'fb-like')]//iframe[contains(@title,'Like this content on Facebook.')]"
     #verify_page_object "Social Toolbar- Sharebar Bottom- Twitter check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'invisible-mobile sharebar bottom')]//div[contains(@class, 'headroom post-social-toolbar footroom')]//div[contains(@class, 'social-tools small-social-tools clear-fix half-footroom')]//div[contains(@class, 'pull-left')]//iframe[contains(@title,'Twitter Tweet Button')]"
     #verify_page_object "Social Toolbar- Sharebar Bottom- Flag as Inappropriate", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'invisible-mobile sharebar bottom')]//div[contains(@class, 'editor-tools more-footroom')]//span[contains(@class,'flag-link')]//a[@href= '#flag_modal']"
     
  end
  
  def whos_blogging
    verify_page_object "Who's Blogging header", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@class='small-theme-header tc solid-line-bottom left-margin right-margin' and contains(text(), 'Blogging')]"
    dog = 1 
    total_blogs = 10
    while dog <= total_blogs
    	if true == @page.is_element_present("//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@id='featured_bloggers_carousel']//div[@class='carousel-inner']//div[#{dog}]")
    		verify_page_object "Blogger image", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@id='featured_bloggers_carousel']//div[@class='carousel-inner']//div[#{dog}]//div[@class='pull-left avatar avatar-large']//a//img[@width='40' and @height='40']"
    		verify_page_object "Blogger Name", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@id='featured_bloggers_carousel']//div[@class='carousel-inner']//div[#{dog}]//div[@class='bd span5']//div//strong//a[@class='dark-link data-tag']"
    		verify_page_object "Blog Name", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@id='featured_bloggers_carousel']//div[@class='carousel-inner']//div[#{dog}]//div[@class='bd span5']//div[@class='featured-categories large-type mobile-right-padding']//a"
    		verify_page_object "Blog link", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@id='featured_bloggers_carousel']//div[@class='carousel-inner']//div[#{dog}]//div[@class='bd span5']//div[@class='pull-left']//a"
    	end
    	dog +=1
    end
    verify_page_object "Whos Blogging - Left arrow", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@id='featured_bloggers_carousel']//a[@class='carousel-control left invisible-mobile data-tag']//i[@class='inline-icon icon_scroll-left']"
    verify_page_object "Whos Blogging - Right arrow", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@id='featured_bloggers_carousel']//a[@class='carousel-control right invisible-mobile data-tag']//i[@class='inline-icon icon_scroll-right']"
    verify_page_object "Whos Blogging - Become a blogger today!", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@class='solid-line-top left-margin headroom right-margin clear-fix']//div//strong[contains(text(), 'Become a blogger today!')]"
    verify_page_object "Whos Blogging - Get started now", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@class='solid-line-top left-margin headroom right-margin clear-fix']//div//small[contains(text(), 'Get started now')]"
    verify_page_object "Whos Blogging - Start Blogging button", "//div[@id='the_content']//div[@class='full-content']//div[@class='carousel-container large-headroom container-box relative-position theme-background homepage']//div[@class='solid-line-top left-margin headroom right-margin clear-fix']//a[@href='/blogs/new']"
  end
  
  def shout_stream
  if true == @page.is_text_present("Shout Stream")
    	verify_page_object "Shout Stream header", "//div[@id='the_content']//div[@class='full-content']//div[@class='clear-fix more-headroom']//h2[contains(text(), 'Shout Stream')]"
    	#checks first row of shout stream only
    	verify_page_object "Shout Stream user icon", "//div[@id='the_content']//div[@class='full-content']//div[@class='clear-fix more-headroom']//ul[1]//div[1]//div[@class='shout-row span9']//div[@class='span2 content-center shout-avatar']//a"
    	verify_page_object "Shout Stream Comment", "//div[@id='the_content']//div[@class='full-content']//div[@class='clear-fix more-headroom']//ul[1]//div[1]//div[@class='shout-row span9']//div[@class='span7 shout-content']//a"
    end
  end
  
  def news_landing_common_objects(obj)
    like_tweet_bar
    verify_page_object "#{obj} Landing page - All news & Features Icon", "//div[@id='allNews']//ul[contains(@id,'allTopics')]//a[contains(@href,'/news')]//i[contains(@class,'icon_all-news')]"
    verify_page_object "#{obj} Landing page - All news & Features link", "//div[@id='allNews']//ul[contains(@id,'allTopics')]//a[contains(@href,'/news')]//span[contains(text(),'All News & Features')]"
    if obj == "News & Features"
      verify_page_object "#{obj} Landing page - News & Features Icon", "//div[@id='news']/div[contains(@class,'footroom')]/i[contains(@class,'icon_all-news-large')]"
      verify_page_object "#{obj} Landing page - News & Features text", "//div[@id='news']/div[contains(@class,'footroom')]/span[contains(text(),'News & Features')]"
    else
      verify_page_object "#{obj} Landing page - Section Icon", "//div[@class='news_family']//div[@class='media']//img[@width='40' and @height='40']"
      verify_page_object "#{obj} Landing page - Section text", "//div[@class='news_family']//div[@class='media']//h1[contains(text(),'#{obj}')]"
    end
    verify_page_object "#{obj} Landing page - News text at sidebar","//div[@class='sidebar']//strong[contains(text(),'News')]"
    verify_page_object "#{obj} Landing page - Features text at sidebar","//div[@class='sidebar']//strong[text()='Features']"
    verify_page_object "#{obj} Landing page - More news link at sidebar","//div[@class='sidebar']//a[contains(text(),'More News')]"
    if obj != "News & Features"
      verify_page_object "#{obj} Landing page - Email icon for Get the daily newsletter","//div[@class='news_family']//div[@id='group_btns']//button[@class='btn btn-white js-needs_current_user group-subscribe subscribe data-tag']//i[@class='icon_email-icon inline-icon']"
      verify_page_object "#{obj} Landing page - Get the daily newsletter link","//div[@class='news_family']//div[@id='group_btns']//button[@class='btn btn-white js-needs_current_user group-subscribe subscribe data-tag']//span[contains(text(),'Get email updates')]"
    else 
      verify_page_object "#{obj} Landing page - Email icon for Get the daily newsletter","//div[@id='news']//i[contains(@class,'icon_email')]"
      verify_page_object "#{obj} Landing page - Get the daily newsletter link","//div[@id='news']//span[contains(text(),'Get the daily newsletter')]"
    end
    if true == @page.is_element_present("//i[@class='icon_feed-placeholder inline-icon']")
      verify_page_object "#{obj} Landing page - Placeholder Image at news feed","//div[@id='feed']//div[1]//a[@class='data-tag inline-block pull-left invisible-mobile feed-mobile-image']//i"
    else 
      verify_page_object "#{obj} Landing page - Placeholder Image at news feed","//div[@id='feed']//div[1]//a[@class='webkit-box small-feed-asset data-tag inline-block pull-left feed-mobile-image']//img[@width='108' and @height='72']"
    end
    verify_page_object "#{obj} Landing page - Feed headline at news feed","//div[@id='feed']//div[1]//div[@class='large-type half-footroom post-body']//a"
    verify_page_object "#{obj} Landing page - Post body at news feed","//div[@id='feed']//div[contains(@class,'post-body')]"
    verify_page_object "#{obj} Landing page - News name link at news feed","//div[@id='feed']//span[contains(@class,'display-on-landing')]//a[contains(@href,'news')]"
    verify_page_object "#{obj} Landing page - Date and time at news feed","//div[@id='feed']//span[contains(@class,'muted')]/time"
    verify_page_object "#{obj} Landing page - Comment icon at news feed","//div[@id='feed']//i[contains(@class,'comment-icon')]"
    verify_page_object "#{obj} Landing page - Recommend icon at news feed","//div[@id='feed']//i[contains(@class,'recommend-icon')]"
    verify_page_object "#{obj} Landing page - Dot separator at news feed","//div[@id='feed']//i[contains(@class,'icon_dot-separator')]"
    verify_page_object "#{obj} Landing page - User link at news feed","//div[@id='feed']//div[contains(@class,'feed-content')]//a[contains(@href,'users')]"
    verify_page_object "#{obj} Landing page - Show more link","link=Show More"
    right_rail_ads
  end
  
  def business_left_nav
    verify_page_object "Business Page - New Reviews & Posts link", "//div[@id='the_content']//div[@class='full-content']//div[@id='reviewLanding']//a[@class='dark-link topic_filters data-tag' and @href='/directory']"
    verify_page_object "Business Page - New Reviews & Posts icon", "//div[@id='the_content']//div[@class='full-content']//div[@id='reviewLanding']//a[@class='dark-link topic_filters data-tag']//i[@class='icon_all-news inline-icon']"
    verify_page_object "Business Page - Categories header", "//div[@id='the_content']//div[@class='full-content']//div[@id='reviewLanding']//div//strong[contains(text(), 'Categories')]"
      
    #Category links and text (try for looping with array and while statement)
    num = 1
    cat_name = ["x", "Health", "Beauty & Spas", "Home Services & Repairs", "Services", "Financial & Legal Services", "Government", "Travel & Transportation", "Arts & Entertainment", "Automotive & Boating", "Sports & Fitness", "Financial Services", "Real Estate", "Hometown Partners", "Schools", "Shopping", "Community Resources", "Seasonal Businesses", "Food & Beverage Shops", "Restaurants & Bars", "Readers"]
    cat_url = ['x', 'health', 'beauty-&-spas', 'home-services-&-repairs', 'services', 'financial-&-legal-services', 'government', 'travel-&-transportation', 'arts-&-entertainment', 'automotive-&-boating', 'sports-&-fitness', 'financial-services', 'real-estate', 'hometown-partners', 'schools', 'shopping', 'community-resources', 'seasonal-businesses', 'food-&-beverage-shops', 'restaurants-&-bars', 'readers-choice']
    while cat_name.count > num
      verify_page_object "Business Page - Category #{cat_name[num]} & url", "//div[@id='the_content']//div[@class='full-content']//div[@id='reviewLanding']//ul[@class='nav unstyled sidebar-nav-subcat']//li[#{num}]//a[@href='/directory/#{cat_url[num]}' and contains(text(), '#{cat_name[num]}')]"
      num +=1
    end
    verify_page_object "Business Page - Own or manage a place in town? header", "//div[@id='the_content']//div[@class='full-content']//div[@id='reviewLanding']//div[@class='blockify-buttons headroom dotted-line-top more-footroom']//p[contains(text(), 'Own or manage a place in town?')]"
    verify_page_object "Business Page - Claim a listing button", "//div[@id='the_content']//div[@class='full-content']//div[@id='reviewLanding']//div[@class='blockify-buttons headroom dotted-line-top more-footroom']//a[@class='btn btn-success btn-large footroom data-tag' and @href='/claim']" 
  end
  
  def right_rail_ads
    num = 1
    total_ads = 4
    while total_ads >= num
      verify_page_object "Right Rails Ads- Ad Slot ##{total_ads}", "//div[@id='the_content']//div[@class='right-rail invisible-mobile']//div[@id='ad-slot_#{num}']"
      num +=1
    end
  end
end