module Link_Variables
  if  $environment == 'nixon'
#Home (Nixon)
	$patch = "http://#{$local_patch}#{$environment}.i.patch.com"
	$patch_login = "http://#{$local_patch}#{$environment}.i.patch.com/login"
	$patch_join = "http://#{$local_patch}#{$environment}.i.patch.com/join"
	$patch_forgot_password = "http://#{$local_patch}#{$environment}.i.patch.com/forgot_password"
	$facebook_home = "http://www.facebook.com/"
	$facebook_apps = "http://www.facebook.com/settings?tab=applications"
	$patch_users = "http://#{$local_patch}#{$environment}.i.patch.com/users"
	$patch_logout = "http://#{$local_patch}#{$environment}.i.patch.com/logout"
    $patch_note = "http://#{$local_patch}#{$environment}.i.patch.com/posts/note/new"
    $patch_article = "http://#{$local_patch}#{$environment}.i.patch.com/posts/article/new"
    $patch_media = "http://#{$local_patch}#{$environment}.i.patch.com/posts/media/new"
	
#News (Nixon)
	$patch_news_landing_page = "http://#{$local_patch}#{$environment}.i.patch.com/news"
	$patch_news_school_group = "http://#{$local_patch}#{$environment}.i.patch.com/news/school-news"
	$patch_new_news_group = "http://#{$local_patch}#{$environment}.i.patch.com/news/new"
	$patch_news_post_open = "http://#{$local_patch}#{$environment}.i.patch.com/news/post-moderated-open-news"
	$patch_news_post_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-news/p/15d59c3b-8e92-404f-b844-18ab092a617b"
	$patch_news_post_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-news/p/post-moderated-open-news-article-do-not-delete"
	$patch_news_post_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/news/post-moderated-open-news/posts/article/new"
	
	$patch_news_post_closed = "http://#{$local_patch}#{$environment}.i.patch.com/news/post-moderated-closed-news"
	$patch_news_post_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-news/p/post-moderated-closed-news-note-do-not-delete"
	$patch_news_post_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-news/p/post-moderated-closed-news-article-do-not-delete"
	$patch_news_post_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/news/post-moderated-closed-news/posts/article/new"
	
	$patch_news_pre_open = "http://#{$local_patch}#{$environment}.i.patch.com/news/pre-moderated-open-news"
	$patch_news_pre_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-news/p/pre-moderated-open-news-note-do-not-delete"
	$patch_news_pre_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-news/p/pre-moderated-open-news-article-do-not-delete"
	$patch_news_pre_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/news/pre-moderated-open-news/posts/article/new"
	
	$patch_news_pre_closed = "http://#{$local_patch}#{$environment}.i.patch.com/news/pre-moderated-closed-news"
	$patch_news_pre_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-closed-news/p/pre-moderated-closed-news-note-do-not-delete"
	$patch_news_pre_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-closed-news/p/pre-moderated-closed-news-article-do-not-delete"
	$patch_news_pre_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/news/pre-moderated-closed-news/posts/article/new"
		
#Boards (Nixon)
	$patch_boards_landing_page = "http://#{$local_patch}#{$environment}.i.patch.com/boards"
	$patch_boards_sports_group = "http://#{$local_patch}#{$environment}.i.patch.com/boards/sports"
	$patch_new_board_group = "http://#{$local_patch}#{$environment}.i.patch.com/boards/new"
	$patch_boards_post_open = "http://#{$local_patch}#{$environment}.i.patch.com/boards/post-moderated-open-board"
	$patch_boards_post_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-board/p/post-moderated-open-board-note-do-not-delete"
	$patch_boards_post_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-board/p/post-moderated-open-board-article-do-not-delete"
	$patch_boards_post_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-board/posts/article/new"
	
	$patch_boards_post_closed = "http://#{$local_patch}#{$environment}.i.patch.com/boards/-post-moderated-closed-board"
	$patch_boards_post_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/-post-moderated-closed-board/p/post-moderated-closed-board-note-do-not-delete"
	$patch_boards_post_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/-post-moderated-closed-board/post-moderated-closed-board-article-do-not-delete"
	$patch_boards_post_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/boards/-post-moderated-closed-board/posts/article/new"
	
	$patch_boards_pre_open = "http://#{$local_patch}#{$environment}.i.patch.com/boards/pre-moderated-open-board"
	$patch_boards_pre_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-board/p/d9df3d71-e1c8-4287-bf4c-aafeb1ab5932"
	$patch_boards_pre_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-board/p/pre-moderated-open-board-article-do-not-delete"
	$patch_boards_pre_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/boards/pre-moderated-open-board/posts/article/new"
	
	$patch_boards_pre_closed = "http://#{$local_patch}#{$environment}.i.patch.com/boards/pre-moderated-closed-board"
	$patch_boards_pre_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-closed-board/p/f34fe21f-5db7-4dd4-9466-6ca87225b194"
	$patch_boards_pre_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-closed-board/p/pre-moderated-closed-board-article-do-not-delete"
	$patch_boards_pre_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/boards/pre-moderated-closed-board/posts/article/new"

