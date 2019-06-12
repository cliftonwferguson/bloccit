module UsersHelper
    def does_user_have_post (user_id) do
       if current_user == post.user
            return post
       else
            return "This user does not have any posts."
        end 
    end 
    
end
 ## we will query the database to get a list of all posts that belong to the user
         # if the list of post is empty,
           #show "This user has no post" => return to the view.
           #else iterate all user post and render a link to each one.