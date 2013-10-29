$LOAD_PATH << './config'  
require "selenium_shared"
require "page_object_urls"

class AnonymousPageObjects < Test::Unit::TestCase

  def setup
    @verification_errors = []
    @page = selenium_setup
    @page.start_new_browser_session
  end

  def teardown
    @page.close_current_browser_session
    assert_equal [], @verification_errors
  end

  def test_boards_post_show
    @page.open $boards_post_show
    sleep 5
    anonymous_header
    verify_page_object "Breadcrumbs- Boards", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//a[contains(text(), 'Board')]"
    verify_page_object "Breadcrumbs- All Boards link check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//a[contains(@href, 'boards')]"
    verify_page_object "Breadcrumbs- Boards section link" ,"//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//strong[2]//a"
    post_show_pages_common_objects
    shout_stream
    anonymous_footer
  end

  def test_events_landing
    @page.open $events_landing
    sleep 5
    anonymous_header
    anonymous_footer
    like_tweet_bar
    verify_page_object "Events Landing - All Events Icon", "//div[@id='allEvents']//i[contains(@class,'icon_all-news')]"
    verify_page_object "Events Landing - All Events link","//div[@id='allEvents']//span[contains(text(),'All Events')]"
    verify_page_object "Events Landing - All Events large icon","//div[@class='content']//i[contains(@class,'icon_all-events')]"
    verify_page_object "Events Landing - All Events text","//div[@class='content']//span[contains(@id,'feed-header') and contains(text(),'All Events')]"
    verify_page_object "Events Landing - Categories text at sidebar","//div[@class='sidebar']//strong[contains(text(),'Categories')]"
    verify_page_object "Events Landing - Post an Event button at sidebar","//div[@class='sidebar']//a[contains(text(),' Post an event') and contains(@href,'/posts/event/new')]"
    verify_page_object "Events Landing - Plus white icon at sidebar","//div[@class='sidebar']//a[contains(text(),' Post an event') and contains(@href,'/posts/event/new')]"
    verify_page_object "Events Landing - Email icon for Get the daily newsletter","//div[@class='content']//i[contains(@class,'icon_email')]"
    verify_page_object "Events Landing - Get the daily newsletter link","//div[@class='content']//span[contains(text(),'Get the daily newsletter')]"
    verify_text_present "Have a big event coming up?"
    verify_text_present "Tell your community all about it."
    verify_page_object "Post an Event button at the Content","//div[@class='content']//a[contains(text(),' Post an event') and contains(@href,'/posts/event/new')]"
    verify_text_present "This week"
    verify_page_object "Events Landing - Date picker icon","//div[@class='content']//i[contains(@class,'icon_date-picker')]"
    verify_page_object "Events Landing - Date picker url","//div[@class='content']//p[@class='relative-position']//input[@value='Pick a date']"
    verify_page_object "Events Landing - Date filter today","//div[@class='content']//div[@class='date-filter clear-fix event-page']//li[1]//a[@class='feed_filters light-link d_Today']"
	num = 2
	date_filter = 7  #not including Today 
	while date_filter >= num
	  verify_page_object "","//div[@class='content']//div[@class='date-filter clear-fix event-page']//li[#{num}]//a"
	  num +=1
	end
    verify_page_object "Events Landing - Feed first date header","//div[@class='content']//div[@id='feed']//div[@class='day-header small-theme-header darker-solid-line-bottom headroom']//time"
    verify_page_object "Events Landing - Feed first event - headline","//div[@class='content']//div[@id='feed']//div[@class='events_for_day']//div[@class='headroom horizontal-box half-footroom']//h3//a"
    verify_page_object "Events Landing - Feed first event - description","//div[@class='content']//div[@id='feed']//div[@class='events_for_day']//div[@class='headroom horizontal-box half-footroom']//div[@class='large-type half-footroom']//a"
    verify_page_object "Events Landing - Feed first event - time","//div[@class='content']//div[@id='feed']//div[@class='events_for_day']//div[@class='half-footroom']//time"
    verify_page_object "Events Landing - Feed first event - Add to your calendar link","//div[@class='content']//div[@id='feed']//div[@class='events_for_day']//div[@class='half-footroom']//a[contains(text(), 'Add To Your Calendar')]"
    verify_page_object "Events Landing - Feed first event - address","//div[@class='content']//div[@id='feed']//div[@class='events_for_day']//div[@class='half-footroom']//div"
    verify_page_object "Events Landing - Feed first event - See Map link","//div[@class='content']//div[@id='feed']//div[@class='events_for_day']//div[@class='half-footroom']//div//a[contains(text(), 'See Map')]"
    verify_page_object "Events Landing - Feed first event - comment icon","//div[@class='content']//div[@id='feed']//div[@class='events_for_day']//div[@class='inline-block flex1 vertical-box wrap feed-content-image']//p//a//i[@class='icon_comment-icon inline-icon']"
    verify_page_object "Events Landing - Feed first event - Recommend icon","//div[@class='content']//div[@id='feed']//div[@class='events_for_day']//div[@class='inline-block flex1 vertical-box wrap feed-content-image']//p//a//i[@class='icon_recommend-icon inline-icon']"
    verify_page_object "Events Landing - Feed first event - author","//div[@class='content']//div[@id='feed']//div[@class='events_for_day']//div[@class='inline-block flex1 vertical-box wrap feed-content-image']//a[@class='light-link data-tag']"
    verify_page_object "Events Landing - Show More link","link=Show More"
    right_rail_ads
  end
  
  def test_events_show
    @page.open $events_show
    sleep 5
    anonymous_header
    verify_page_object "Breadcrumbs- Events", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//strong//a[contains(text(), 'Events')]"
    verify_page_object "Breadcrumbs- All Events link check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//a[contains(@href, 'events')]"
    verify_page_object "Breadcrumbs- Events section" ,"//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//span[@class='event-show-categories']"
    
    verify_page_object "Events - Clock icon", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='post-event-data headroom']//i[@class='inline-icon icon_time pull-left']"
    verify_page_object "Events - Add to calendar link", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='post-event-data headroom']//span//strong//a[contains(text(), 'Add to calendar')]"
    verify_page_object "Events - Clock icon", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='post-event-data headroom']//i[@class='inline-icon icon_location pull-left']"
    verify_page_object "Events - Add to calendar link", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='post-event-data headroom']//span//strong//a[contains(text(), 'See map')]"
    
    post_show_pages_common_objects
    shout_stream
    anonymous_footer
  end
  
  def test_business_landing
    @page.open $business_landing
    sleep 5
    anonymous_header
    business_left_nav
    #Center well
    	verify_page_object "Business Page - Business Icon", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@class='headline footroom content-bottom media']//div//i[@class='inline-icon icon_all-news-large']"
        verify_page_object "Business Page - Business header", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@class='headline footroom content-bottom media']//div[contains(text(), 'New Reviews & Posts')]" 
    	verify_page_object "Business Page - Newsletter icon", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@class='pull-left js-newsletter_subscription']//a[@href='/login']//i[@class='icon_email-icon inline-icon']"
    	verify_page_object "Business Page - Newsletter text/link", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@class='pull-left js-newsletter_subscription']//a[@href='/login']//span[contains(text(), 'Get the daily newsletter')]"
    	like_tweet_bar
    #Carousel
    	verify_page_object "Business Page - Carousel Left Arrow", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@id='featured_groups_carousel']//a[@class='carousel-control left invisible-mobile data-tag']"
    	verify_page_object "Business Page - Carousel Right Arrow", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@id='featured_groups_carousel']//a[@class='carousel-control right invisible-mobile data-tag']"
    	num = 1 
    	carousel_businesses = 5
    	while carousel_businesses >= num
    	  verify_page_object "Business Page - Carousel business icon", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@id='featured_groups_carousel']/div[@class='carousel-inner']//div[#{num}]//a//img[@width='80' and @height='94']"
    	  verify_page_object "Business Page - Carousel Business name", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@id='featured_groups_carousel']/div[@class='carousel-inner']//div[#{num}]//div[@class='bd span6']//strong//a"
    	  verify_page_object "Business Page - Carousel Business category", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@id='featured_groups_carousel']/div[@class='carousel-inner']//div[#{num}]//div[@class='bd span6']//div[@class='featured-categories large-type']//a//span"
    	  verify_page_object "Business Page - Carousel Business address/phone", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@id='featured_groups_carousel']/div[@class='carousel-inner']//div[#{num}]//div[@class='bd span6']//p[@class='pull-left headroom']//a"
    	  num +=1
    	end
    	verify_page_object "Business Page - Review list", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@id='review_list']"
    verify_page_object "Business Page - Center well ad slot", "//div[@id='the_content']//div[@class='full-content']//div[@class='content']//div[@id='ad-slot_5']"
    right_rail_ads
    anonymous_footer
  end
  
  def test_business_show
    @page.open $business_show
    sleep 5
    anonymous_header
    business_left_nav
    #Group images 1, 2, 3
    total_grp_img = 3
    num = 1
    while total_grp_img >= num
      verify_page_object "Business Page - Business image #{num}", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@id='group_header']//li[@id='group_photo_cont#{num}']//img"
      num +=1
    end
    verify_page_object "Business Page - Business Icon", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='media']//img[@width='40' and @height='40']"
    verify_page_object "Business Page - Business name header", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='media']//h1[@class='headline headroom']" 
    verify_page_object "Business Page - Impress Bar", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='media']//div[@class='group-offset']//div[@class='progress progress-impressed']//div[@class='bar']"
    verify_page_object "Business Page - Impress Text", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='media']//div[@class='group-offset']//strong[contains(text(), '% Were impressed')]//span[@class='impress_percent']"
    verify_page_object "Business Page - Business Description", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='media']//div[@class='headroom more-footroom' and @itemprop='description']" 
    verify_page_object "Business Page - Map", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='media']//div[@id='map']"
    #Business address
    business_address = ['x', 'streetAddress', 'addressLocality', 'addressRegion', 'postalCode']
    num = 1
    while business_address.count > num
      verify_page_object "Business Page - Business address - #{business_address[num]}", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='media']//div[@itemtype='http://schema.org/PostalAddress']//span[@itemprop='#{business_address[num]}']"
      num +=1
    end
    verify_page_object "Business Page - Business address - phone", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='media']//div[@itemprop='telephone']" 
    verify_page_object "Business Page - Is this your business? text", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='container-box clear-fix headroom more-footroom theme-background']//span//strong[contains(text(), 'Is this your business?')]" 
    verify_page_object "Business Page - Take charge of this listing url", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='container-box clear-fix headroom more-footroom theme-background']//span//strong[contains(text(), 'Is this your business?')]//a[@href='/claim']"
    verify_page_object "Business Page - Email updates link", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='inline-block']//span[@class='subscription-button']//form[@action='/create_group_permissions']"
    verify_page_object "Business Page - Facebook like", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='pull-right invisible-mobile half-headroom']//div[@class='fb-like fb_edge_widget_with_comment fb_iframe_widget']//iframe" 
    #verify_page_object "Business Page - Twitter button", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@class='pull-right invisible-mobile half-headroom']//div[@class='pull-left']//iframe" 
    verify_page_object "Business Page - Inline Post - Textfield", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@id='inline_post_form']//span[contains(text(), 'Share a review or post about this business.')]"
    verify_page_object "Business Page - Inline Post - Impressed icon", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@id='inline_post_form']//span[contains(text(), 'Share a review or post about this business.')]//i[@class='icon_impressed-small pull-right icon-left']"
    verify_page_object "Business Page - Inline Post - Dissappointed icon", "//div[@id='the_content']//div[@class='full-content']//div[@class='content listing-show review']//div[@id='inline_post_form']//span[contains(text(), 'Share a review or post about this business.')]//i[@class='icon_disappointed-small pull-right icon-left']"
    #verify_page_object "Business Page - Post feed", "//div[@id='the_content']//div[@class='full-content']//div[@id='posts']//div[@id='feed']//div[@class='feed-row data-tag-index feed-comments']"
    num = 1
    total_ads = 4
    while total_ads >= num
      verify_page_object "Business Page - Ad Slot ##{total_ads}", "//div[@id='the_content']//div[@class='right-rail invisible-mobile']//div[@id='ad-slot_#{num}']"
      num +=1
    end
    		
    anonymous_footer
  end
  
  def test_claim_a_listing
    @page.open $claim_a_listing
    sleep 5
    anonymous_header
    verify_page_object "Submit Claim", "//div[@id='the_content']//div[contains(text(),'Submit Claim')]"
    verify_text_present "Please email support@patch.com with the following information and we will add you to the Directory or set you up to manage your group:"
    verify_text_present "Business Name"
    verify_text_present "Business Address"
    verify_text_present "Phone Number"
    verify_text_present "Role at the Organization"
    verify_text_present "Also want to advertise?"
    verify_page_object "Advertising link", "link=Check out our advertising page"
    anonymous_footer
  end
  
  def test_review_post_show
    @page.open $review_post_show
    sleep 5
    anonymous_header
    verify_page_object "Breadcrumbs- Business", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//strong//a[contains(text(), 'Business')]"
    verify_page_object "Breadcrumbs- All Business link check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//a[contains(@href, 'directory')]"
    verify_page_object "Breadcrumbs- Business Name section" ,"//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//strong//a"
    
    verify_page_object "Events - Clock icon", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='post-review-stat headroom']//strong//i"
    
    post_show_pages_common_objects
    anonymous_footer
  end
  
  def test_real_estate_landing
    @page.open $real_estate_landing
    sleep 5
    anonymous_header
    anonymous_footer
    news_landing_common_objects "Real Estate"
  end
  
  def test_real_estate_show
    @page.open $real_estate_show
    sleep 8
    anonymous_header
    verify_page_object "Breadcrumbs- News", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//strong//a[contains(text(), 'News')]"
    verify_page_object "Breadcrumbs- All News link check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//a[contains(@href, 'news')]"
    verify_page_object "Breadcrumbs- Real Estate section" ,"//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//strong//a[contains(@href, 'news/real-estate') and contains(text(), 'Real Estate')]"
    verify_page_object "Real Estate - Zillow real estate listings widget", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id='widget-container']//iframe[@width='460' and @height='1000']"
	if true == @page.is_element_present("//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='zillow-search-widget zillow-widget invisible-mobile']")
	  verify_page_object "Real Estate - Zillow Find Homes widget", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@class='zillow-search-widget zillow-widget invisible-mobile']//div[@id='zillow-large-search-box-widget-container']//h2[contains(text(), 'Find Homes')]"
      verify_page_object "Real Estate - Zillow Monthly Payment widget", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[@id='horizontalWidget']//a[contains(text(), 'Monthly Payment')]"
      verify_page_object "Real Estate - Zillow Compate Mortage Rates widget", "//div[@class='right-rail invisible-mobile']//div[@class='zillow-rates-widget rate-table-alt zillow-widget invisible-mobile']//div[@class='widget-header']//h1[contains(text(), 'Compare Mortgage Rates')]"
    end
    verify_page_object "Right Rail- Ad slot1", "//div[@id='mainPage']//div[@id='js-all-content']//div[@id='the_content']//div[contains(@class,'container')]//div[contains(@class,'row')]//div[contains(@class,'right-rail invisible-mobile')]//div[@id='ad-slot_1']"
    
    post_show_pages_common_objects
    anonymous_footer
  end
  
  def test_job_landing
    @page.open $job_landing
    sleep 5
    anonymous_header
    verify_page_object "CareerBuilder iframe", "//iframe[@id='career-builder']"
    #verifying iframe is returning something
    verify_page_object "Closest Job First CareerBuilder sort", "//a[contains(text(),'Closest jobs first')]"
    anonymous_footer
  end
end