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
  
  def test_search_results
    @page.open $search_results
    sleep 5
    anonymous_header
    verify_page_object "Categories Nav", "//div[@class='full-content']//div[@class='row']//div[@class='sidebar']//div[@class='small-theme-header footroom solid-line-bottom half-headroom no-decoration-link' and contains(text(), 'Categories')]"
    verify_page_object "All Results Link", "//div[@class='full-content']//div[@class='row']//div[@class='sidebar']//ul[@id='searchNav']//a[@class='light-link search_filters  active active-link ']//span[contains(text(), 'All Results')]"
    verify_page_object "Posts Link", "//div[@class='full-content']//div[@class='row']//div[@class='sidebar']//ul[@id='searchNav']//span[contains(text(), 'Posts')]"
    verify_page_object "Search Results", "//div[@class='full-content']//div[@class='row']//div[@id='searchP']//div[@class='large-theme-header solid-line-bottom' and contains(text(), 'Search Results')]"
    verify_page_object "Search Field", "//div[@class='full-content']//div[@class='row']//div[@id='searchP']//form[@action='/search']//input[@name='keywords']"
    verify_page_object "Search Icon", "//div[@class='full-content']//div[@class='row']//div[@id='searchP']//form[@action='/search']//button[@class='search-icon btn footroom' and @type='submit']"
    verify_page_object "First Search Result", "//div[@class='full-content']//div[@class='row']//div[@id='searchP']//div[@id='search_results']//div[@class='search-row']"
    verify_page_object "Advertizing Column - first ad", "//div[@class='right-rail invisible-mobile']//div[@id='ad-slot_1']"
    anonymous_footer
  end

  def test_editor_profile
    @page.open $editor_profile
    sleep 5
    anonymous_header
    verify_page_object "Editor Picture", "//div[@id='the_content']//div[@class='content-center']//img[@width='40' and @height='40']"
    verify_page_object "Editor Name", "//div[@id='the_content']//div[@class='content overflow-hidden']//div[@class='large-theme-header footroom' and contains(text(),'Danielle De Souza')]"
    verify_text_present "Email: Danielle.desouza@patch.com"
    #skipping description text
    verify_page_object "Posts Stat", "//div[@id='the_content']//div[@class='content overflow-hidden']//div[@class='clear-fix more-footroom solid-line-bottom ']//strong[@class='stat']"
    verify_page_object "Comments Stat", "//div[@id='the_content']//div[@class='content overflow-hidden']//div[@class='clear-fix more-footroom solid-line-bottom ']//div[@class='span4']//strong[@class='stat']"
    verify_page_object "Manager Of", "//div[@id='groups']//div[@class='small-header footroom' and contains(text(),'Manager Of')]"
    verify_page_object "First Managed Blog/Board/News", "//div[@class='group']//div[@class='media more-footroom relative-position']"
    verify_page_object "Recent Activity", "//div[@id='activities']//div[@class='small-header footroom' and contains(text(), 'Recent Activity')]"
    verify_page_object "1st Recent Activity", "//div[@id='activities']//div[@class='activity']//a[@class='dark-link' and contains(text(), 'Danielle De Souza')]"
    verify_page_object "Show More Link", "link=Show More"
    verify_page_object "Flag as Inappropriate Link", "link=Flag as Inappropriate"
    anonymous_footer
  end
  
  def test_feedback_form
    @page.open $feedback_form
    verify_page_object "Patch Feedback image", "//div[@class='inner']//div[@class='header']//div[@class='header_img']//img[@src='patch_hf_header.png']"
    verify_page_object "Tell us header", "//div[@class='inner']//div[@class='content']//div[@class='title']//h1[contains(text(), 'Have something to say? Tell us here.')]"
    verify_text_present "Need help or want to email support regarding your experience using Patch?"
    verify_page_object "Get Support button", "//div[@class='inner']//div[@class='content']//div[@class='leftcol']//a[@class='button' and contains(text(), 'Get Support')]"
    verify_text_present "Share what you think of the site or send your ideas and suggestions for new features."
    verify_page_object "Seed Feedkabck button", "//div[@class='inner']//div[@class='content']//div[@class='rtcol']//a[@class='button' and contains(text(), 'Send Feedback')]"
  end
  
  def test_contact_us
    @page.open $contact_us
    sleep 5
    anonymous_header
    verify_page_object "Contact Us", "//div[@class='full-page']//div[@class='large-theme-header solid-line-bottom' and contains(text(), 'Contact Us')]"
    verify_page_object "Help", "//div[@class='full-page']//div[@class='NS_2omp61o3wi headroom']//div[@class='small-header more-headroom footroom' and contains(text(), 'Help')]"
    verify_text_present "Got questions? Having trouble using Patch? Visit our help page "
    verify_page_object "Help link", "//div[@class='full-page']//div[@class='NS_2omp61o3wi headroom']//a[@href='http://support.patch.com']"
    verify_page_object "Sales and Advertising", "//div[@class='full-page']//div[@class='NS_2omp61o3wi headroom']//div[@class='small-header more-headroom footroom' and contains(text(), 'Sales and Advertising')]"
    verify_text_present "Want to advertise? Check out our advertising page"
    verify_page_object "Advetising page link", "//div[@class='full-page']//div[@class='NS_2omp61o3wi headroom']//a[@href='http://www.patch.com/advertise']"
    verify_page_object "Jobs", "//div[@class='full-page']//div[@class='NS_2omp61o3wi headroom']//div[@class='small-header more-headroom footroom' and contains(text(), 'Jobs')]"
    verify_text_present "Do you want to work for us? Check out our jobs page"
    verify_page_object "Jobs link", "//div[@class='full-page']//div[@class='NS_2omp61o3wi headroom']//a[@href='http://www.patch.com/jobs']"
    verify_page_object "New Tips", "//div[@class='full-page']//div[@class='NS_2omp61o3wi headroom']//div[@class='small-header more-headroom footroom' and contains(text(), 'News Tips')]"
    verify_text_present "If you have a news tip, press release or story pitch, please send it directly to the appropriate local editor. You'll find our local editors' contact info at the top left of every Patch homepage. Contact them directly through the email addresses listed there!"
    verify_page_object "Partnerships", "//div[@class='full-page']//div[@class='NS_2omp61o3wi headroom']//div[@class='small-header more-headroom footroom' and contains(text(), 'Partnerships')]"
    verify_text_present "Want to suggest a partnership with Patch? Email partnerships@patch.com"
    verify_page_object "Media Inquiries", "//div[@class='full-page']//div[@class='NS_2omp61o3wi headroom']//div[@class='small-header more-headroom footroom' and contains(text(), 'Media Inquiries')]"
     verify_text_present "If you're a journalist writing a story about Patch, email media@patch.com. Please note this is not the address for news tips or story suggestions;"
    anonymous_footer
  end
  
  def test_about_us
    @page.open $about_us
    sleep 5
    anonymous_header
    verify_page_object "About Us", "//div[@class='full-content']//div[@class='about NS_1hh8xmh6iq']//div[contains(text(),'About Us')]"
    verify_page_object "What is Patch?", "//div[@class='full-content']//div[@class='about NS_1hh8xmh6iq']//div[contains(text(),'What is Patch?')]"
    verify_text_present "Simply put, Patch is an innovative way to find out about, and participate in, what's going on near you."
    verify_text_present "We're a community-specific news, information and engagement platform driven by passionate and experienced new media professionals. Patch is revolutionizing the way neighbors connect with each other, their communities, and the national conversation."
    verify_text_present "We want to be the most trusted, comprehensive, and relevant news and information resource in your community. What can you do on Patch?"
    verify_text_present "Keep up with news and events"
    verify_text_present "Check out photos and videos from around town"
    verify_text_present "Learn more about local businesses and the people behind them"
    verify_text_present "Participate in discussions"
    verify_text_present "Share your perspectives via our Local Voices blogging platform"
    verify_text_present "Submit your own announcements, photos, and reviews"
    verify_text_present "Who's Behind Patch?"
    verify_text_present "Patch is run by professional editors, photographers, videographers, and salespeople who live in the regions they serve, and is supported by a great team in our New York City headquarters. Patch also gets advice from our Advisory Board and from many members of the community."
    verify_page_object "great team link", "link=great team"
    verify_page_object "Advisory Board link", "link=Advisory Board"
    verify_text_present "We look forward to meeting you and hearing your stories. If you see us around town, don't be afraid to say hi and tell us what you want to see on Patch!"
    verify_text_present "Where You Come In"
    verify_text_present "We hope that our sites will strengthen communities and improve the lives of their residents, but we can't do it without you. We've built Patch so that you have plenty of opportunities to comment on stories, share your opinions, post photos and announcements, and add events to the community calendar. So get to it! And if you're a business owner who wants to be listed, just let us know."
    verify_page_object "Contact Patch 'Let us know'", "link=just let us know"
    verify_text_present "Giving Back"
    verify_text_present "You can't truly serve a community unless you provide the help it needs most, which is why giving back is so important to us. We do it as part of our coverage"
    verify_text_present " through which we donate advertising space to charitable organizations and contribute our own time as volunteers. Want to know more? Email us at give5@patch.com."
    verify_text_present "The People Behind Patch"
    verify_text_present "Management Team"
    verify_page_object "Manager Image",  "//img[@alt='Steven Kalin']"
    #not covering rest, page is out of date
    anonymous_footer
  end
  
  def test_jobs
    @page.open $jobs
    sleep 5
    verify_page_object "Jobs no header", "//div[@id='header_without_navigation']"
    verify_page_object "Facebook Link HTML", "//html[@id='facebook']"
    verify_page_object "Choose Town", "//a[@href='http://www.patch.com' and contains(text(), 'Choose Town')]"
    verify_page_object "Sign In link", "//a[@href='/signin?return_to=%2Fjobs' and contains(text(), 'Sign In')]"
    verify_page_object "Welcome to Patch Careers", "//div[@id='main']//div[@class='white-list-element small_rounded_light_gray_border']//h1[contains(text(), 'Welcome to Patch Careers')]"
    verify_text_present "Patch is seeking bright, new talent in hundreds of locations across the country."
    verify_page_object "Search All Openings", "//div[@id='main']//div[@class='white-list-element small_rounded_light_gray_border']//a[@class='btn large awesome' and contains(text(), 'Search all openings')]"
    verify_page_object "Field Postitions header", "//div[@id='listings']//h4[@class='title' and contains(text(), 'FIELD POSITIONS (various locations)')]"
    verify_page_object "Patch HQ Postions header", "//div[@id='listings']//h4[@class='title' and contains(text(), 'PATCH HQ POSITIONS (New York, NY)')]"
    verify_page_object "Video title", "//div[@id='rail_right']//div[@class='video']//h4[@class='title' and contains(text(), 'Hear what Patchers have to say.')]"
    verify_page_object "Video Player", "//div[@id='rail_right']//div[@class='video']//div[@id='video']"
    verify_page_object "Facebook Share Button", "//div[@id='rail_right']//div[@class='video']//div[@class='share_tools float-right']//a[@href='http://www.facebook.com/sharer.php?u=http://www.patch.com/jobs']"
    verify_page_object "Twitter Share button", "//div[@id='rail_right']//div[@class='video']//div[@class='share_tools float-right']//a[@href='http://twitter.com/?status=Check%20out%20%22A%20Day%20in%20the%20Life%22%20of%20a%20Local%20Editor%20at:%20http://www.patch.com/jobs']"
    verify_page_object "Profile image", "//div[@id='rail_right']//div[@class='span-12 headroom last']//img[@src='http://assets1.patch-assets.com/images/icon_brassring_profile.png?1378824201']"
    verify_page_object "Create a profile link", "//div[@id='rail_right']//div[@class='span-12 headroom last']//h3[@class='marketing suburban_grass']//a[@href='https://jobs.brassring.com/1033/asp/tg/cim_home.asp?partnerid=25237&siteid=5438&codes=WPAT']"
    verify_page_object "Network with us header", "//div[@id='rail_right']//div[@class='span-12 legroom headroom last']//h3[@class='network bottom' and contains(text(), 'Network with us')]"
    verify_page_object "Facebook network link", "//div[@id='rail_right']//div[@class='span-12 legroom headroom last']//a[@href='http://www.facebook.com/Patch.comJobs']"
    verify_page_object "Twitter network link", "//div[@id='rail_right']//div[@class='span-12 legroom headroom last']//a[@href='http://twitter.com/patchjobs']"
    verify_page_object "LinkedIn network link", "//div[@id='rail_right']//div[@class='span-12 legroom headroom last']//a[@href='http://www.linkedin.com/groups?gid=3224822']"
    #footer
    verify_page_object "Patch Info header", "//div[@id='footer']//div[@class='footer_categories column']//h4[contains(text(),'Patch Info')]"
    verify_page_object "About Us link", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='/about' and contains(text(), 'About Us')]"
    verify_page_object "Jobs link", "//div[@id='footer']//div[@class='footer_categories column']//li[contains(text(), 'Jobs')]"
    verify_page_object "Advertise link", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='/advertise' and contains(text(), 'Advertise')]"
    verify_page_object "About Our Ads link", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='http://adinfo.aol.com/about-our-ads/' and contains(text(), 'About Our Ads')]"
    verify_page_object "Terms of Use link", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='/terms' and contains(text(), 'Terms of Use')]"
    verify_page_object "Privacy Policy link", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='/privacy']"
    verify_page_object "Get in Touch header", "//div[@id='footer']//div[@class='footer_categories column']//h4[contains(text(),'Get in Touch')]"
    verify_page_object "Go Patch! link", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='http://letsgo.patch.com/' and contains(text(), 'Go Patch!')]"
    verify_page_object "Help link", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='http://support.patch.com' and contains(text(), 'Help')]"
    verify_page_object "Contact Us link", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='/contact-us' and contains(text(), 'Contact Us')]"
    verify_page_object "Patch Blog link", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='http://blog.patch.com' and contains(text(), 'Patch Blog')]"
    verify_page_object "Patch Initiatives header", "//div[@id='footer']//div[@class='footer_categories column']//h4[contains(text(),'Patch Initiatives')]"
    verify_page_object "PatchU", "//div[@id='footer']//div[@class='footer_categories column']//a[@href='http://www.patch.com/info_page/patch-u' and contains(text(), 'PatchU')]"
    verify_page_object "Patch Network image", "//div[@id='footer']//div[@class='column_network_logo float-right last']//a[@title='Patch Network']//img[@src='http://assets3.patch-assets.com/images/patch_network_logo.png?1378824201']"
    verify_text_present "Patch. All Rights Reserved."
  end
  
  def test_terms
    @page.open $terms
    sleep 5
    anonymous_header
    verify_page_object "Terms of Use", "//div[@id='the_content']//div[@class='full-content']//div[contains(text(),'Terms of Use')]"
	verify_page_object "Our Terms of Use", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Our Terms of Use')]"
    verify_page_object "Use of the Service", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Use of the Service')]"
    verify_page_object "Registration", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Registration')]"
    #verify_text_present "We want everyone to enjoy Patch, so you may use the Service without registration (i.e., signing up with a name, email address and password). However, in order to access some aspects of the Service, you will need to register for an account. Your account is for your sole, personal use. You may not allow others to use your account and you may not assign or otherwise transfer your account to any other person or entity. (If another person or entity wants an account, they can easily sign up themselves.) We ask that the e-mail address you provide when you register be a valid e-mail address for you. We encourage, but do not require, that the user name you provide be your real name. You are responsible for the security of your password and will be solely liable for any use or unauthorized use under such password. Therefore, if you share a computer with others, don't allow your Internet browser to automatically save your password. Also, don't write your password on a Post-It note and leave it on your desk for all to see."
    verify_page_object "Your License to Patch", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Your License to Patch')]"
    verify_page_object "Acceptable Use", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Acceptable Use')]"
    #verify_text_present "While we encourage people to be honest and post what's on their mind, communities thrive when people care about each other, and as such, Patch expects all of its users to be respectful of others. This means that whether you are being complimentary or critical, whether you are agreeing or disagreeing with the subject of an article or another user's comment, you should act in a civil manner and refrain from personal attacks - after all, these are your neighbors."
    verify_text_present "Patch is under no obligation to enforce the Patch Terms of Use on your behalf or based on a claim by you that another user has violated it. While we encourage you to let us know if you believe that another user has violated these terms of use or has engaged in other unacceptable behavior, by reporting it to support@patch.com,"
    verify_text_present "By using the Service, you agree that you will not hold Patch responsible or liable for any Content from other users that you access on the Service."
    verify_page_object "Classifieds", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Classifieds')]"
    verify_page_object "Termination of Access", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Termination of Access')]"
    verify_page_object "Privacy", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Privacy')]"
    verify_page_object "Links", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Links')]"
    verify_page_object "Our Proprietary Rights", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Our Proprietary Rights')]"
    verify_page_object "No Warranties", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'No Warranties')]"
    verify_page_object "Indemnity", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Indemnity')]"
    verify_page_object "Governing Law", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Governing Law')]"
    verify_page_object "Digital Millennium Copyright Act ", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Digital Millennium Copyright Act ')]"
    verify_page_object "Severability", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Severability')]"
    verify_page_object "Waiver; Remedies", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Waiver; Remedies')]"
    verify_page_object "Contact Information", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Contact Information')]"
    anonymous_footer
  end
  
  def test_privacy
    @page.open $privacy
    sleep 5
    anonymous_header
    verify_page_object "Terms of Use", "//div[@id='the_content']//div[@class='full-content']//div[contains(text(),'Terms of Use')]"
	verify_page_object "Privacy Policy", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Privacy Policy')]"
	verify_text_present ", a wholly-owned subsidiary of AOL Inc., has created this consumer privacy policy statement in order to demonstrate our firm commitment to your privacy. The following discloses our practices regarding information collection and use solely for the web site located at www.patch.com"
	verify_text_present "By using or accessing the Service, you signify your agreement to be bound by our Privacy Policy. IF YOU DO NOT AGREE TO THIS PRIVACY POLICY YOU MAY NOT ACCESS OR OTHERWISE USE THE SERVICE."
	verify_page_object "Personal Information and Aggregate Information", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Personal Information and Aggregate Information')]"
	verify_text_present "In order to register for the Service, or in connection with other uses of the Service, you may be asked to voluntarily provide us with certain personally identifiable information, such as your name and email address "
	verify_text_present "In addition, we may also collect non-personally identifiable information, such as demographic information, IP address, web pages viewed, referral/exiting pages, browser type, purchasing history, interaction with advertising and other data, and may aggregate any information collected in a manner which does not identify any individual"
	verify_page_object "Personal Information You May Voluntarily Provide to Advertisers", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Personal Information You May Voluntarily Provide to Advertisers')]"
	verify_text_present "Email addresses submitted through ads on the Patch site will be shared with the advertiser so that they may contact you directly."
	verify_text_present "By providing your email address in this advertisement, you may receive promotional emails from the advertiser."
	verify_page_object "Information Usage", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Information Usage')]"
	verify_text_present "We may use Personal Information to send you newsletters, to process transactions that you have requested, to provide services that you have requested and for other reasons that are disclosed to you prior to such usage. We may permit our contractors to have access to your Personal Information, but only if they are using your Personal Information as described in this policy."
	verify_text_present "We may use Aggregate Information and/or Personal Information to deliver advertising to you that is customized to your individual behavior or demographic. We may use and share Aggregate Information in many other ways, provided that it will not be disclosed in connection with your Personal Information unless otherwise disclosed in this policy."
	verify_text_present "We will never sell your Personal Information to any third party not affiliated with Patch without your consent except in connection with the sale or merger of Patch or the division responsible for such services."
	verify_text_present "Please note that we reserve the right to access and/or disclose Personal Information and non-personal information we gather as required by law or to the extent necessary for us to investigate suspected fraud, harassment or other violations of any law, rule or regulation, or the Service rules or policies."
	verify_text_present "Aggregate Information may be shared with any number of parties, provided that such information shall not specifically identify any individuals."
	verify_page_object "Cookies, Web Beacons, and Similar Technologies", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Cookies, Web Beacons, and Similar Technologies')]"
	verify_text_present "are pieces of information that may be placed on your computer by a web site for the purpose of facilitating and enhancing your communication and interaction with that web site. Many web sites use cookies for these purposes."
	verify_text_present "We may use cookies (and similar items such as clear gifs, web beacons, tags, etc...) to customize your visit to the Service and for other purposes to make your visit more convenient or to enable us to enhance our service. Cookies and similar items are not used by us to automatically retrieve personal information from your computer without your knowledge. Many websites, including Patch, may also use Flash cookies that operate similarly to browser cookies."
	verify_text_present "When you use our Service, our business partners and advertisers (including AOL Advertising) may set cookies and similar items on your computer to help deliver more relevant content and advertisements throughout their networks. These companies may use non-personally identifiable information during your visits to this and other Web sites in order to provide advertisements about goods and services likely to be of greater interest to you. If you would like more information about this practice and to know your choices about not having this information used by these companies, you can visit http://www.networkadvertising.org/managing/opt_out.asp."
	verify_text_present "You can control browser cookies through your browser's settings. You can control Flash cookies via the Macromedia Flash application on your computer, or by going to the Adobe Flash Player website, which allows you to view, modify, and delete Flash cookies. Please note that if you reject all browser or Flash cookies you may not be able to take advantage of many Patch Services."
	verify_page_object "Security", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Security')]"
	verify_text_present "The security of your Personal Information is very important to us. We attempt to provide for the secure transmission of your information from your computer to our servers by utilizing encryption software. However, due to the inherent open nature of the Internet, we cannot guarantee that communications between you and Patch or information stored on the Service or our servers, will be free from unauthorized access by third parties such as hackers and your use of the Service demonstrates your assumption of this risk."
	verify_text_present "We have put in place reasonable physical, electronic, and managerial procedures to safeguard the information we collect. Only those employees who need access to your information in order to perform their duties are authorized to have access to your Personal Information. For more information on protecting your privacy, please visit www.ftc.gov/privacy."
	verify_text_present "You should be aware that personally identifiable information which you voluntarily include and transmit online in a posting, comment, public profile or other public forum may be viewed and used by others. We are unable to control such uses of your personally identifiable information, and by using such services you assume the risk that the personally identifiable information provided by you may be viewed and used by third parties."
	verify_page_object "Protection for Children", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Protection for Children')]"
	#verify_text_present "We have no intention of collecting personal information from children under the age of 13. When we become aware that personal information from a child under 13 has been collected without such child's parent or guardian's consent, we will use all reasonable efforts to delete such information from our database."
	verify_page_object "Other Web Sites", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Other Web Sites')]"
	verify_text_present "As a convenience to you, we may provide links to third-party web sites from within the Service. These may include local government web sites, local merchant web sites, message boards, news web sites and other web sites not controlled by Patch. Patch is not responsible for the privacy practices or content of these third-party sites. When you link away from our Service, you do so at your own risk and should read the policies of such other web sites."
	verify_page_object "Communications with Patch", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Communications with Patch')]"
	verify_text_present "By providing your email address to Patch, you expressly consent to receive emails from us. We may use email to communicate with you, to send information that you have requested or to send information about other products or services developed or provided by us, provided that, we will not give your email address to another party to promote their products or services directly to you."
	verify_text_present "Any communication or material you transmit to us by email or otherwise, including any data, questions, comments, suggestions, or the like is, and will be treated as, non-confidential and nonproprietary. Except to the extent expressly covered by this policy, anything you transmit or post may be used by us for any purpose, including but not limited to, reproduction, disclosure, transmission, publication, broadcast and posting."
	verify_text_present "Furthermore, you expressly agree that we are free to use any ideas, concepts, know-how, or techniques contained in any communication you send to us without compensation and for any purpose whatsoever, including but not limited to, developing, manufacturing and marketing products and services using such information."
	verify_page_object "Changes to Policy; Opt-Out Process", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Changes to Policy; Opt-Out Process')]"
	verify_text_present "We reserve the right, at our discretion, to change, modify, add, or remove portions from this policy at any time. However, if at any time in the future we plan to use Personal Information in a way that differs from this policy, we will post such changes here and provide you the opportunity to opt-out of such differing uses. Your continued use of the Service following the posting of any changes to this policy means you accept such changes."
	verify_text_present "To unsubscribe or opt out of any service, you should edit your user profile. You may also send unsubscribe or opt-out requests to us at unsubscribe@patch.com and we will process your request within a reasonable time after receipt. We are not responsible for removing your personal information from the lists of any third party who has previously been provided your information in accordance with this policy, such as a business partner."
	verify_page_object "Terms of Use", "//div[@id='the_content']//div[@class='full-content']//div[@id='main']//div[contains(text(),'Terms of Use')]"
	verify_text_present "Use of the Service, and this Privacy Policy, is subject to our Terms of Use."
	verify_text_present "Contact:For questions or concerns relating to privacy, we can be contacted at: privacy@patch.com."
	verify_text_present "United States of America: Our Service is maintained in the United States of America. By using the Service, you freely and specifically give us your consent to export your Personal Information to the USA and to store and use it in the USA as specified in this policy."
	verify_text_present "Effective Date: July 10, 2012"
    anonymous_footer
  end
  
  def test_patch_u
    @page.open $patch_u
    sleep 5
    anonymous_header
    verify_page_object "PatchU and Campus Recruiting header", "//div[@class='full-content']//div[@class='large-theme-header solid-line-bottom' and contains(text(), 'PatchU and Campus Recruiting')]"
    verify_page_object "PatchU image", "//div[@class='full-content']//div[@id='main']//img[@src='http://o4.aolcdn.com/dims-shared/dims3/PATCH/resize/273x203/http://hss-prod.hss.aol.com/hss/storage/patch/a73820fad43ce35c8a9ca72082aa221b']"
    #verify_text_present "What's PatchU?"
    verify_text_present "PatchU launched in September 2010 with the mission of developing strong relationships with students, faculty, and career services offices on college and university campuses around the country. Through these relationships we hope to give students the opportunity to gain valuable hands-on experience working with a Patch site as interns, student freelancers or bloggers."
    verify_page_object "Summer Editorial Internship Program header", "//div[@class='full-content']//div[@id='main']//div[@class='large-theme-header more-headroom' and contains(text(), 'Summer Editorial Internship Program')]"
    verify_page_object "What does Patch offer you? header", "//div[@class='full-content']//div[@id='main']//div[@class='small-header headroom footroom' and contains(text(), 'What does Patch offer you?')]"
    #verify_text_present "This is a full-time internship where you'll gain valuable experience working as a journalist. You will also have the opportunity to take advantage of our Editorial Intern Training Program, which offers weekly modules on various online and community journalism-related topics."
    verify_text_present "As an intern, you could:"
    verify_text_present "Pitch and write stories"
    verify_text_present "Attend weekly editorial meetings"
    verify_text_present "Shoot and edit photos and video"
    verify_text_present "Cover town and school board meetings, court hearings, and other community news and events"
    verify_text_present "Attend community outreach events"
    verify_text_present "Execute social media strategies"
    verify_page_object "Whom are we looking for? header", "//div[@class='full-content']//div[@id='main']//div[@class='small-header more-headroom footroom' and contains(text(), 'Whom are we looking for?')]"
    #verify_text_present "Smart, enthusiastic students with a passion for local journalism. You should be a self-starter, able to learn quickly and work independently. That means free spirits and straight shooters. Creatives and critics. Nerds with nerve. People who love the Internet, but can see its crack...and its future, too."
    #verify_text_present "Candidates must be a junior, senior or graduate student or a recent graduate (May 2011 or later) and must have demonstrated reporting experience through campus media, an internship or a freelance position. Candidates must have their own mode of transportation and be willing to work some nights and weekends. "
    verify_text_present "What's next?"
    #verify_text_present "If you're interested in joining one of the fastest-growing, most collaborative and innovative companies on the web, then we want to hear from you! Polish your resume, gather several writing samples, draft a cover letter and email us at PatchU@patch.com."
    verify_text_present "For questions on our editorial internship program, you can email us at internships@patch.com."
    verify_page_object "Student Blogging Opportunities", "//div[@class='full-content']//div[@id='main']//div[@class='large-theme-header more-headroom footroom' and contains(text(), 'Student Blogging Opportunities')]"
    verify_text_present "Advanced students are encouraged to contribute to Patch through our"
    #verify_text_present "platform as a blogger or by cross-posting existing work on our local Patch sites. Students can contact our Local Editors directly for more information about these opportunities; editors' email addresses can be found in the top left corner of each site by clicking on their names. For a full listing of our sites nationwide and more information please visit www.patch.com. "
    verify_text_present "For any questions, please contact us at PatchU@patch.com."
    verify_page_object "PatchU Internship Program in Our SoHo Headquarters", "//div[@class='full-content']//div[@id='main']//div[@class='large-theme-header more-headroom footroom' and contains(text(), 'PatchU Internship Program in Our SoHo Headquarters')]"
    verify_text_present "We have summer internship opportunities in several business areas including:"
    verify_text_present "Marketing"
    verify_text_present "Communications"
    verify_text_present "Sales"
    verify_text_present "Human Resources"
    verify_text_present "Engineering"
    verify_text_present "Business/Editorial Operations"
    verify_page_object "What does Patch offer you?", "//div[@class='full-content']//div[@id='main']//div[@class='small-header more-headroom footroom' and contains(text(), 'What does Patch offer you?')]"
    verify_text_present "Work from our open and vibrant SoHo office"
    verify_text_present "Gain exposure to various business groups"
    verify_text_present "Attend weekly lunch-and-learns with department heads"
    verify_text_present "Collaborate with employees across several AOL brands"
    verify_text_present "What's next?"
    #verify_text_present "If you're interested in joining one of the fastest-growing, most collaborative and innovative companies on the web, then we want to hear from you! Polish your resume, gather several writing samples, draft a cover letter and email us at PatchU@patch.com."
    verify_text_present "For questions, you can email us at PatchU@patch.com"
    verify_page_object "Career Services, Instructors & Advisers", "//div[@class='full-content']//div[@id='main']//div[@class='large-theme-header more-headroom footroom' and contains(text(), 'Career Services, Instructors & Advisers')]"
    verify_text_present "To learn more about PatchU including our campus outreach, posting job opportunities, and how to get your campus involved with your local Patch publication, please email us at PatchU@patch.com."
    verify_page_object "News & Announcements", "//div[@class='full-content']//div[@id='main']//div[@class='small-header more-headroom footroom' and contains(text(), 'News & Announcements')]"
    verify_text_present "For the most up-to-date information and announcements about PatchU, links to articles by PatchU student interns, our campus outreach schedule and other exciting news about the industry, follow us on Twitter or on Facebook."
    verify_page_object "Twitter Link", "//div[@class='full-content']//div[@id='main']//a[@href='http://twitter.com/#%21/Patch_U/']"
    verify_page_object "Facebook link", "//div[@class='full-content']//div[@id='main']//a[@href='http://www.facebook.com/pages/PatchU/194457937258798']"
    
    anonymous_footer
  end
  
  def test_volunteer #is a landing page
    @page.open $volunteer
    sleep 5
    anonymous_header
    anonymous_footer
    news_landing_common_objects "Volunteering"
  end
  
  def test_error_404
    @page.open $error_404
    sleep 5
    anonymous_header
    verify_page_object "404 Frame", "//div[@class='span19 error-page error-404']//div[@class='content-center error-font headroom']"
    verify_text_present "There doesn't seem to be anything at this address (or it may be something you need special permission to view)."
    verify_text_present "Make sure you're signed in with your own account, or Search for what you were looking for."
    anonymous_footer
  end
  
  def test_homepage
    @page.open $patch_homepage
    sleep 5
    anonymous_header
    #Featured story
    verify_page_object "News & Blogs header", "//div[@id='the_content']//div[@class='full-content']//div[@class='mobile-footroom span9 bottom-padding']//div[@class='clear-fix headroom footroom']//h2//a[contains(text(), 'News & Blogs')]"
    verify_page_object "Town Editor image", "//div[@id='the_content']//div[@class='full-content']//div[@class='mobile-footroom span9 bottom-padding']//div[@class='clear-fix headroom footroom']//div[@class='pull-right mobile-no-float mobile-text-right']//img[@width='26' and @height='26']"
    verify_page_object "Town Editor link", "//div[@id='the_content']//div[@class='full-content']//div[@class='mobile-footroom span9 bottom-padding']//div[@class='clear-fix headroom footroom']//div[@class='pull-right mobile-no-float mobile-text-right']//strong//a"
    verify_page_object "Town Editor text", "//div[@id='the_content']//div[@class='full-content']//div[@class='mobile-footroom span9 bottom-padding']//div[@class='clear-fix headroom footroom']//div[@class='pull-right mobile-no-float mobile-text-right']//span[contains(text(), '(Editor)')]" 
    verify_page_object "Featured article - image", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='featured dotted-line-bottom no-padding']//a[@class='js-trackable data-tag featured-img']//img[@width='468' and @height='314']"
    verify_page_object "Featured article - headline", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='featured dotted-line-bottom no-padding']//div[@class='featured_item_title']//h2[@class='article-title']//a"
    #verify_page_object "Featured article - snippet", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='featured dotted-line-bottom no-padding']//div[@class='featured_item_title']//div[@class='large-type']"
    verify_page_object "Featured article - Recommend icon", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='featured dotted-line-bottom no-padding']//p//span[@class='js-like_button']//i[@class='icon_recommend-icon inline-icon']"
    verify_page_object "Featured article - Recommend text", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='featured dotted-line-bottom no-padding']//p//span[@class='js-like_button']//span[contains(text(), 'Recommend')]"
    verify_page_object "Featured article - Comment icon", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='featured dotted-line-bottom no-padding']//p//a[@class='light-link js-trackable js-comment js-simple_ui data-tag']//i[@class='icon_comment-icon inline-icon']"
    verify_page_object "Featured article - Comment text", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='featured dotted-line-bottom no-padding']//p//a[@class='light-link js-trackable js-comment js-simple_ui data-tag']//span[contains(text(), 'Comment')]"
    #verify_page_object "Featured article - Article by ", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='featured dotted-line-bottom no-padding']//div[@class='half-headroom footroom']//span[contains(text(), 'by')]"
    verify_page_object "Featured article - Author", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='featured dotted-line-bottom no-padding']//p//a[@class='light-link data-tag']"
    #Feed Articles
    num = 1
    total_articles = 7
    while num <= total_articles
    	if true == @page.is_element_present("//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//a//img[@width='108' and @height='72']")
    		verify_page_object "Article ##{num} - image", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//a//img[@width='108' and @height='72']"
    	else #image placeholder
    		verify_page_object "Article ##{num} - image placeholder", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//i"
    	end
    	verify_page_object "Article ##{num} - headline", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//h3[@class='feed-headline']"
    	verify_page_object "Article ##{num} - snippet", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//div[@class='large-type half-footroom post-body']//a"
    	verify_page_object "Article ##{num} - Recommend icon", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//span[@class='js-like_button']//i"
    	verify_page_object "Article ##{num}- Recommend text", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//span[@class='js-like_button']//span[contains(text(), 'Recommend')]"
    	verify_page_object "Article ##{num} - Comment icon", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//a[@class='light-link js-trackable js-comment js-simple_ui data-tag']//i"
    	verify_page_object "Article ##{num} - Comment text", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//a[@class='light-link js-trackable js-comment js-simple_ui data-tag']//span[contains(text(), 'Comment')]"
    	#verify_page_object "Article ##{num} - Article by", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//span[contains(text(), 'by')]"
    	verify_page_object "Article ##{num} - Author", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@id='feed']//div[#{num}]//div[@class='headroom horizontal-box footroom postItem article-post']//a[@class='light-link data-tag']"
    	num +=1
    end
    #More News & Blogs
    verify_page_object "More News & Blogs header", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='wrap half-headroom clear-fix ']//strong[contains(text(), 'More News')]"
    foo = 1
    total_newsblogs = 6
    while num <= total_newsblogs
    	verify_page_object "More News & Blogs ##{foo} article", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='wrap half-headroom clear-fix ']//ul[@class='footroom']//li[#{foo}]//a"
    	foo +=1
    end
    verify_page_object "More News & Blogs - See all News link", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='wrap half-headroom clear-fix ']//div[@class='dotted-line-top tc']//a[@href='/news' and contains(text(), 'See all News')]"
    verify_page_object "More News & Blogs - See all Blogs link", "//div[@id='the_content']//div[@class='full-content']//div[@id='news']//div[@class='wrap half-headroom clear-fix ']//div[@class='dotted-line-top tc']//a[@href='/blogs' and contains(text(), 'See all Blogs')]"
    #Upcoming Events
    verify_page_object "Upcoming Events header", "//div[@id='the_content']//div[@class='full-content']//div[@id='upcoming_events_wrapper']//h2[contains(text(), 'Upcoming Events')]"
    verify_page_object "Upcoming Events - See all link", "//div[@id='the_content']//div[@class='full-content']//div[@id='upcoming_events_wrapper']//a[contains(text(), 'See all')]"
    cat = 1
    total_events = 6
    while cat <= total_events 
    	verify_page_object "Upcoming Events - ##{cat} Event - Calendar icon", "//div[@id='the_content']//div[@class='full-content']//div[@id='upcoming_events_wrapper']//ul[@class='floating-list event-list no-left-margin footroom']//li[#{cat}]//div[@class='media']//div[@class='img']//a"
    	verify_page_object "Upcoming Events - ##{cat} Event - headline", "//div[@id='the_content']//div[@class='full-content']//div[@id='upcoming_events_wrapper']//ul[@class='floating-list event-list no-left-margin footroom']//li[#{cat}]//div[@class='media']//div[@class='bd body']//div[@class='title overflow-hidden upcoming-event-title-height']//a"
    	verify_page_object "Upcoming Events - ##{cat} Event - datestamp", "//div[@id='the_content']//div[@class='full-content']//div[@id='upcoming_events_wrapper']//ul[@class='floating-list event-list no-left-margin footroom']//li[#{cat}]//div[@class='media']//div[@class='bd body']//time[1]"
    	verify_page_object "Upcoming Events - ##{cat} Event - timestamp", "//div[@id='the_content']//div[@class='full-content']//div[@id='upcoming_events_wrapper']//ul[@class='floating-list event-list no-left-margin footroom']//li[#{cat}]//div[@class='media']//div[@class='bd body']//time[2]"
    	cat +=1
    end
    verify_page_object "Upcoming Events - Post an Event button", "//div[@id='the_content']//div[@class='full-content']//div[@id='upcoming_events_wrapper']//a[@class='btn btn-success footroom data-tag js-needs_current_user pull-right']"
    #Shout Stream
    if true == @page.is_text_present("Shout Stream")
    	verify_page_object "Shout Stream header", "//div[@id='the_content']//div[@class='full-content']//div[@class='clear-fix more-headroom']//h2[contains(text(), 'Shout Stream')]"
    	#checks first row of shout stream only
    	verify_page_object "Shout Stream user icon", "//div[@id='the_content']//div[@class='full-content']//div[@class='clear-fix more-headroom']//ul[1]//div[1]//div[@class='shout-row span9']//div[@class='span2 content-center shout-avatar']//a"
    	verify_page_object "Shout Stream Comment", "//div[@id='the_content']//div[@class='full-content']//div[@class='clear-fix more-headroom']//ul[1]//div[1]//div[@class='shout-row span9']//div[@class='span7 shout-content']//a"
    end
    #Who's Blogging
    whos_blogging
    #Boards Rail
    verify_page_object "Boards - header", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@class='headroom']//h2[contains(text(), 'Boards')]"
    verify_page_object "Boards - More link", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@class='headroom']//a[@href='/boards' and contains(text(), 'More')]"
    verify_page_object "Boards - post box", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='inline_post_form']//span[@class='default-narrow-board-message']"
    verify_page_object "Boards post - camera image", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='inline_post_form']//i[@class='inline-icon icon_add-photo-light pull-right icon-left']"
    verify_page_object "Boards - post - video image", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='inline_post_form']//i[@class='inline-icon icon_add-video-light pull-right icon-left']"
    verify_page_object "Boards - post button", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='inline_post_form']//button[@class='btn btn-success group-inline-form-prompt ']"
    verify_page_object "First Board - board name", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='board_feed']//div//div[1]//div[@class='half-footroom']//strong//a"
    verify_page_object "First Board - post headline", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='board_feed']//div//div[1]//h3//a"
    #Removed 9/16 verify_page_object "First Board - truncated text", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='board_feed']//div//div[1]//div[@class='large-type half-footroom post-body']//a"
    #Removed 9/16 verify_page_object "First Board - timestamp", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='board_feed']//div//div[1]//div[@class='half-footroom']//time"
    verify_page_object "First Board - Comment icon", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='board_feed']//div//div[1]//p//a//i[@class='icon_comment-icon inline-icon']"
    verify_page_object "First Board - Recommend icon", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='board_feed']//div//div[1]//p//span//a[@class='link-like data-tag light-link js-needs_current_user']//i"
    verify_page_object "First Board - author", "//div[@id='the_content']//div[@class='full-content']//div[@id='boards_center']//div[@id='board_feed']//div//div[1]//p//a[@class='light-link data-tag']"
    #Ads Rails
    verify_page_object "Add Slot 1", "//div[@id='the_content']//div[@class='right-rail invisible-mobile']//div[@id='ad-slot_1']"
    verify_page_object "Add Slot 2", "//div[@id='the_content']//div[@class='right-rail invisible-mobile']//div[@id='ad-slot_2']"
    verify_page_object "Add Slot 3", "//div[@id='the_content']//div[@class='right-rail invisible-mobile']//div[@id='ad-slot_3']"
    verify_page_object "Add Slot 4", "//div[@id='the_content']//div[@class='right-rail invisible-mobile']//div[@id='ad-slot_4']"
    
    anonymous_footer
  end
end