#Blogs (Nixon)
	$patch_blogs_landing_page = "http://#{$local_patch}#{$environment}.i.patch.com/blogs"
	$patch_new_blog_group = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/new"
	$patch_blogs_group_edit = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/politicalopinionother-group-506441/edit/basic_information"
	$patch_blogs_post_open = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/post-moderated-open-blog"
	$patch_blogs_post_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-blog/p/post-moderated-open-blog-note-do-note-delete"
	$patch_blogs_post_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-blog/p/post-moderated-open-blog-article-do-note-delete"
	$patch_blogs_post_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/post-moderated-open-blog/posts/article/new"
	
	$patch_blogs_post_closed = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/post-moderated-closed-blog"
	$patch_blogs_post_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-blog/p/post-moderated-closed-blog-note-do-not-delete"
	$patch_blogs_post_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-blog/p/post-moderated-closed-blog-article-do-not-delete"
	$patch_blogs_post_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/post-moderated-closed-blog/posts/article/new"
	
	$patch_blogs_pre_open = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/pre-moderated-open-blog"
	$patch_blogs_pre_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-blog/p/9f8d977f-67bc-4c45-b9be-550bd98b566d"
	$patch_blogs_pre_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-blog/p/pre-moderated-open-blog-existing-article--do-not-delete"
	$patch_blogs_pre_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/pre-moderated-open-blog/posts/article/new"
	
	$patch_blogs_pre_closed = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/pre-moderated-closed-blog"
	$patch_blogs_pre_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-closed-blog/p/pre-moderated-closed-blog-existing-article-do-not-delete"
	$patch_blogs_pre_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-closed-blog/p/pre-moderated-closed-blog-existing-article-do-not-delete"
	$patch_blogs_pre_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/pre-moderated-closed-blog/posts/article/new"

#Events (Nixon)
	$patch_event_landing = "http://#{$local_patch}#{$environment}.i.patch.com/events"
	$patch_new_event = "http://#{$local_patch}#{$environment}.i.patch.com/posts/event/new"
	$patch_existing_event = "http://#{$local_patch}#{$environment}.i.patch.com/groups/events/p/existing-event"	

#Businesses  (Nixon)
	$patch_directory = "http://flatiron.#{$environment}.i.patch.com/directory"
	$patch_directory_listing = "http://flatiron.#{$environment}.i.patch.com/listings/go-go-thai"
	$patch_edit_review_note = "http://flatiron.#{$environment}.i.patch.com/groups/go-go-thai-group/p/90bbbd88-4f8f-4ed7-96d7-5507cf476694"
	$patch_edit_review_article = "http://flatiron.#{$environment}.i.patch.com/groups/go-go-thai-group/p/article-regarding-go-go-thai-36577"
	$patch_directory = "http://flatiron.#{$environment}.i.patch.com/directory"
	$patch_mongooses = "http://#{$local_patch}#{$environment}.i.patch.com/groups/the-fighting-mongooses"
    $patch_mongooses_settings = "http://#{$local_patch}#{$environment}.i.patch.com/groups/the-fighting-mongooses/edit/basic_information"
	$patch_opinion_group = "http://#{$local_patch}#{$environment}.i.patch.com/groups/opinion"
	
#Flatiron (Nixon)
	$patch_flatiron_blogs_post_open = "http://flatiron.#{$environment}.i.patch.com/blogs/post-moderated-open-flatiron-blog"
	$patch_flatiron_blogs_article_new = "http://flatiron.#{$environment}.i.patch.com/blogs/post-moderated-open-flatiron-blog/posts/article/new"
	$patch_flatiron_boards_post_open = "http://flatiron.#{$environment}.i.patch.com/boards"
	$patch_flatiron_boards_announcement_article_new = "http://flatiron.#{$environment}.i.patch.com/boards/announcements/posts/article/new"
	$patch_flatiron_news_school_news_article_new = "http://flatiron.#{$environment}.i.patch.com/news/school-news/posts/article/new"
    $patch_flatiron_news_school_news = "http://flatiron.#{$environment}.i.patch.com/news/school-news"
    $patch_flatiron_news_p = "http://flatiron.#{$environment}.i.patch.com/news"
	$patch_flatiron_event = "http://flatiron.#{$environment}.i.patch.com/groups/events/p/flatiron-event--do-not-delete"
	$patch_flatiron_event_new = "http://flatiron.#{$environment}.i.patch.com/posts/event/new"

  end
