module ApplicationHelper
  # display a red error bar to the user
  def error(message)
    flash[:error] = message
  end
  
  # display a green message/success bar to the user
  def message(message)
    flash[:message] = message
  end
  
  # returns a login URL with a hash that will return the user to the url specified after login
  def redirect_login_url(url)
    hash = sha2(url).slice(0,8)
    session[:redirects] ||= {}
    session[:redirects][hash] = url
    "/login?redirect=#{hash}"
  end
  
  # redirect to the login screen, then redirect back to the url specified after login
  def redirect_login(url)
    redirect_to(redirect_login_url(url))
  end
  
  def sha2(string)
    Digest::SHA2.hexdigest(string)
  end
end
