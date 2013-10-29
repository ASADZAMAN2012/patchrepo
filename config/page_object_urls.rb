module PageObjectUrls
  if $environment != 'production'
  
 #Anonymous
    $patch_home = "http://www.patch.com"
    $patch_homepage = "http://#{$local_patch}.#{$environment}.i.patch.com"
    $join = "http://#{$local_patch}.#{$environment}.i.patch.com/join"
    $login = "http://#{$local_patch}.#{$environment}.i.patch.com/login"
    $news_feature_landing = "http://#{$local_patch}.#{$environment}.i.patch.com/news"
    $blogs_landing = "http://#{$local_patch}.#{$environment}.i.patch.com/blogs"
    $boards_landing = "http://#{$local_patch}.#{$environment}.i.patch.com/boards"
    $news_section_landing = "http://#{$local_patch}.#{$environment}.i.patch.com/news/sports"
    $feature_landing = "http://#{$local_patch}.#{$environment}.i.patch.com/news/back-to-school"
    $news_post_show = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/business-news/p/new-fitness-studio-to-open-in-bellmore-sunday"
    $blogs_post_show = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/the-college-whisperer/p/once-safe-colleges-now-out-of-reach_47da46cc"
    $boards_post_show = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/buy-sell-trade/p/033334dd-6cc3-4b18-af75-0b3e9de9a3be"
    $events_landing = "http://#{$local_patch}.#{$environment}.i.patch.com/events"
    $events_show = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/events/p/rugged-run-for-respect--extreme--unique-obstacle-course-and-mud-run_9927415d"
    $business_landing = "http://#{$local_patch}.#{$environment}.i.patch.com/directory"
    $business_show = "http://#{$local_patch}.#{$environment}.i.patch.com/listings/budget-truck-rental-5"
    $claim_a_listing = "http://#{$local_patch}.#{$environment}.i.patch.com/claim"
    $review_post_show = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/the-cake-gallery/p/e6a479e8-d556-42e2-9943-7e5f2299bcf4"
    $real_estate_landing = "http://#{$local_patch}.#{$environment}.i.patch.com/news/real-estate"
    $real_estate_show = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/real-estate/p/homes-for-sale-in-bellmore_52bd8abc"
    $job_landing = "http://#{$local_patch}.#{$environment}.i.patch.com/jobs/careerbuilder"
    $search_results = "http://#{$local_patch}.#{$environment}.i.patch.com/search?keywords=blizzard"
    $editor_profile = "http://#{$local_patch}.#{$environment}.i.patch.com/users/danielle-de-souza"
    $feedback_form = "http://feedback.aol.com/help/patch/"
    $contact_us = "http://#{$local_patch}.#{$environment}.i.patch.com/contact"
    $about_us = "http://#{$local_patch}.#{$environment}.i.patch.com/about"
    $jobs = "http://www.patch.com/jobs"
    $terms = "http://#{$local_patch}.#{$environment}.i.patch.com/terms"
    $privacy = "http://#{$local_patch}.#{$environment}.i.patch.com/privacy"
    $patch_u = "http://#{$local_patch}.#{$environment}.i.patch.com/patch-u"
    $volunteer = "http://#{$local_patch}.#{$environment}.i.patch.com/volunteer"
    $error_404 =   "http://#{$local_patch}.#{$environment}.i.patch.com/groups/weather/p/blizzard-means-boon-for-bellmore-businessesss"

#Regular User
    $user_profile = "http://#{$local_patch}.#{$environment}.i.patch.com/users/qa-user-1c3a06bed909a16d4750f01c7003f5d6551f9711dab19dd94a1eb0f42a4865519"
    $edit_profile = "http://#{$local_patch}.#{$environment}.i.patch.com/users/qa-user-1c3a06bed909a16d4750f01c7003f5d6551f9711dab19dd94a1eb0f42a4865519/edit"
    $email_settings = "http://#{$local_patch}.#{$environment}.i.patch.com/users/qa-user-1c3a06bed909a16d4750f01c7003f5d6551f9711dab19dd94a1eb0f42a4865519/email"
    $updates = "http://#{$local_patch}.#{$environment}.i.patch.com/users/qa-user-1c3a06bed909a16d4750f01c7003f5d6551f9711dab19dd94a1eb0f42a4865519/notification"
    $change_password = "http://#{$local_patch}.#{$environment}.i.patch.com/users/qa-user-1c3a06bed909a16d4750f01c7003f5d6551f9711dab19dd94a1eb0f42a4865519/account_password"
    $personal_info = "http://#{$local_patch}.#{$environment}.i.patch.com/users/qa-user-1c3a06bed909a16d4750f01c7003f5d6551f9711dab19dd94a1eb0f42a4865519/account_contact"
    $your_posts = "http://#{$local_patch}.#{$environment}.i.patch.com/users/qa-user-1c3a06bed909a16d4750f01c7003f5d6551f9711dab19dd94a1eb0f42a4865519/draft"
    $create_a_blog = "http://#{$local_patch}.#{$environment}.i.patch.com/blogs/new"
    $post_to_blog = "http://#{$local_patch}.#{$environment}.i.patch.com/blogs/chuck-ingersolls-blog/posts/article/new"
    #$edit_blog_post =
    #$blog_settings_basic_information =
    #$blog_settings_group_icon =
    #$blog_settings_group_type =
    #$blog_settings_followers =
    $post_event = "http://#{$local_patch}.#{$environment}.i.patch.com/posts/event/new"
    #$edit_event =

