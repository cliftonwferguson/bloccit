module UsersHelper
    def does_user_have_post (current_user)
       if current_user.posts.length == 0
           "#{current_user.name} has not submitted any posts yet."
       end
    end
    
    def does_user_have_comments (current_user)
       if current_user.comments.length == 0
         return "#{current_user.name} has not submitted any comments yet."
       end
    end
end
