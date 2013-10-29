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

  def test_patch_home
    @page.open $patch_home

    # Splash Left Frame
    verify_page_object "Patch Logo", "//div[@id='splash_left']//a[contains(@class, 'logo') and contains(@href, '/')]/img"
    verify_page_object "Patch Mission", "//div[@id='splash_left']//h1 [contains(text(), 'Your neighborhood. Your news.')]"

    verify_page_object "Zip Code Text", "//div[@id='splash_left']//div[contains (text(), 'Enter your zip code to find your Patch:')]"
    verify_page_object "Zip Code Textbox", "//div[@id='splash_left']//form[contains(@method,'get')]//input[contains(@id,'zip') and contains(@name,'zip')]"
    verify_page_object "Find My Patch Button", "//div[@id='splash_left']//form[contains(@method,'get')]//input[contains(@class,'submit') and contains(@value,'FIND MY PATCH')]"

    verify_page_object "Patch Info P1", "//div[@id='splash_left']//p[@class='search-patch' and contains(text(), 'Patch reports on everything you need to know about your town, from local government to school news to what to do with your family this weekend.')]"
    verify_page_object "Patch Info P2", "//div[@id='splash_left']//p[@class='search-patch' and contains(text(), 'And your local Patch makes it easy for you and your neighbors to connect and post your news and events too.')]"
    verify_text_present "All of this, plus comprehensive listings of local restaurants and shops, home improvement services and businesses, events, and more"
    verify_text_present "in over 1,000 communities and counting."

    # Splash Right Frame (3 Random Cities Selected, top, middle)
    verify_page_object "Browse By State", "//div[@id='splash_right']//h2[contains(text(), 'Browse By State')]"

    verify_page_object "California", "//div[@id='splash_right']//div[@class='state-link']//a[contains(@href, '#') and contains(text(), 'California')]"
    verify_page_object "Hollywood", "//li[@id='California']//div[@class='towns']//a[@href='http://hollywood.patch.com/' and contains(text(), 'Hollywood')]"

    verify_page_object "Massachusetts", "//div[@class='state-link']//a[contains(@href, '#') and contains(text(), 'Massachusetts')]"
    verify_page_object "North End", "//li[@id='Massachusetts']//div[@class='towns']//a[@href='http://northend.patch.com/' and contains(text(), 'North End')]"

    verify_page_object "New York", "//div[@class='state-link']//a[contains(@href, '#') and contains(text(), 'New York')]"
    verify_page_object "Rye", "//li[@id='NewYork']//a[@href='http://rye.patch.com/' and contains(text(), 'Rye')]"

    # Splash Footer
    # Styling is different from TRIPLEX and based on CLASSIC
    verify_page_object "Patch Info Text", "//div[@id='footer']//h4[contains(text(), 'Patch Info')]"
    verify_page_object "About Us", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, '/about') and contains(text(), 'About Us')]"
    verify_page_object "Jobs", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, '/jobs') and contains(text(), 'Jobs')]"
    verify_page_object "Advertise", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, '/advertise') and contains(text(), 'Advertise')]"
    verify_page_object "About Our Ads", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, 'adinfo.aol.com/about-our-ads') and contains(text(), 'About Our Ads')]"
    verify_page_object "Terms of Use", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, '/terms') and contains(text(), 'Terms of Use')]"
    verify_page_object "Privacy Policy", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, '/privacy') and contains(text(), 'Privacy Policy -')]//strong[contains(text(), 'UPDATED')]"

    verify_page_object "Get in Touch Text", "//div[@id='footer']//h4[contains(text(), 'Get in Touch')]"
    verify_page_object "Go Patch!", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, 'letsgo.patch.com') and contains(text(), 'Go Patch!')]"
    verify_page_object "Help", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, 'support.patch.com') and contains(text(), 'Help')]"
    verify_page_object "Contact Us", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, '/contact-us') and contains(text(), 'Contact Us')]"
    verify_page_object "Patch Blog", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, 'blog.patch.com') and contains(text(), 'Patch Blog')]"

    verify_page_object "Patch Initiatives Text", "//div [@id='footer']//h4[contains(text(), 'Patch Initiatives')]"
    verify_page_object "Patch U", "//div[@id='footer']//div[contains(@class, 'footer_categories column')]//a[contains(@href, '/info_page/patch-u') and contains(text(), 'PatchU')]"

    verify_page_object "Copyright Text", "//div [@id='footer']//div[contains(@class,'copyright clear')] [contains(text(), 'Copyright') and contains(text(), '2013 Patch. All Rights Reserved.')]"

    verify_page_object "Patch Network", "//div[@id='footer']//div[contains(@class, 'column_network_logo float-right last')]//a[contains(@href, 'www.patch.com') and contains(@title, 'Patch Network')]"
  end

  def test_join
    @page.open $join
    sleep 5
    verify_page_object "Sign in now link - Join page", "//div[@id='the_content']//a[@href='/login' and contains(text(),'Sign in')]"
    verify_page_object "Patch Logo - Join page", "//div[@id='the_content']//a[@href='/']//img[contains(@class,'cloud-logo')]"
    verify_page_object "Sign up with Facebook button - Join Page","//div[@id='the_content']//a[contains(@class,'facebook') and contains(@href,'/users/authorize')]/span[contains(text(),'Sign up with Facebook')]"
    verify_page_object "Facebook icon - Join Page","//div[@id='the_content']//a[contains(@class,'facebook') and contains(@href,'/users/authorize')]/i[contains(@class,'icon_facebook')]"
    verify_page_object "Your full name textbox - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//input[contains(@class,'signup-input') and contains(@name,'name')]"
    verify_page_object "Email textbox - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//input[contains(@class,'signup-input') and contains(@name,'email')]"
    verify_page_object "Password textbox  - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//input[contains(@class,'signup-input') and contains(@name,'password')]"
    verify_page_object "Confirm Password textbox  - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//input[contains(@class,'signup-input') and contains(@name,'confirm_password')]"
    verify_page_object "Breaking news checkbox - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//label[contains(@class,'checkbox')]//strong[contains(text(),'Breaking News')]/../i[contains(@class,'icon')]"
    verify_page_object "Daily Newsletter checkbox - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//label[contains(@class,'checkbox')]//strong[contains(text(),'Daily Newsletter')]/../i[contains(@class,'icon')]"
    verify_page_object "Join Patch button - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//input[contains(@id,'signup') and contains(@value,'Join Patch')]"
    verify_page_object "Cancel link - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//a[contains(@class,'close-cancel') and contains(@href,'/') and contains(text(),'Cancel')]"
    verify_page_object "Terms of use - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//a[contains(@target,'_blank') and contains(@href,'/terms') and contains(text(),'Terms of Use')]"
    verify_page_object "Privacy Policy - Join page","//div[@id='the_content']//form[contains(@id,'signup_form')]//a[contains(@target,'_blank') and contains(@href,'/privacy') and contains(text(),'Privacy Policy')]"
    verify_text_present "Already have a Patch account?"
    verify_text_present "Join to get more from your Patch"
    verify_text_present "Or create your Patch account"
    verify_text_present "Your Full Name"
    verify_text_present "Email"
    verify_text_present "Password"
    verify_text_present "Confirm Password"
    verify_text_present "Emails of the most essential news about where you live, when it happens "
    verify_text_present "A daily email of highlights from across your Patch"
  end

  def test_login
    @page.open $login
    sleep 5
    verify_page_object "Join Patch Now link on top-Login page", "//div[@id='the_content']//a[@href='/join' and text()='Join Patch Now']"
    verify_page_object "Patch logo on top-Login page", "//div[@id='the_content']//a[@href='/']//img[contains(@class, 'login-cloud-logo')]"
    verify_page_object "Sign In with Facebook button- Login Page", "//div[@id='the_content']//a[@href='/users/authorize' and contains(@class, 'btn btn-facebook half-footroom')]//span[contains(text(), 'Sign in with Facebook')]"
    verify_page_object "Email textbox- Login Page", "//div[@id='the_content']//form[@id='js-signin_form']//input[contains(@class, 'login-input') and contains (@name, 'email')]"
    verify_page_object "Password textbox- Login Page", "//div[@id='the_content']//form[@id='js-signin_form']//input[contains(@class, 'login-input') and contains(@name, 'password')]"
    verify_page_object "Keep me logged in checkbox only-Login Page(incomplete)", "//div[@id='the_content']//form[@id='js-signin_form']//label[contains(@class, 'checkbox')]//input[(@id='persistent_1')]"
    verify_page_object "Keep me logged in text only- Login Page", "//div[@id='the_content']//form[@id='js-signin_form']//label[contains (text(), 'Keep me logged in')]"
    verify_page_object "Forgot Password- Login Page", "//div[@id='the_content']//form[@id='js-signin_form']//a[@href='/forgot_password' and text()= 'Forgot Password?']"
    verify_page_object "Cancel link- Login Page", "//div[@id='the_content']//form[@id='js-signin_form']//a[contains(@class, 'close-cancel') and contains (@href, '/') and contains(text(),'Cancel')]"
    verify_page_object "Sign in button- Login Page", "//div[@id='the_content']//form[@id='js-signin_form']//button[contains(@id, 'signin') and contains(text(), 'Sign in')]"
    verify_page_object "Join Patch now link on bottom- Login Page", "//div[@id='the_content']//a[@href='/join']/i[contains(@class, 'icon_join-patch-link')]"
  end

  def test_news_feature_landing
    @page.open $news_feature_landing
    sleep 7
    anonymous_header
    news_landing_common_objects "News & Features"
    anonymous_footer
  end

  def test_blog_landing
    @page.open $blogs_landing
    sleep 7
    anonymous_header
    anonymous_footer
    like_tweet_bar
    verify_page_object "All Blogs Icon - Blogs Landing page", "//div[@id='allNews']/ul[contains(@id,'allTopics')]//a[contains(@href,'blogs')]/i[contains(@class,'icon_all-news')]"
    verify_page_object "All Blogs link - Blogs Landing page","//div[@id='allNews']/ul[contains(@id,'allTopics')]//a[contains(@href,'blogs')]/span[contains(text(),'All Blogs')]"
    verify_page_object "Blogs icon - Blogs Landing page","//div[@id='news']/div[contains(@class,'footroom')]/i[contains(@class,'icon_all-news-large')]"
    verify_page_object "Blogs text - Blogs Landing page","//div[@id='news']/div[contains(@class,'footroom')]/span[contains(text(),'Blogs')]"
    verify_page_object "Blogs text at sidebar - Blogs Landing page","//div[@class='sidebar']//strong[contains(text(),'Blogs')]"
    verify_page_object "Start your own Blog at side bar top - Blogs Landing page","link=Start your own Blog"
    verify_page_object "More news link at sidebar - Blogs Landing page","//div[@class='sidebar']//span[contains(text(),'More Blogs')]"
    verify_page_object "Start your own Blog at side bar bottom - Blogs Landing page","//div[@id='allNews']/div[contains(@class,'blockify-buttons')]//a[contains(@href,'/blogs/new') and contains(text(),'Start your own Blog')]"
    verify_page_object "Email icon for Get the daily newsletter- Blogs Landing page","//div[@id='news']//i[contains(@class,'icon_email')]"
    verify_page_object "Get the daily newsletter link - Blogs Landing page","//div[@id='news']//span[contains(text(),'Get the daily newsletter')]"
    verify_page_object "Image at news feed - Blogs Landing page","//div[@id='feed']//i[contains(@class,'icon_feed-placeholder')]"
    verify_page_object "Feed headline at news feed - Blogs Landing page","//div[@id='feed']//h3[contains(@class,'feed-headline')]"
    verify_page_object "Post body at news feed - Blogs Landing page","//div[@id='feed']//div[contains(@class,'post-body')]"
    verify_page_object "Blog icon at news feed - Blogs Landing page","//div[@id='feed']//span[contains(@class,'display-on-landing')]//i[contains(@class,'icon_blog-flag')]"
    verify_page_object "News name link at news feed - Blogs Landing page","//div[@id='feed']//span[contains(@class,'display-on-landing')]//i[contains(@class,'icon_blog-flag')]/..//a[contains(@href,'blogs')]"
    verify_page_object "Date and time at news feed - Blogs Landing page","//div[@id='feed']//span[contains(@class,'muted')]/time"
    verify_page_object "Comment icon at news feed - Blogs Landing page","//div[@id='feed']//i[contains(@class,'comment-icon')]"
    verify_page_object "Recommend icon at news feed - Blogs Landing page","//div[@id='feed']//i[contains(@class,'recommend-icon')]"
    verify_page_object "Dot separator at news feed - Blogs Landing page","//div[@id='feed']//i[contains(@class,'icon_dot-separator')]"
    verify_page_object "User link at news feed - Blogs Landing page","//div[@id='feed']//div[contains(@class,'feed-content')]//a[contains(@href,'users')]"
    verify_page_object "Show more link - Blogs Landing page","link=Show More"
    verify_text_present "Become a Patch Blogger"
    verify_text_present "It's fast, easy and fun!"
    verify_text_present "Already have a Patch blog?"
    verify_page_object "Sign in to post link - Blogs Landing page","//a[contains(text(),'Sign in to post') and contains(@href,'/posts/article/new')]"
    right_rail_ads
  end

  def test_boards_landing
    @page.open $boards_landing
    sleep 7
    anonymous_header
    anonymous_footer
    like_tweet_bar
    verify_page_object "All Boards Icon - Boards Landing page", "//div[@id='allBoards']//a[contains(@href,'boards')]/i[contains(@class,'icon_all-news')]"
    verify_page_object "All Boards link - Boards Landing page","//div[@id='allBoards']//a[contains(@href,'boards')]/span[contains(text(),'All Boards')]"
    verify_page_object "Boards icon - Boards Landing page","//div[@id='board']//i[contains(@class,'icon_all-news-large')]"
    verify_text_present "Make an announcement, speak your mind, or sell something"
    verify_page_object "All Boards text - Boards Landing page","//div[@id='board']//h1[contains(text(),'All Boards')]"
    verify_page_object "Boards text at sidebar - Boards Landing page","//div[@class='sidebar']//strong[contains(text(),'Boards')]"
    verify_page_object "More boards link at sidebar - Boards Landing page","//div[@class='sidebar']//span[contains(text(),'More Boards')]"
    verify_page_object "Email icon for Get the daily newsletter- Boards Landing page","//div[@id='board']//i[contains(@class,'icon_email')]"
    verify_page_object "Get the daily newsletter link - Boards Landing page","//div[@id='board']//span[contains(text(),'Get the daily newsletter')]"
    verify_page_object "Image at Boards feed - Boards Landing page","//div[@id='feed']//a[contains(@class,'author_avatar')]//img[contains(@class,'js-lazy')]"
    verify_page_object "Feed headline at Boards feed - Boards Landing page","//div[@id='feed']//h3[contains(@class,'feed-headline')]"
    verify_page_object "Post body at Boards feed - Boards Landing page","//div[@id='feed']//div[contains(@class,'post-body')]"
    verify_page_object "News name link at Boards feed - Boards Landing page","//div[@id='feed']//span[contains(@class,'display-on-landing')]//a[contains(@href,'boards')]"
    verify_page_object "Date and time at Boards feed - Boards Landing page","//div[@id='feed']//span[contains(@class,'muted')]/time"
    verify_page_object "Comment icon at Boards feed - Boards Landing page","//div[@id='feed']//i[contains(@class,'comment-icon')]"
    verify_page_object "Recommend icon at Boards feed - Boards Landing page","//div[@id='feed']//i[contains(@class,'recommend-icon')]"
    verify_page_object "Dot separator at Boards feed - Boards Landing page","//div[@id='feed']//i[contains(@class,'icon_dot-separator')]"
    verify_page_object "User link at Boards feed - Boards Landing page","//div[@id='feed']//div[contains(@class,'feed-content')]//a[contains(@href,'users')]"
    verify_page_object "Show more link - Boards Landing page","link=Show More"
    right_rail_ads
  end

  def test_news_section_landing
    @page.open $news_section_landing
    sleep 5
    anonymous_header
    news_landing_common_objects "Sports"
    anonymous_footer
  end

  def test_feature_landing
    @page.open $feature_landing
    sleep 5
    anonymous_header
    news_landing_common_objects "Back to School"
    anonymous_footer
  end

  def test_news_show_post 
    @page.open $news_post_show
    #@page.open $news_post_show
    sleep 5
    anonymous_header
    verify_page_object "Breadcrumbs- News, News Name container check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]"
    verify_page_object "Breadcrumbs- All Blogs link check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//a[contains(@href, 'news')]"
    #Popular Stories module - if displays
    if true == @page.is_element_present("//div[@class='post-body headroom clear-fix']//div[@id='popular_stories_wrapper']//div[@class='inline-block flex1 vertical-box wrap half-footroom']")
    	verify_page_object "Popular Stories header", "//div[@class='post-body headroom clear-fix']//div[@id='popular_stories_wrapper']//div[@class='small-theme-header half-headroom half-footroom' and contains(text(), 'Popular Stories')]"
    	verify_page_object "Popular Stories 1st article", "//div[@class='post-body headroom clear-fix']//div[@id='popular_stories_wrapper']//ul[@class='no-footroom']//li[1]//a"
    	verify_page_object "Popular Stories 2nd article", "//div[@class='post-body headroom clear-fix']//div[@id='popular_stories_wrapper']//ul[@class='no-footroom']//li[2]//a"
    	verify_page_object "Popular Stories 3rd article", "//div[@class='post-body headroom clear-fix']//div[@id='popular_stories_wrapper']//ul[@class='no-footroom']//li[3]//a"
    	verify_page_object "Popular Stories 4th article", "//div[@class='post-body headroom clear-fix']//div[@id='popular_stories_wrapper']//ul[@class='no-footroom']//li[4]//a"
    end
    #Next Story module - if displays
    if true == @page.is_element_present("//div[@id='next_story_wrapper']")
    	verify_page_object "Next Story - Image holder", "//div[@id='next_story_wrapper']//div[@class='headroom horizontal-box half-footroom postItem']//a[@class='data-tag inline-block pull-left invisible-mobile feed-mobile-image']"
    	verify_page_object "Next Story - Next Story header", "//div[@id='next_story_wrapper']//div[@class='small-theme-header data-tag']//a[@class='dark-link' and contains (text(), 'Next Story')]"
    	verify_page_object "Next Story - Headline", "//div[@id='next_story_wrapper']//h3[@class='feed-headline']//a[@class='js-trackable data-tag blue']"
    	verify_page_object "Next Story - Read More link", "//div[@id='next_story_wrapper']//a[contains(text(), /Read More/)]"
    end
    #From the Web module - if displays
    if true == @page.is_element_present("//div[@class='taboola-container data-tag trc_related_container trc_spotlight_widget']")
    	verify_page_object "From the Web header", "//div[@class='taboola-container data-tag trc_related_container trc_spotlight_widget']//span[@class='trc_inner_header trc_header_left_column' and contains(text(), 'From the Web')]"
    	verify_page_object "More from Patch header", "//div[@class='taboola-container data-tag trc_related_container trc_spotlight_widget']//span[@class='trc_inner_header trc_header_left_column' and contains(text(), 'More from Patch')]"
    	verify_page_object "From the Web header", "//div[@class='taboola-container data-tag trc_related_container trc_spotlight_widget']//span[@class='trc_inner_header trc_header_left_column' and contains(text(), 'More from the Web')]"
    end
    #Shout Stream - if displays
    shout_stream
    
    post_show_pages_common_objects
    anonymous_footer
  end

  def test_blog_post_show
     @page.open $blogs_post_show
     sleep 5
     anonymous_header
     anonymous_footer
     verify_page_object "Breadcrumbs- Blog, Blog Name container check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]"
     verify_page_object "Breadcrumbs- All Blogs link check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//div[contains(@class, 'breadcrumbs footroom')]//a[contains(@href, 'blogs')]"
     verify_page_object "Disclaimer Block- below post body", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//p[contains(@class, 'muted large-headroom disclaimer')]"
     verify_page_object "Disclaimer Block- new blog link check", "//div[@id='the_content']//div[@id='js-contains_boards_center_well']//div[@id='js-prepend_author_controls']//p[contains(@class, 'muted large-headroom disclaimer')]//a[@href='/blogs/new']"
     post_show_pages_common_objects
   end
end