#Editor
    $tools_menu = "http://#{$local_patch}.#{$environment}.i.patch.com"
    $post_article = "http://#{$local_patch}.#{$environment}.i.patch.com/posts/article/new"
    #$edit_article =
    $create_news_section = "http://#{$local_patch}.#{$environment}.i.patch.com/news/new"
    #$section_settings_basic_info =
    #$section_settings_group_icon =
    #$section_settings_group_type =
    #$section_settings_followers =
    $create_a_board =  "http://#{$local_patch}.#{$environment}.i.patch.com/boards/new"
    $post_to_board =  "http://#{$local_patch}.#{$environment}.i.patch.com/boards/buy-sell-trade"
    #$edit_board_post =
  
 #Admin
    $edit_blog_post = "http://#{$local_patch}.#{$environment}.i.patch.com/posts/follow-the-college-whisperer-on-your-local-li-patch_32362252/edit"
    $blog_settings_basic_information = "http://#{$local_patch}.#{$environment}.i.patch.com/blogs/chuck-ingersolls-blog/edit/basic_information"
    $blog_settings_group_icon = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/chuck-ingersolls-blog/edit/group_logo"
    $blog_settings_group_type = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/chuck-ingersolls-blog/edit/group_type"
    $blog_settings_followers = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/chuck-ingersolls-blog/edit/followers"
    $edit_event = "http://#{$local_patch}.#{$environment}.i.patch.com/posts/mommy-and-me-cooking-class_901ca2d2/edit"
    $edit_article = "http://#{$local_patch}.#{$environment}.i.patch.com/posts/ny-governor-sends-rosh-hashanah-wishes_a3e34a4c/edit"
    $section_settings_basic_info = "http://#{$local_patch}.#{$environment}.i.patch.com/news/editors-picks/edit/basic_information"
    $section_settings_group_icon = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/editors-picks/edit/group_logo"
    $section_settings_group_type = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/editors-picks/edit/group_type"
    $section_settings_followers = "http://#{$local_patch}.#{$environment}.i.patch.com/groups/editors-picks/edit/followers"
    $edit_board_post =  "http://#{$local_patch}.#{$environment}.i.patch.com/posts/livingston-foot-care-specialists--north-bellmore/edit"

  end
  
if $environment == 'production'

#Anonymous
    $patch_home = "http://www.patch.com"
    $patch_homepage = "http://bellmore.patch.com"
    $community_home = "http://#{$local_patch}.patch.com/join"
    $join = "http://#{$local_patch}.patch.com/join"
    $login = "http://#{$local_patch}.patch.com/login"
    $news_feature_landing = "http://#{$local_patch}.patch.com/news"
    $blogs_landing = "http://#{$local_patch}.patch.com/blogs"
    $boards_landing = "http://#{$local_patch}.patch.com/boards"
    $news_section_landing = "http://#{$local_patch}.patch.com/news/sports"
    $feature_landing = "http://#{$local_patch}.patch.com/news/back-to-school"
    $news_post_show = "http://#{$local_patch}.patch.com/groups/business-news/p/quiz-do-other-people-find-you-difficult"
    $blogs_post_show = "http://#{$local_patch}.patch.com/groups/the-college-whisperer/p/once-safe-colleges-now-out-of-reach_47da46cc"
    $boards_post_show = "http://#{$local_patch}.patch.com/groups/buy-sell-trade/p/033334dd-6cc3-4b18-af75-0b3e9de9a3be"
    $events_landing = "http://#{$local_patch}.patch.com/events"
    $events_show = "http://#{$local_patch}.patch.com/groups/events/p/rugged-run-for-respect--extreme--unique-obstacle-course-and-mud-run_9927415d"
    $business_landing = "http://#{$local_patch}.patch.com/directory"
    $business_show = "http://bellmore.patch.com/listings/nassau-johrens-registry"
    $claim_a_listing = "http://#{$local_patch}.patch.com/claim"
    $review_post_show = "http://#{$local_patch}.patch.com/groups/the-cake-gallery/p/e6a479e8-d556-42e2-9943-7e5f2299bcf4"
    $real_estate_landing = "http://#{$local_patch}.patch.com/news/real-estate"
    $real_estate_show = "http://#{$local_patch}.patch.com/groups/real-estate/p/homes-for-sale-in-bellmore_52bd8abc"
    $job_landing = "http://#{$local_patch}.patch.com/jobs/careerbuilder"
    $search_results = "http://#{$local_patch}.patch.com/search?keywords=blizzard"
    $editor_profile = "http://#{$local_patch}.patch.com/users/danielle-de-souza"
    $feedback_form = "http://feedback.aol.com/help/patch/"
    $contact_us = "http://#{$local_patch}.patch.com/contact"
    $about_us = "http://#{$local_patch}.patch.com/about"
    $jobs = "http://wwww.patch.com/jobs"
    $terms = "http://bellmore.patch.com/terms"
    $privacy = "http://#{$local_patch}.patch.com/privacy"
    $patch_u = "http://#{$local_patch}.patch.com/patch-u"
    $volunteer = "http://bellmore.patch.com/volunteer"
    $error_404 =   "http://#{$local_patch}.patch.com/users/keelawn-dowells"