#############		
#############
#Please note: If executing tests on Staging, River, or Jayne, the local patch must be Flatiron, or the static data will not be accessible.
#############		
#############

  if  $environment == 'staging'
#Home  (Staging)
	$patch = "http://#{$local_patch}#{$environment}.i.patch.com"
	$patch_login = "http://#{$local_patch}#{$environment}.i.patch.com/login"
	$patch_join = "http://#{$local_patch}#{$environment}.i.patch.com/join"
	$patch_forgot_password = "http://#{$local_patch}#{$environment}.i.patch.com/forgot_password"
	$facebook_home = "http://www.facebook.com/"
	$facebook_apps = "http://www.facebook.com/settings?tab=applications"
	$patch_users = "http://#{$local_patch}#{$environment}.i.patch.com/users"
	$patch_logout = "http://#{$local_patch}#{$environment}.i.patch.com/logout"
    $patch_note = "http://#{$local_patch}#{$environment}.i.patch.com/posts/note/new"
	
#News (Staging)
	$patch_news_school_group = "http://#{$local_patch}#{$environment}.i.patch.com/news/schools"
	$patch_new_news_group = "http://#{$local_patch}#{$environment}.i.patch.com/news/new"
	$patch_news_post_open = "http://#{$local_patch}#{$environment}.i.patch.com/news/post-moderated-open-news"
	$patch_news_post_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-news/p/post-moderated-open-news-note-do-not-delete"
	$patch_news_post_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-news/p/post-moderated-open-news-article-do-not-delete_5d67c775"
	$patch_news_post_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/news/post-moderated-open-news/posts/article/new"
	
	$patch_news_post_closed = "http://#{$local_patch}#{$environment}.i.patch.com/news/post-moderated-closed-news"
	$patch_news_post_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-news/p/post-moderated-closed-news-note-do-not-delete"
	$patch_news_post_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-news/p/post-moderated-closed-news-article-do-not-delete"
	$patch_news_post_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/news/post-moderated-closed-news/posts/article/new"
	
	$patch_news_pre_open = "http://#{$local_patch}#{$environment}.i.patch.com/news/pre-moderated-open-news"
	$patch_news_pre_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-news/p/pre-moderated-open-news-note-do-not-delete"
	$patch_news_pre_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-news/p/pre-moderated-open-news-article-do-not-delete"
	$patch_news_pre_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/news/pre-moderated-open-news/posts/article/new"
	
	$patch_news_pre_closed = "http://#{$local_patch}#{$environment}.i.patch.com/news/pre-moderated-closed-news"
	$patch_news_pre_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-closed-news/p/pre-moderated-closed-news-note-do-not-delete"
	$patch_news_pre_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-closed-news/p/pre-moderated-closed-news-article-do-not-delete"
	$patch_news_pre_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/news/pre-moderated-closed-news/posts/article/new"
		
#Boards (Staging)
	$patch_boards_landing_page = "http://#{$local_patch}#{$environment}.i.patch.com/boards"
	$patch_boards_sports_group = "http://#{$local_patch}#{$environment}.i.patch.com/boards/sports"
	$patch_new_board_group = "http://#{$local_patch}#{$environment}.i.patch.com/boards/new"
	$patch_boards_post_open = "http://#{$local_patch}#{$environment}.i.patch.com/boards/post-moderated-open-board"
	$patch_boards_post_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-board/p/post-moderated-open-board-note-do-not-delete"
	$patch_boards_post_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-board/p/post-moderated-closed-board-article-do-not-delete"
	$patch_boards_post_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-board/posts/article/new"

	$patch_boards_post_closed = "http://#{$local_patch}#{$environment}.i.patch.com/boards/post-moderated-closed-board"
	$patch_boards_post_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-board/p/post-moderated-closed-board-note-do-not-delete"
	$patch_boards_post_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-board/p/post-moderated-closed-board-article-do-not-delete_241befb0"
	$patch_boards_post_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-board/posts/article/new"
	
	$patch_boards_pre_open = "http://#{$local_patch}#{$environment}.i.patch.com/boards/pre-moderated-open-board"
	$patch_boards_pre_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-board/p/pre-moderated-open-board-note-do-not-delete"
	$patch_boards_pre_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-board/p/pre-moderated-open-board-article-do-not-delete"
	$patch_boards_pre_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-board/posts/article/new"
	
	$patch_boards_pre_closed = "http://#{$local_patch}#{$environment}.i.patch.com/boards/pre-moderated-open-closed"
	$patch_boards_pre_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-closed/p/pre-moderated-closed-board-note-do-not-delete"
	$patch_boards_pre_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-closed/p/pre-moderated-closed-board-article-do-not-delete"
	$patch_boards_pre_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-closed/posts/article/new"

