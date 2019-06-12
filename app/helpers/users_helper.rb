module UsersHelper
    def does_user_have_post(current_user)
       if current_user.posts.length == 0
           "#{current_user.name} has not submitted any posts yet."
       end
    end
    
    def does_user_have_comments(current_user)
       if current_user.comments.length == 0
         return "#{current_user.name} has not submitted any comments yet."
       end
    end
    
    def gravatar(user)
       require 'digest/md5'
 
        # get the email from URL-parameters or what have you and make lowercase
        email_address = user.email
         
        # create the md5 hash
        hash = Digest::MD5.hexdigest(email_address)
         
        # compile URL which can be used in <img src="RIGHT_HERE"...
        "https://www.gravatar.com/avatar/#{hash}"
    end
    
end
