module UserHelper
  
  # sign in the user
  def sign_in(user)
    cookies.delete(:remember_token)
    cookies.permanent.signed[:remember_token] = [user.id, Digest::SHA2.hexdigest(user.hash)]
    @current_user = user
  end
  
  # overrides the current user (use this if you want to control current_user for this action only and not set a cookie)
  def current_user=(user)
    @current_user = user
  end

  # returns the currently logged in user
  def current_user
    @current_user ||= user_from_remember_token
  end
  
  # gets the user specified in the session cookie
  def user_from_remember_token
    User.authenticate_by_token(*remember_token)
  end

  # gets the users session cookie
  def remember_token
    cookies.signed[:remember_token] || [nil, nil]
  end

  def signed_in?
    current_user ? true : false
  end

  def sign_out
    cookies.delete(:remember_token)
    current_user = nil
  end
  
  # make sure that the currently logged in user is the user specified
  # OR, if there is no currently logged in user, then you can use the hash to authenticate (ie if they come from an email)
  # otherwise, we will redirect them to the login screen
  def authenticate(user_id, redirect = false, hash = false)
    if !user_id || !user_id.present?
      raise "No user_id passed for action that requires user"
    end
    auth_user = User.with_deleted.find_by_id(user_id) #find with deleted so we can show a special error message if the user is deleted
    if (!auth_user)
      raise("trying to authenticate against a user that does not exist")
    end
    if (auth_user.deleted?)
      error("This user account has been deleted.")
      return redirect_to("/user/is_deleted/#{auth_user.id}")
    end
    if auth_user && ((current_user && (current_user.id == user_id.to_i)) || (hash && auth_user.hash == hash))
      return sign_in(auth_user)
    else
      if redirect
        redirect_login(redirect)
      else
        redirect_to('/')
      end
      return false
    end
    
  end
end