#Blogs (Staging)
	$patch_blogs_landing_page = "http://#{$local_patch}#{$environment}.i.patch.com/blogs"
	$patch_new_blog_group = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/new"
	$patch_blogs_post_open = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/post-moderated-open-blog"
	$patch_blogs_post_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-blog/p/post-moderated-open-blog-note-do-not-delete"
	$patch_blogs_post_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-open-blog/p/post-moderated-open-blog-article"
	$patch_blogs_post_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/post-moderated-open-blog/posts/article/new"
	
	$patch_blogs_post_closed = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/post-moderated-closed-blog"
	$patch_blogs_post_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-blog/p/post-moderated-closed-blog-note-do-not-delete"
	$patch_blogs_post_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/post-moderated-closed-blog/p/post-moderated-closed-blog-article_8ed84c29"
	$patch_blogs_post_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/post-moderated-closed-blog/posts/article/new"
	
	$patch_blogs_pre_open = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/pre-moderated-open-blog"
	$patch_blogs_pre_open_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-blog/p/post-moderated-open-blog-note-do-not-delete"
	$patch_blogs_pre_open_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-open-blog/p/pre-moderated-closed-blog-article-do-not-delete"
	$patch_blogs_pre_open_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/pre-moderated-open-blog/posts/article/new"
	
	$patch_blogs_pre_closed = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/pre-moderated-closed-blog"
	$patch_blogs_pre_closed_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/pre-moderated-closed-blog/p/pre-moderated-closed-blog-note-do-not-delete"
	$patch_blogs_pre_closed_article = "http://#{$local_patch}#{$environment}.i.patch.com/pre-moderated-closed-blog/p/pre-moderated-closed-blog-article-do-not-delete_fecdbe14"
	$patch_blogs_pre_closed_article_new = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/pre-moderated-closed-blog/posts/article/new"
	
	$patch_mongooses = "http://#{$local_patch}#{$environment}.i.patch.com/groups/the-fighting-mongooses"
    $patch_mongooses_settings = "http://#{$local_patch}#{$environment}.i.patch.com/blogs/fighting-mongooses/edit/basic_information"
	
#Events (Staging)
	$patch_event_landing = "http://#{$local_patch}#{$environment}.i.patch.com/events"
	$patch_new_event = "http://#{$local_patch}#{$environment}.i.patch.com/posts/event/new"
	$patch_existing_event = "http://#{$local_patch}#{$environment}.i.patch.com/groups/events/p/existing-event_c23fc34f"	

#Businesses (Staging)
	$patch_directory = "http://#{$local_patch}#{$environment}.i.patch.com/directory"
	$patch_directory_listing = "http://#{$local_patch}#{$environment}.i.patch.com/listings/jimmyjacks"
	$patch_edit_review_note = "http://#{$local_patch}#{$environment}.i.patch.com/groups/jimmyjacks/p/test-note-for-jimmyjacks"
	$patch_edit_review_article = "http://#{$local_patch}#{$environment}.i.patch.com/groups/jimmyjacks-group/p/article-for-jimmyjacks"
	$patch_opinion_group = "http://#{$local_patch}#{$environment}.i.patch.com/groups/opinion"
	
#Flatiron (Staging)
	$patch_flatiron_blogs_post_open = "http://flatiron.#{$environment}.i.patch.com/blogs/post-moderated-open-flatiron-blog"
	$patch_flatiron_blogs_article_new = "http://flatiron.#{$environment}.i.patch.com/blogs/post-moderated-open-flatiron-blog/posts/article/new"
	$patch_flatiron_boards_post_open = "http://flatiron.#{$environment}.i.patch.com/boards"
	$patch_flatiron_boards_announcement_article_new = "http://flatiron.#{$environment}.i.patch.com/boards/announcements/posts/article/new"
	$patch_flatiron_news_school_news_article_new = "http://flatiron.#{$environment}.i.patch.com/news/schools/posts/article/new"
    $patch_flatiron_news_school_news = "http://flatiron.#{$environment}.i.patch.com/news/post-moderated-open-news"  
    $patch_flatiron_news_p = "http://flatiron.#{$environment}.i.patch.com/news"
	$patch_flatiron_event = "http://flatiron.#{$environment}.i.patch.com/groups/events/p/existing-event_b27a117c"
	$patch_flatiron_event_new = "http://flatiron.#{$environment}.i.patch.com/posts/event/new"
  end
end