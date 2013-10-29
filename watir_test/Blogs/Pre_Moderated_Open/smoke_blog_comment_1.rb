$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestBlogPageElement < GlobalVariables

##Test 1: One Note Inline Comment
	def test01_pre_open_blog_NoteOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_pre_open_note)
		
		commentPopSubmit "Test Comment #{random}"
	end

##Test 2: One Article Inline Comment
	def test02_ArticleOneComment_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_pre_open_article)
		wait_for_ajax
		sleep 3
          count1 = $comment_count_total.text.to_i

		commentPopSubmit "Test Comment #{random}"
		
		$browser.refresh
		sleep 3
          count2 = $comment_count_total.text.to_i
   
        conclusion = true
        if count1 == count2 
         conclusion = false
        end
        assert conclusion  == true  #if fails, it means that the count didn't increase
	end
	
# ##Test 3: One Media Inline Comment
# 	def test03_pre_open_blog_MediaOneComment_TC_24319
# 		login $user_1_email, $master_password
# 		$browser.goto($patch_blogs_pre_open_article)
# 		
# 		commentPopSubmit "Test Comment #{random}"
# 	end

##Test 4: Two Article Inline Comments
	def test04_pre_open_blog_ArticleTwoComments
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_pre_open_article)
		commentPopSubmit "Test Comment #{random}"
		commentPopSubmit "Test Comment #{random}"
	end	
	
##Test 5: Two Note Inline Comments
	def test05_pre_open_news_NoteTwoComments_TC_24319
		login $user_1_email, $master_password
		$browser.goto($patch_blogs_pre_open_note)
		commentPopSubmit "Test Comment #{random}"
		commentPopSubmit "Test Comment #{random}"
	end
end