#Regular User
    $user_profile = "http://#{$local_patch}.patch.com/users/qa-automationa4c2a22b67c5a6ac9cf611205ae3b1f37fe96bba7e17a31df5565404a64bb6e5"
    $edit_profile = "http://#{$local_patch}.patch.com/users/qa-automationa4c2a22b67c5a6ac9cf611205ae3b1f37fe96bba7e17a31df5565404a64bb6e5/edit"
    $email_settings = "http://#{$local_patch}.patch.com/users/qa-automationa4c2a22b67c5a6ac9cf611205ae3b1f37fe96bba7e17a31df5565404a64bb6e5/email"
    $updates = "http://#{$local_patch}.patch.com/users/qa-automationa4c2a22b67c5a6ac9cf611205ae3b1f37fe96bba7e17a31df5565404a64bb6e5/notification"
    $change_password = "http://#{$local_patch}.patch.com/users/qa-automationa4c2a22b67c5a6ac9cf611205ae3b1f37fe96bba7e17a31df5565404a64bb6e5/account_password"
    $personal_info = "http://#{$local_patch}.patch.com/users/qa-automationa4c2a22b67c5a6ac9cf611205ae3b1f37fe96bba7e17a31df5565404a64bb6e5/account_contact"
    $your_posts = "http://#{$local_patch}.patch.com/users/qa-automationa4c2a22b67c5a6ac9cf611205ae3b1f37fe96bba7e17a31df5565404a64bb6e5/draft"
    $create_a_blog = "http://#{$local_patch}.patch.com/blogs/new"
    $post_to_blog = "http://#{$local_patch}.patch.com/blogs/test-blog/posts/article/new"
    $edit_blog_post = "http://#{$local_patch}.patch.com/posts/this-is-an-automated-blog/edit"
    $blog_settings_basic_information = "http://#{$local_patch}.patch.com/blogs/auto-test-blog/edit/basic_information"
    $blog_settings_group_icon = "http://#{$local_patch}.patch.com/groups/auto-test-blog/edit/group_logo"
    $blog_settings_group_type = "http://#{$local_patch}.patch.com/groups/auto-test-blog/edit/group_type"
    $blog_settings_followers = "http://#{$local_patch}.patch.com/groups/auto-test-blog/edit/followers"
    $post_event = "http://#{$local_patch}.patch.com/posts/event/new"
    $edit_event = "http://#{$local_patch}.patch.com/posts/automation-session/edit"

#Editor
    $tools_menu = "http://#{$local_patch}.patch.com"
    $post_article = "http://#{$local_patch}.patch.com/posts/article/new"
    $edit_article = "http://#{$local_patch}.patch.com/posts/3rd-article-post-in-news/edit"
    $create_news_section = "http://#{$local_patch}.patch.com/news/new"
    $section_settings_basic_info = "http://#{$local_patch}.patch.com/news/editors-picks/edit/basic_information"
    $section_settings_group_icon = "http://#{$local_patch}.patch.com/groups/editors-picks/edit/group_logo"
    $section_settings_group_type = "http://#{$local_patch}.patch.com/groups/editors-picks/edit/group_type"
    $section_settings_followers = "http://#{$local_patch}.patch.com/groups/editors-picks/edit/followers"
    $create_a_board =  "http://#{$local_patch}.patch.com/boards/new"
    $post_to_board =  "http://#{$local_patch}.patch.com/boards/buy-sell-trade"
    $edit_board_post =  "http://#{$local_patch}.patch.com/posts/last-article-post-in-boards/edit"
    $board_settings_basic_info =  "http://#{$local_patch}.patch.com/boards/opinion/edit/basic_information"

#Admin







  end
end