require 'Utility/common_methods'
include Common_Methods

module Common_Business_Methods

	def postBasicReview
		$browser.goto($patch_directory_listing)
		$directory_review_begin.click
		$directory_review_text.set("Enjoyed my experience, I recommend times #{random}!!")
		$directory_review_post.fire_event("onclick")
	end

	def if_following_unfollow
		if $directory_review_follow_indicator.exists?
			$directory_review_follow.fire_event("onclick") 
		else nil
		end
	end

	def if_not_following_follow
		if $directory_review_no_follow_indicator.exists?
			$directory_review_follow.fire_event("onclick")
			$directory_group_follow_ok.fire_event("onclick")
		else nil
		end
	end
end
